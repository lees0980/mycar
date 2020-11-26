package com.mycar.web.entity;

import java.util.Date;

public class Member {
   private int id;
   private String userId;
   private String pwd;
   private String name;
   private String gender;
   private String phone;
   private String age;
   
   public Member() {
      // TODO Auto-generated constructor stub
   }
   
   public Member(int id, String userId, String pwd, String name, String gender, String phone, String age) {
      this.id = id;
      this.userId = userId;
      this.pwd = pwd;
      this.name = name;
      this.gender = gender;
      this.phone = phone;
      this.age = age;
   }

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getUserId() {
      return userId;
   }

   public void setUserId(String userId) {
      this.userId = userId;
   }

   public String getPwd() {
      return pwd;
   }

   public void setPwd(String pwd) {
      this.pwd = pwd;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getGender() {
      return gender;
   }

   public void setGender(String gender) {
      this.gender = gender;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getAge() {
      return age;
   }

   public void setAge(String age) {
      this.age = age;
   }

   @Override
   public String toString() {
      return "Member [id=" + id + ", userId=" + userId + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender
            + ", phone=" + phone + ", age=" + age + "]";
   }
}