package com.mycar.web.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycar.web.dao.CommunityDao;
import com.mycar.web.entity.Column;
import com.mycar.web.entity.QandAComment;
import com.mycar.web.entity.Qanda;
import com.mycar.web.entity.ShareItem;
import com.mycar.web.entity.ShareItemComment;
import com.mycar.web.entity.Talk;
import com.mycar.web.entity.TalkComment;
import com.mycar.web.service.CommunityService;

@Controller
@RequestMapping("/community/")
public class CommunityController {

	//
	@Autowired
	private CommunityDao communityDao;
	
	
   @Autowired
   private CommunityService communityService;

   @GetMapping("main")
   public String main() {

      return "community.main";
   }

   @GetMapping("reg")
   public String reg() {

      return "community.reg";
   }

   @GetMapping("regQanda")
   public String regQanda() {

      return "community.reg";
   }

   @GetMapping("regShareItem")
   public String regShareItem() {

      return "community.reg";
   }

   // ----------------------------------------------------------------
   @GetMapping("talk")
   public String talk(@RequestParam(name = "p", defaultValue = "1") int page,
	         @RequestParam(name = "q", defaultValue = "") String query,
	         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
	         throws ClassNotFoundException, SQLException {
	     
	      
	      List<Talk> list2 = communityDao.getTalkPage();
	      
	        
	         int talkPage = (list2.size())/10+1;
	         
	         if (list2.size() % 10 == 0) {
	             talkPage = talkPage - 1;
	            }
	        model.addAttribute("talkPage" , talkPage);
	      
	      
	      int count = communityDao.getCount(query, field);
		
	      List<Talk> list = communityService.getList(page, query, field);
	      
	      
	      model.addAttribute("list", count);
	      model.addAttribute("list", list);  
	      return "community.talk";
	   }


   @GetMapping("talk/{id}")
   public String detail(@PathVariable("id") int talkId, Model model) throws ClassNotFoundException, SQLException {

      Talk talk = communityService.getTalk(talkId);

      List<TalkComment> talkcomment = communityService.getTalkComment(talkId);// 코멘트

      int hit = communityService.getHitTalk(talkId);
      model.addAttribute("n", talk);
      model.addAttribute("t", talkcomment); // 코멘트
      
     
      return "community.detail";
   }

   @PostMapping("talk/{id}")
   public String regTalkComment(TalkComment talkComment) {

      communityService.insertTalkComment(talkComment);
      return "redirect:{id}";
   }


   @PostMapping("reg")
   public String reg(Talk talk) {
      communityService.insert(talk);
      return "redirect:talk?p=1&t=&q=";
   }

   // ------------------------------------------------------------------------------

   @GetMapping("qanda")
   public String qanda(@RequestParam(name = "p", defaultValue = "1") int page,
            @RequestParam(name = "q", defaultValue = "") String query,
            @RequestParam(name = "f", defaultValue = "title") String field, Model model)
            throws ClassNotFoundException, SQLException {
        
         
         List<Qanda> list2 = communityDao.getQandAPage();
         
         
         int qandaPage = (list2.size())/10+1;
         
         if (list2.size() % 10 == 0) {
        	 qandaPage = qandaPage - 1;
            }
          model.addAttribute("qandaPage" , qandaPage);
          
         List<Qanda> list = communityService.getListQanda(page, query, field);
         model.addAttribute("list", list);  
         return "community.qanda";
      }
   @GetMapping("qanda/{id}")
   public String detailQanda(@PathVariable("id") int qandaId, Model model)
         throws ClassNotFoundException, SQLException {

      Qanda qanda = communityService.getQanda(qandaId);
      List<QandAComment> qandacomment = communityService.getQandAComment(qandaId);
      int hit = communityService.getHitQandA(qandaId);
      model.addAttribute("n", qanda);
      model.addAttribute("t", qandacomment); // 코멘트

      return "community.detail";
   }

   @PostMapping("qanda/{id}")
   public String regQandAComment(QandAComment qandaComment) {

      communityService.insertQandAComment(qandaComment);
      return "redirect:{id}";
   }

   @PostMapping("regQanda")
   public String reg1(Qanda qanda) {
      communityService.insertQanda(qanda);

      return "redirect:qanda?p=1&t=&q=";
   }

   // ------------------------------------------------------------------------------

   @GetMapping("shareitem")
   public String shareItem(@RequestParam(name = "p", defaultValue = "1") int page,
         @RequestParam(name = "q", defaultValue = "") String query,
         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
         throws ClassNotFoundException, SQLException {
	  
      List<ShareItem> list = communityService.getListShareItem(page, query, field);
      List<ShareItem> list2 = communityDao.getShareItemPage();
      
      
      int shareItemPage = (list2.size())/10+1;
      
      if (list2.size() % 10 == 0) {
    	  shareItemPage = shareItemPage - 1;
         }

       model.addAttribute("shareItemPage" , shareItemPage);
    
      model.addAttribute("list", list);
      return "community.shareitem";
   
   }

   @GetMapping("shareitem/{id}")
   public String detailShareItem(@PathVariable("id") int shareItemId, Model model)
         throws ClassNotFoundException, SQLException {

      List<ShareItemComment> shareItemComment = communityService.getShareItemComment(shareItemId);// 코멘트
      ShareItem shareItem = communityService.getShareItem(shareItemId);
//      int hit = communityService.getHit(shareItemId);
      model.addAttribute("n", shareItem);
      model.addAttribute("t", shareItemComment); // 코멘트
      int hit = communityService.getHitShare(shareItemId);
      return "community.detail";
   }

   @PostMapping("shareitem/{id}")
   public String regShareItemComment(ShareItemComment shareItemComment) {

      communityService.insertShareItemComment(shareItemComment);
      return "redirect:{id}";
   }

   // ------------------------------------------------------------------------------
   @PostMapping("regShareItem")
   public String reg2(ShareItem shareItem) {
      communityService.insertShareItem(shareItem);

      return "redirect:shareitem?p=1&t=&q=";
   }
//-------------------------------------------------------------------------------------
   @GetMapping("column")
   public String column(@RequestParam(name = "p", defaultValue = "1") int page,
	         @RequestParam(name = "q", defaultValue = "") String query,
	         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
	         throws ClassNotFoundException, SQLException{

	   
	   List<Column> list = communityService.getListColumn(page,query,field);
	   
	   model.addAttribute("list",list);
      return "community.column";
   }
   
   @GetMapping("column/{id}")
   public String detailColumn(@PathVariable("id") int columnId, Model model)
         throws ClassNotFoundException, SQLException {

      Column column = communityService.getColumn(columnId);
//      List<ColumnComment> columnComment = communityService.getColumnComment(columnId);// 코멘트
      model.addAttribute("n", column);
//      model.addAttribute("t", columnComment); // 코멘트
      int hit = communityService.getHitColumn(columnId);
      return "community.detail";
   }
   
   @GetMapping("detail")
   public String detail() {

      return "community.detail";
   }
}