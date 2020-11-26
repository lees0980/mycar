package com.mycar.web.entity;

import java.util.Date;

public class QandAComment {
	private int id;
	private int qandaId;
	private String name;
	private String content;
	private Date regdate;
	
	public QandAComment() {
	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQandaId() {
		return qandaId;
	}

	public void setQandaId(int qandaId) {
		this.qandaId = qandaId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
}
