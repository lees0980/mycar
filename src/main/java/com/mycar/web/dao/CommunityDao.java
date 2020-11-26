package com.mycar.web.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mycar.web.entity.TalkComment;
import com.mycar.web.entity.Column;
import com.mycar.web.entity.ColumnComment;
import com.mycar.web.entity.QandAComment;
import com.mycar.web.entity.Qanda;
import com.mycar.web.entity.ShareItem;
import com.mycar.web.entity.ShareItemComment;
import com.mycar.web.entity.Talk;

@Mapper
public interface CommunityDao {
   
                           // talk 부분
   @Select(" SELECT * FROM talk WHERE ${param4} LIKE '%${param3}%' ORDER BY regdate DESC LIMIT #{size} OFFSET ${offset}")
   List<Talk> getList(@Param("offset") int offset, @Param("size") int size, String query, @Param("field") String field)
         throws ClassNotFoundException, SQLException;

   @Select("SELECT *FROM talk WHERE id = #{id}")
   Talk getTalk(int id);
   
   @Insert("Insert into talk(title,writer,content,files) values('${title}', '${writer}', '${content}','${files}');")
   int insert(Talk talk);
   
   @Update("UPDATE talk SET hit = hit + 1 WHERE id = #{id}")
   int getHitTalk(int id);
      
   @Select("SELECT talkComment.*  FROM talkComment  join memberTest  WHERE talkId = #{talkId} and talkComment.name= memberTest.userId")
   List<TalkComment> getTalkComment(int talkId);

   @Insert("Insert into talkComment(talkId, name, content) values('${talkId}', '${name}', '${content}');")
   int insertTalkComment(TalkComment content);
   
   @Update("UPDATE talk SET report = report + 1 WHERE id = #{id}")
   int getReportTalk(int id);
   
   @Delete("DELETE FROM talk WHERE report = 40;")
   int delTalkReport(int report) ;
   
//-------------------------------------------------------------------
                  //QandA 부분
   @Select(" SELECT * FROM qanda WHERE ${param4} LIKE '%${param3}%' ORDER BY regdate DESC LIMIT #{size} OFFSET ${offset}")
   List<Qanda> getListQanda(@Param("offset") int offset, @Param("size") int size, String query,
         @Param("field") String field) throws ClassNotFoundException, SQLException;

   @Select("SELECT *FROM qanda WHERE id = #{id}")
   Qanda getQanda(int id);
   
   @Insert("Insert into qanda(title,writer,content,files) values('${title}', '${writer}', '${content}','${files}');")
   int insertQanda(Qanda qanda);
   
   @Update("UPDATE qanda SET hit = hit + 1 WHERE id = #{id}")
   int getHitQandA(int id);
   
   @Select("SELECT qandaComment.*  FROM qandaComment  join memberTest  WHERE qandaId = #{qandaId} and qandaComment.name= memberTest.userId")
   List<QandAComment> getQandAComment(int qandaId);

   @Insert("Insert into qandaComment(qandaId, name, content) values('${qandaId}', '${name}', '${content}');")
   int insertQandAComment(QandAComment qandaComment);
//---------------------------------------------------------------------   
                        // share 부분
      
   @Select(" SELECT * FROM shareitem WHERE ${param4} LIKE '%${param3}%' ORDER BY regdate DESC LIMIT #{size} OFFSET ${offset}")
   List<ShareItem> getListShareItem(@Param("offset") int offset, @Param("size") int size, String query,
         @Param("field") String field) throws ClassNotFoundException, SQLException;
   
   @Select("SELECT *FROM shareitem WHERE id = #{id}")
   ShareItem getShareItem(int id);

   @Insert("Insert into shareitem(title,writer,content,files) values('${title}', '${writer}', '${content}','${files}');")
   int insertShareItem(ShareItem shareitem);
   
   @Update("UPDATE shareitem SET hit = hit + 1 WHERE id = #{id}")
   int getHitShare(int id);

   @Select("SELECT shareitemComment.*  FROM shareitemComment  join memberTest  WHERE shareitemId = #{shareItemId} and shareitemComment.name= memberTest.userId")
   List<ShareItemComment> getShareItemComment(int shareItemId);
   
   @Insert("Insert into shareitemComment(shareitemId, name, content) values('${shareItemId}', '${name}', '${content}');")
   int insertShareItemComment(ShareItemComment content);

   // ------------------column------------------------------------------------------------
   @Select(" SELECT * FROM columnList WHERE ${param4} LIKE '%${param3}%' ORDER BY regdate DESC LIMIT #{size} OFFSET ${offset}")
   List<Column> getListColumn(@Param("offset") int offset, @Param("size") int size, String query,
         @Param("field") String field) throws ClassNotFoundException, SQLException;
   
   @Select("SELECT *FROM columnList WHERE id = #{id}")
   Column getColumn(int id);
   
   @Select("SELECT columnComment.*  FROM columnComment  join memberTest  WHERE columnId = #{columnId} and columnComment.name= memberTest.userId")
   List<ColumnComment> getColumnComment(int columnId);

   @Insert("Insert into columnList(title,writer,content,files) values('${title}', '${writer}', '${content}','${files}');")
   int insertColumn(Column column);
   @Insert("Insert into columnComment(columnId, name, content) values('${columnId}', '${name}', '${content}');")
   int insertColumnComment(ColumnComment content);
   @Update("UPDATE columnList SET hit = hit + 1 WHERE id = #{id}")
   int getHitColumn(int id);
// =============================================================================
  @Select("SELECT * FROM talk")
  List<Talk> getTalkPage();
  @Select("SELECT * FROM qanda")
  List<Qanda> getQandAPage();
  @Select("SELECT * FROM shareitem")
  List<ShareItem> getShareItemPage();
  @Select("SELECT * FROM columnList")
  List<Column> getColumnPage();

//=======row 구하기===========================================
   @Select("SELECT COUNT(*) as cnt FROM talk;")
   int getCount(String query , String field);
   @Select("SELECT COUNT(*) as cnt FROM qanda;")
   int getQandACount(String query , String field);
   @Select("SELECT COUNT(*) as cnt FROM shareitem;")
   int getShareItemCount(String query , String field);
   @Select("SELECT COUNT(*) as cnt FROM columnList;")
   int getColumnCount(String query , String field);
   
   
   
//==========delete 하기===================================
   @Delete("DELETE FROM talk WHERE id = #{id}")
   int delTalk(int id) ;
   @Delete("DELETE FROM qanda WHERE id = #{id}")
   int delQanda(int id) ;
   @Delete("DELETE FROM shareitem WHERE id = #{id}")
   int delShareItem(int id) ;
   @Delete("DELETE FROM columnList WHERE id = #{id}")
   int delColumn(int id) ;
}