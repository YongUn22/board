package domain;

public class BoardVO {
	private int bno;
	private String title;
	private String writer;
	private String content;
	private String reg_date;
	
	public BoardVO() {}
	
	// insert(title, writer, content)
	public BoardVO(String title,String writer,String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	//list(bno, title, wrtier, reg_date)
	public BoardVO(int bno, String title, String writer,String reg_date) {
		this.bno = bno;
		this.title = title;
		this.writer = writer;
		this.reg_date = reg_date;
	}
	
	//detail(all)
	public BoardVO(int bno, String title,String writer,String content,String reg_date) {
		this.bno = bno;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.content = reg_date;
	}
	
	//update(bno, title, content)
	public BoardVO(int bno, String title,String content) {
		this.bno = bno;
		this.title = title;
		this.content = content;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReg_date() {
		String date = reg_date.substring(0, reg_date.lastIndexOf(" "));
		return date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
