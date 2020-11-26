package com.mycar.web.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.mycar.web.dao.CommunityDao;
import com.mycar.web.dao.MemberDao;
import com.mycar.web.entity.Column;
import com.mycar.web.entity.Community;
import com.mycar.web.entity.Member;
import com.mycar.web.entity.MemberInfo;
import com.mycar.web.entity.Qanda;
import com.mycar.web.entity.Recommend;
import com.mycar.web.entity.ShareItem;
import com.mycar.web.entity.Talk;
import com.mycar.web.entity.TalkComment;
import com.mycar.web.service.CommunityService;
import com.mycar.web.service.MemberService;
import com.mycar.web.service.RecommendService;

@Controller
@RequestMapping("/admin/")
public class AdminController {

   @Autowired
   private CommunityService communityService;
   @Autowired
   private CommunityDao communityDao;
   @Autowired
   private MemberService memberService;
   @Autowired
   private MemberDao memberDao;
   @Autowired
   private RecommendService recommendService;
   
   @GetMapping("main")
   public String index() {
      return "admin.main";
   }

//=======================토크======================================================
   @GetMapping("talk")
   public String talk(@RequestParam(name = "p", defaultValue = "1") int page,
         @RequestParam(name = "q", defaultValue = "") String query,
         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
         throws ClassNotFoundException, SQLException {

      List<Talk> list2 = communityDao.getTalkPage();

      int talkPage = (list2.size()) / 10 + 1;

      if (list2.size() % 10 == 0) {
         talkPage = talkPage - 1;
      }
      model.addAttribute("talkPage", talkPage);

      int count = communityDao.getCount(query, field);

      List<Talk> list = communityService.getList(page, query, field);

      model.addAttribute("list", count);
      model.addAttribute("list", list);

      return "admin.talk";
   }

   @GetMapping("deleteTalk")
   public String deleteTalk(int[] id) {

      for (int i = 0; i < id.length; i++) {
         int delTalk = communityService.delTalk(id[i]);
         System.out.println(id[i]);
      }
      return "redirect:/admin/talk";
   }

   // =======================콴다======================================================
   @GetMapping("qanda")
   public String qanda(@RequestParam(name = "p", defaultValue = "1") int page,
         @RequestParam(name = "q", defaultValue = "") String query,
         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
         throws ClassNotFoundException, SQLException {

      List<Qanda> list2 = communityDao.getQandAPage();

      int qandaPage = (list2.size()) / 10 + 1;

      if (list2.size() % 10 == 0) {
         qandaPage = qandaPage - 1;
      }
      model.addAttribute("qandaPage", qandaPage);

      int count = communityDao.getQandACount(query, field);

      List<Qanda> list = communityService.getListQanda(page, query, field);

      model.addAttribute("list", count);
      model.addAttribute("list", list);

      return "admin.qanda";
   }

   @GetMapping("deleteQanda")
   public String deleteQanda(int[] id) {

      for (int i = 0; i < id.length; i++) {
         int delQanda = communityService.delQanda(id[i]);
         System.out.println(id[i]);
      }
      return "redirect:/admin/qanda";
   }

   // =======================나눔쓰======================================================
   @GetMapping("shareItem")
   public String shareItem(@RequestParam(name = "p", defaultValue = "1") int page,
         @RequestParam(name = "q", defaultValue = "") String query,
         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
         throws ClassNotFoundException, SQLException {

      List<ShareItem> list2 = communityDao.getShareItemPage();

      int shareItemPage = (list2.size()) / 10 + 1;

      if (list2.size() % 10 == 0) {
         shareItemPage = shareItemPage - 1;
      }
      model.addAttribute("shareItemPage", shareItemPage);

      int count = communityDao.getShareItemCount(query, field);

      List<ShareItem> list = communityService.getListShareItem(page, query, field);

      model.addAttribute("list", count);
      model.addAttribute("list", list);

      return "admin.shareItem";
   }

   @GetMapping("deleteShareItem")
   public String deleteShareItem(int[] id) {

      for (int i = 0; i < id.length; i++) {
         int delShareItem = communityService.delShareItem(id[i]);
         System.out.println(id[i]);
      }
      return "redirect:/admin/shareItem";
   }

   // =======================차차차======================================================
   @GetMapping("customize")
   public String customize(Integer minPrice, Integer maxPrice,
         @RequestParam(name = "brand", required = false, defaultValue = "%") String brand,
         @RequestParam(name = "carType", required = false, defaultValue = "%") String carType,
         @RequestParam(name = "carSegment", required = false, defaultValue = "%") String carSegment,
         @RequestParam(name = "fuelType", required = false, defaultValue = "%") String fuelType, Model model )
         throws ClassNotFoundException, SQLException {
      // customize페이지에 넘어 갔을 때, 사용자 선택이 되었을 때와 안되었을 때를 나눈 것.
      if (minPrice != null) {
         List<Recommend> list = recommendService.getList(brand, minPrice, maxPrice, carType, carSegment, fuelType);
         model.addAttribute("list", list);
      } else {
         List<Recommend> list1 = recommendService.getList1(brand, carType, carSegment, fuelType);
         model.addAttribute("list", list1);
      }

      System.out.printf("recommendController1 : %d, %s, %s, %s\n", maxPrice, carType, carSegment, fuelType);

      return "admin.customize";
   }
   

      public static String uploadDirectory =System.getProperty("user.dir")+"/src/main/resources/static/Image/cars";

      @RequestMapping("/")
      public String UploadPage(Model model) {
         return "uploadView";
         
      }
     @RequestMapping("/upload")
     public String imgRegCar(@RequestParam("img1")MultipartFile[] img1,
           @RequestParam("img2")MultipartFile[] img2,
           @RequestParam("img3")MultipartFile[] img3,
           @RequestParam("img4")MultipartFile[] img4,
           @RequestParam("img5")MultipartFile[] img5, Model model) {
        StringBuilder fileNames = new StringBuilder();
        for(MultipartFile file:img1) {
           Path fileNameAndPath= Paths.get(uploadDirectory,file.getOriginalFilename());
           fileNames.append(file.getOriginalFilename()+" ");
           try {
              Files.write(fileNameAndPath, file.getBytes());
           } catch (IOException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
           }
           
        }
        for(MultipartFile file:img2) {
              Path fileNameAndPath= Paths.get(uploadDirectory,file.getOriginalFilename());
              fileNames.append(file.getOriginalFilename()+" ");
              try {
                 Files.write(fileNameAndPath, file.getBytes());
              } catch (IOException e) {
                 // TODO Auto-generated catch block
                 e.printStackTrace();
              }
              
           }
        for(MultipartFile file:img3) {
              Path fileNameAndPath= Paths.get(uploadDirectory,file.getOriginalFilename());
              fileNames.append(file.getOriginalFilename()+" ");
              try {
                 Files.write(fileNameAndPath, file.getBytes());
              } catch (IOException e) {
                 // TODO Auto-generated catch block
                 e.printStackTrace();
              }
              
           }
        for(MultipartFile file:img4) {
              Path fileNameAndPath= Paths.get(uploadDirectory,file.getOriginalFilename());
              fileNames.append(file.getOriginalFilename()+" ");
              try {
                 Files.write(fileNameAndPath, file.getBytes());
              } catch (IOException e) {
                 // TODO Auto-generated catch block
                 e.printStackTrace();
              }
              
           }
        for(MultipartFile file:img5) {
              Path fileNameAndPath= Paths.get(uploadDirectory,file.getOriginalFilename());
              fileNames.append(file.getOriginalFilename()+" ");
              try {
                 Files.write(fileNameAndPath, file.getBytes());
              } catch (IOException e) {
                 // TODO Auto-generated catch block
                 e.printStackTrace();
              }
              
           }
        System.out.println(fileNames.toString());
        model.addAttribute("msg","Successfully uploaded files"+fileNames.toString());
        return "redirect:/admin/customize";
     }
      
      @PostMapping("customize")
      public String RegCar(Recommend car) {
            
         recommendService.regCar(car);
            
         return "redirect:/admin/customize";
      }
      
      @GetMapping("deleteCar")
      public String deleteCar(int[] id) {

         for (int i = 0; i < id.length; i++) {
            int delCar = recommendService.delCar(id[i]);
            System.out.println(id[i]);
         }
         return "redirect:/admin/customize";
      }
   // =======================토크======================================================
   @GetMapping("column")
   public String column(@RequestParam(name = "p", defaultValue = "1") int page,
         @RequestParam(name = "q", defaultValue = "") String query,
         @RequestParam(name = "f", defaultValue = "title") String field, Model model)
         throws ClassNotFoundException, SQLException {

      List<Column> list2 = communityDao.getColumnPage();

      int columnPage = (list2.size()) / 10 + 1;

      if (list2.size() % 10 == 0) {
         columnPage = columnPage - 1;
      }
      model.addAttribute("columnPage", columnPage);

      int count = communityDao.getColumnCount(query, field);

      List<Column> list = communityService.getListColumn(page, query, field);

      model.addAttribute("list", count);
      model.addAttribute("list", list);

      return "admin.column";
   }

   @GetMapping("deleteColumn")
   public String deleteColumn(int[] id) {

      for (int i = 0; i < id.length; i++) {
         int delColumn = communityService.delColumn(id[i]);
         System.out.println(id[i]);
      }
      return "redirect:/admin/column";
   }
   // =======================멤바======================================================
   @GetMapping("member")
   public String member(@RequestParam(name = "p", defaultValue = "1") int page,
         @RequestParam(name = "q", defaultValue = "") String query,
         @RequestParam(name = "f", defaultValue = "userId") String field, Model model)
         throws ClassNotFoundException, SQLException {

      List<Member> list2 = memberDao.getMemberPage();

      int memberPage = (list2.size()+1) / 10 + 1;

      if ((list2.size()-1) % 10 == 0) {
         memberPage = memberPage - 1;
      }
      model.addAttribute("memberPage", memberPage);

      int count = memberDao.getMemberCount(query, field);

      List<Member> list = memberService.getListMember(page, query, field);

      model.addAttribute("list", count);
      model.addAttribute("list", list);

      return "admin.member";
   }
   
   @GetMapping("member/{userId}")
   public String memberInfo(@PathVariable("userId") String userId, Model model) {
         List<MemberInfo> list = memberDao.getMemberInfo(userId);
         model.addAttribute("list", list);
      System.out.println(list);
      return "admin.detail";
   }
   
   @GetMapping("deleteMember")
   public String deleteMember(int[] id) {

      for (int i = 0; i < id.length; i++) {
         int member = memberService.delMember(id[i]);
         System.out.println(id[i]);
      }
      return "redirect:/admin/member";
   }
}