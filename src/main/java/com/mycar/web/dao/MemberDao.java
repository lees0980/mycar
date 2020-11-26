package com.mycar.web.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.mycar.web.entity.Community;
import com.mycar.web.entity.Member;
import com.mycar.web.entity.MemberInfo;

@Mapper
public interface MemberDao {
   @Insert("INSERT INTO "
   		+ "memberTest(userId, pwd, name, gender, phone, age) "
   		+ "VALUES('${userId}', '${pwd}', '${name}',"
   		+ "'${gender}', '${phone}', '${age}');")
   int insert(Member member);
   
   @Select("select m.id, m.userId, m.name, m.gender, m.phone, m.age from memberTest m where id > 1 and ${param4} LIKE '%${param3}%' ORDER BY userId LIMIT #{size} OFFSET ${offset}")
   List<Member> getListMember(@Param("offset") int offset, @Param("size") int size, String query, @Param("field") String field)
	         throws ClassNotFoundException, SQLException;
   
   @Select("SELECT * FROM memberTest")
   List<Member> getMemberPage();

   
    @Select("SELECT COUNT(*) as cnt FROM memberTest;")
    int getMemberCount(String query , String field);
    
 //==========delete 하기===================================
    @Delete("DELETE FROM memberTest WHERE id = #{id}")
    int delMember(int id) ;
    
    @Select("select '자유' as 게시판, writer, title, regdate, hit from talk where writer ='${writer}'" + 
    		"union select 'QnA' as 게시판, writer, title, regdate, hit from qanda where writer ='${writer}'" + 
    		"union select '공유' as 게시판, writer, title, regdate, hit from shareitem where writer ='${writer}'")
    List<Community> getComList(String writer);
    
    @Select("select mt.id, mt.userId, test.gesi, test.title, test.regdate, test.hit "
    		+ "from memberTest as mt "
    		+ "join (select '자유' as gesi,writer, title, regdate, hit from talk "
    		+ "where writer =#{userId} union select 'QnA' as gesi, writer, title, regdate, hit from qanda "
    		+ "where writer =#{userId} union select '공유' as gesi, writer, title, regdate, hit from shareitem "
    		+ "where writer =#{userId})as test where mt.userId= test.writer")
    List<MemberInfo> getMemberInfo(String userId);
}