package oh.sung.hwan.board;

public class BoardViewVO {
	int board_no;
	String email;
	String title;
	String contents;
	String date;
	String name;
	int view_no;
	
	public BoardViewVO() {
		// TODO Auto-generated constructor stub
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getView_no() {
		return view_no;
	}

	public void setView_no(int view_no) {
		this.view_no = view_no;
	}

	public BoardViewVO(int board_no, String email, String title, String contents, String date, String name,
			int view_no) {
		super();
		this.board_no = board_no;
		this.email = email;
		this.title = title;
		this.contents = contents;
		this.date = date;
		this.name = name;
		this.view_no = view_no;
	}

	@Override
	public String toString() {
		return "BoardViewVO [board_no=" + board_no + ", email=" + email + ", title=" + title + ", contents=" + contents
				+ ", date=" + date + ", name=" + name + ", view_no=" + view_no + "]";
	}
	
}