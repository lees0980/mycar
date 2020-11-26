package com.mycar.web.entity;

import java.util.Date;

public class ColumnComment {
   private int id;
   private int columnId;
   private String name;
   private String content;
   private Date regdate;
   
   public ColumnComment() {
   
   }

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public int getColumnId() {
      return columnId;
   }

   public void setColumnId(int columnId) {
      this.columnId = columnId;
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