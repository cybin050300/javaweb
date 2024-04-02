package model.board;

/**
 * 게시판 모델 클래스
 * @author 2024.04.02
 */
public class BoardModel {

	private int num;
	private String subject;
	private String writer;
	private String contents;
	private int hit = 0;
	private String regDate;
	private String pageNum = "1";
	/** 검색 항목 **/
	private String searchType = "";
	/** 검색어 **/
	private String searchText = "";
	/** 목록 페이지 게시물 노출 수 **/
	private int listCount =10;
	/** 목록 페이지 네비게이터 블록 수 **/
	private int pagePerBlock = 10;
	
	/**
	 * 생성자
	 */
	public BoardModel() {}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getPageNum() {
		return pageNum;
	}

	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getPagePerBlock() {
		return pagePerBlock;
	}

	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}
	
	@Override
	public String toString() {
		return "BoardModel [num=" + num + ", subject=" + subject + ", writer=" + writer + ", contents=" + contents
				+ ", hit=" + hit + ", regDate=" + regDate + ", pageNum=" + pageNum + ", searchType=" + searchType
				+ ", searchText=" + searchText + ", listCount=" + listCount + ", pagePerBlock=" + pagePerBlock + "]";
	}
}
