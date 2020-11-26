package com.mycar.web.entity;

import java.util.Date;

public class ShareItemComment {
   private int id;
   private int shareItemId;
   private String name;
   private String content;
   private Date regdate;
   
   public ShareItemComment() {
      
   }

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public int getShareItemId() {
      return shareItemId;
   }

   public void setShareItemId(int shareItemId) {
      this.shareItemId = shareItemId;
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