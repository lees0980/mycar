package com.mycar.web.entity;

import java.util.Date;

public class MemberInfo {
	private int id;
	private String writer;
	private String title;
	private Date regdate;
	private String userId;
	private String gesi;
	
	
	
	public String getGesi() {
		return gesi;
	}

	public void setGesi(String gesi) {
		this.gesi = gesi;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	private int hit;
	
	public MemberInfo() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
}
