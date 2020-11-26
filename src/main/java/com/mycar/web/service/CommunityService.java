package com.mycar.web.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycar.web.dao.CommunityDao;
import com.mycar.web.entity.TalkComment;
import com.mycar.web.entity.Column;
import com.mycar.web.entity.ColumnComment;
import com.mycar.web.entity.QandAComment;
import com.mycar.web.entity.Qanda;
import com.mycar.web.entity.ShareItem;
import com.mycar.web.entity.ShareItemComment;
import com.mycar.web.entity.Talk;

@Service
public class CommunityService {

   @Autowired
   private CommunityDao communityDao;

//--------------------------------------------------------------
   public List<Talk> getList(int page, String query, String field) throws ClassNotFoundException, SQLException {

      int offset = (page - 1) * 10;
      int size = 10;
      return communityDao.getList(offset, size, query, field);
   }

   public void insert(Talk talk) {

      communityDao.insert(talk);
   }

   public Talk getTalk(int id) {
      return communityDao.getTalk(id);

   }

   public int getHitTalk(int id) {
      return communityDao.getHitTalk(id);
   }

   public List<TalkComment> getTalkComment(int talkId) {
      System.out.println(talkId);
      List<TalkComment> tc = communityDao.getTalkComment(talkId);
      return tc;
   }

   public void insertTalkComment(TalkComment talkComment) {

      communityDao.insertTalkComment(talkComment);

   }

   public int delTalk(int id) {
      return communityDao.delTalk(id);

   }

   public int getReportTalk(int id) {
      return communityDao.getReportTalk(id);
   }

   public int delTalkReport(int report) {
      return communityDao.delTalkReport(report);

   }

//---------------------------------------------------------------------------   
   public List<Qanda> getListQanda(int page, String query, String field) throws ClassNotFoundException, SQLException {
      int offset = (page - 1) * 10;
      int size = 10;
      return communityDao.getListQanda(offset, size, query, field);
   }

   public Qanda getQanda(int id) {
      return communityDao.getQanda(id);

   }

   public void insertQanda(Qanda qanda) {

      communityDao.insertQanda(qanda);
   }

   public int getHitQandA(int id) {
      return communityDao.getHitQandA(id);
   }

   public List<QandAComment> getQandAComment(int qandaId) {

      List<QandAComment> qc = communityDao.getQandAComment(qandaId);
      return qc;
   }

   public void insertQandAComment(QandAComment qandaComment) {

      communityDao.insertQandAComment(qandaComment);

   }

   public int delQanda(int id) {
      return communityDao.delQanda(id);

   }

//------------------------------------------------------------------------------   
   public List<ShareItem> getListShareItem(int page, String query, String field)
         throws ClassNotFoundException, SQLException {
      int offset = (page - 1) * 10;
      int size = 10;
      return communityDao.getListShareItem(offset, size, query, field);
   }

   public ShareItem getShareItem(int id) {
      return communityDao.getShareItem(id);
   }

   public void insertShareItem(ShareItem shareitem) {
      communityDao.insertShareItem(shareitem);
   }

   public int getHitShare(int id) {
      return communityDao.getHitShare(id);
   }

   public List<ShareItemComment> getShareItemComment(int shareItemId) {
      System.out.println(shareItemId);
      List<ShareItemComment> sic = communityDao.getShareItemComment(shareItemId);
      return sic;
   }

   public void insertShareItemComment(ShareItemComment shareItemComment) {

      communityDao.insertShareItemComment(shareItemComment);

   }

   public int delShareItem(int id) {
      return communityDao.delShareItem(id);
   }

   // ------------------------------------------------------------------------------
   public List<Column> getListColumn(int page, String query, String field) throws ClassNotFoundException, SQLException {
      int offset = (page - 1) * 10;
      int size = 10;
      return communityDao.getListColumn(offset, size, query, field);
   }

   public Column getColumn(int id) {
      return communityDao.getColumn(id);

   }

   public void insertColumn(Column column) {

      communityDao.insertColumn(column);
   }
   
   public List<ColumnComment> getColumnComment(int columnId) {
      System.out.println(columnId);
      List<ColumnComment> cc = communityDao.getColumnComment(columnId);
      return cc;
   }

   public void insertColumnComment(ColumnComment columnComment) {

      communityDao.insertColumnComment(columnComment);

   }

   public int getHitColumn(int id) {
      return communityDao.getHitColumn(id);
   }

//   public List<ColumnComment> GetColumnComment(int columnId) {
//
//      List<ColumnComment> qc = communityDao.getQandAComment(columnId);
//      return qc;
//   }
//
//   public void insertColumnComment(ColumnComment columnComment) {
//
//      communityDao.insertColumnComment(columnComment);
//
//   }

   public int delColumn(int id) {
      return communityDao.delQanda(id);

   }
   
   // ------------------------------------------------------------------------------
   public int getCount(String query, String field) {
      return communityDao.getCount(query, field);
   }

   public int getQandaCount(String query, String field) {
      return communityDao.getQandACount(query, field);
   }

   public int getShareItemCount(String query, String field) {
      return communityDao.getShareItemCount(query, field);
   }

   public int getColumnCount(String query, String field) {
      return communityDao.getColumnCount(query, field);
   }
   // ------------------------------------------------------------------------------

   // ------------------------------------------------------------------------------

}