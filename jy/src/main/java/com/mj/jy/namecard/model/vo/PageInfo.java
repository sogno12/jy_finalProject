package com.mj.jy.namecard.model.vo;

public class PageInfo {
	
	private int listCount;			// 총 게시글 갯수
	private int currentPage;		// 현재 페이지 (요청한 페이지)
	private int startPage;			// 현재 페이지에 보여질 페이징바의 시작수
	private int endPage;			// 현재 페이지에 보여질 페이징바의 끝수
	private int maxPage;			// 마지막 페이지수
	private int pageLimit;			// 페이징바의 최대수
	private int boardLimit;			// 한 페이지에 보여질 게시글 최대수
	
	
	public PageInfo() {
		
	}
	public PageInfo(int listCount, int currentPage, int startPage, int endPage, int maxPage, int pageLimit,
			int boardLimit) {
		super();
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.maxPage = maxPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;
	}
	
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getPageLimit() {
		return pageLimit;
	}
	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}
	public int getBoardLimit() {
		return boardLimit;
	}
	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}
	
	@Override
	public String toString() {
		return "PageInfo [listCount=" + listCount + ", currentPage=" + currentPage + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", maxPage=" + maxPage + ", pageLimit=" + pageLimit + ", boardLimit="
				+ boardLimit+ "]";
	}
	
	
	

}
