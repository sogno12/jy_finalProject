package com.mj.jy.circular.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Circular")
public class Circular {

	private int circularNo;			//회람식별번호
	private int categoryNo;			//카테고리분류번호
	private int circularTypeNo;		//회람분류번호
	private int target;				//회람대상(no:부서번호 / 0:모든사원)
	private int createBy;			//생성자
	private Date createDate;		//생성날짜
	private String title;			//제목
	private String content;			//내용
	private Date beginDate;			//회람시작날짜
	private Date endDate;			//회람종료날짜
	private String status;			//상태 Y/N
	private int updateBy;			//수정자
	private Date updateDate;		//수정날짜
	
	
	public Circular() {
	}


	public Circular(int circularNo, int categoryNo, int circularTypeNo, int target, int createBy, Date createDate,
			String title, String content, Date beginDate, Date endDate, String status, int updateBy, Date updateDate) {
		super();
		this.circularNo = circularNo;
		this.categoryNo = categoryNo;
		this.circularTypeNo = circularTypeNo;
		this.target = target;
		this.createBy = createBy;
		this.createDate = createDate;
		this.title = title;
		this.content = content;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.status = status;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
	}


	public int getCircularNo() {
		return circularNo;
	}


	public void setCircularNo(int circularNo) {
		this.circularNo = circularNo;
	}


	public int getCategoryNo() {
		return categoryNo;
	}


	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}


	public int getCircularTypeNo() {
		return circularTypeNo;
	}


	public void setCircularTypeNo(int circularTypeNo) {
		this.circularTypeNo = circularTypeNo;
	}


	public int getTarget() {
		return target;
	}


	public void setTarget(int target) {
		this.target = target;
	}


	public int getCreateBy() {
		return createBy;
	}


	public void setCreateBy(int createBy) {
		this.createBy = createBy;
	}


	public Date getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getBeginDate() {
		return beginDate;
	}


	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getUpdateBy() {
		return updateBy;
	}


	public void setUpdateBy(int updateBy) {
		this.updateBy = updateBy;
	}


	public Date getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}


	@Override
	public String toString() {
		return "Circular [circularNo=" + circularNo + ", categoryNo=" + categoryNo + ", circularTypeNo="
				+ circularTypeNo + ", target=" + target + ", createBy=" + createBy + ", createDate=" + createDate
				+ ", title=" + title + ", content=" + content + ", beginDate=" + beginDate + ", endDate=" + endDate
				+ ", status=" + status + ", updateBy=" + updateBy + ", updateDate=" + updateDate + "]";
	}


	
}
