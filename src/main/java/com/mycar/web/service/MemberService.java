package com.mycar.web.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycar.web.dao.MemberDao;
import com.mycar.web.entity.Community;
import com.mycar.web.entity.Member;
import com.mycar.web.entity.MemberInfo;
import com.mycar.web.entity.Qanda;

@Service
public class MemberService {
   
   @Autowired
   private MemberDao memberDao;
   
   public void insert(Member member) {
      
      String pwd = member.getPwd();
      PasswordEncoder encoder = new BCryptPasswordEncoder();
      member.setPwd(encoder.encode(pwd));
      
      memberDao.insert(member);
   }
   
   public List<Member> getListMember(int page, String query, String field) throws ClassNotFoundException, SQLException {
		int offset = (page - 1) * 10;
		int size = 10;
		
		return memberDao.getListMember(offset, size, query, field);
   }
   
   public int delMember(int id) {
		return memberDao.delMember(id);

	}
   
   public List<MemberInfo> getMemberInfo(String userId) {
	   return memberDao.getMemberInfo(userId);
   }
}