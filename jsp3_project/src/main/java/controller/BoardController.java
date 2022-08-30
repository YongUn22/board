package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import service.BoardService;
import service.BoardServiceImpl;


@WebServlet(asyncSupported = true, urlPatterns = { "/brd/*" })
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(BoardController.class);
    private RequestDispatcher rdp;
    private String destPage;
    private int isUp;
    private BoardService bsv; // 인터페이스로 추가
   
    public BoardController() {
    	bsv = new BoardServiceImpl();
    }

	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI(); // 서비스를 요청하는 주소
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info("path >>" + path);
		
		// 각 요청하는 서비스를 처리
		switch(path) {
		case "register" : // 글쓰기 페이지를 호출
			destPage = "/board/register.jsp";
			break;
		case "insert" : //글 등록
			String title = req.getParameter("title");
			String writer = req.getParameter("writer");
			String content = req.getParameter("content");
			isUp = bsv.register(new BoardVO(title, writer, content));
			log.info(">> insert >"+(isUp > 0 ? "OK" : "FAIL"));
			destPage = "list";
			break;
		case "list" : // 전체 리스트
//			req.setAttribute("list", bsv.getList());
			List<BoardVO> list = bsv.getList();
			req.setAttribute("list", list);
			log.info(">> list > OK");
			destPage = "/board/list.jsp";
			break;
		case "detail" : // 세부 글 보기
//			req.setAttribute("bvo", getDetail(Integer.parseInt(req.getParameter("bno"))));
			int bno = Integer.parseInt(req.getParameter("bno"));
			// db에 해당 bno의 값을 검색해서 bno 객체를 반환
			BoardVO bvo = bsv.getDetail(bno);
			req.setAttribute("bvo", bvo);
			destPage = "/board/detail.jsp";
			break;
		case "modify": // modify.jsp로 이동 
			req.setAttribute("bvo", bsv.getDetail(Integer.parseInt(req.getParameter("bno"))));
			log.info(">> modify > OK");
			destPage = "/board/modify.jsp";
			break;
		case "update" : //update
			isUp = bsv.modify(new BoardVO(Integer.parseInt(req.getParameter("bno")),req.getParameter("title"),req.getParameter("content")));
			log.info(">> update > " + (isUp > 0 ? "OK" : "FAIL"));
			destPage = "detail?bno="+Integer.parseInt(req.getParameter("bno"));
			break;
		case "remove": // delete 
			isUp = bsv.remove(Integer.parseInt(req.getParameter("bno")));
			log.info(">> delete > "+(isUp > 0 ? "OK" : "FAIL"));
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
