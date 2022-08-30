package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import service.MemberService;
import service.MemberServiceImpl;


@WebServlet("/mem/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	private RequestDispatcher rdp;
	private MemberService msv;
	private String destPage;
	private int isUp;

    
    public MemberController() {
        msv = new MemberServiceImpl();
    }

	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI(); // mem/list
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> uri : " + uri);
		log.info(">>> path :" + path);
		
		switch(path) {
		case "login": // login page open
			destPage = "/member/login.jsp";
			break;
		case "login_auth": // login작업이 일어나는 위치
			MemberVO mvo = msv.login(new MemberVO(req.getParameter("email"),req.getParameter("pwd")));
			if(mvo != null) {
				// 세션을 가져오기
				// 연결된 세션이 없다면 새로 생성
				HttpSession ses = req.getSession();
				// ses로 mvo를 바인딩 한다.
				ses.setAttribute("ses", mvo);
				ses.setMaxInactiveInterval(600); // 초단위로
			}else {
				req.setAttribute("msg_login", 0);
			}
			destPage = "/";
			break;
		case "logout":
			// 연결된 세션이 있다면 해당 세션 가져오기
			HttpSession ses = req.getSession();
			ses.invalidate(); // 접속 끊기
			// 로그인 정보 email 값을 가져와서 로그인 시간 update
			isUp = msv.lastLogin(req.getParameter("email"));
			log.info(">>> logout > "+(isUp > 0? "OK" : "FAIL"));
			destPage = "/";
			break;
		case "join": // 회원가입 page open
			destPage = "/member/join.jsp";
			break;
		case "register": // 회원가입이 일어나는 위치
			isUp = msv.register(new MemberVO(req.getParameter("email"), req.getParameter("nick_name"), req.getParameter("pwd")));
			log.info(">>> join > " + (isUp > 0 ? "OK" : "FAIL"));
			destPage = "/";
			break;
		case "list": // 전체 리스트 검색
			req.setAttribute("list", msv.getList());
			destPage = "/member/list.jsp";
			break;
		case "modify": // 번호를 주고 해당 번호의 값 1개를 검색해서 open 파일에 전달
			req.setAttribute("mvo", msv.getDetail(req.getParameter("email")));
			destPage = "/member/modify.jsp";
			break;
		case "update": // 실제 수정이 일어나는 위치
			isUp = msv.modify(new MemberVO(req.getParameter("email"),req.getParameter("pwd"),req.getParameter("nick_name")));
			log.info(">>> update > "+ (isUp > 0 ? "OK" : "FAIL"));
			destPage = "list";
			break;
		case "remove": // 실제 삭제가 일어나는 위치
			isUp = msv.remove(req.getParameter("email"));
			log.info(">>> Remove > " + (isUp > 0 ? "OK" : "FAIL"));
			destPage = "list";
			break;
		
		}
		
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
		
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
