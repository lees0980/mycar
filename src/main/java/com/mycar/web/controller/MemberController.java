package com.mycar.web.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycar.web.entity.Member;
import com.mycar.web.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

   @Autowired
   private MemberService memberService;
   
   @GetMapping("signup")
   public String signup() {
      return "member/signup";
   }
   
   @PostMapping("signup")
   public String join(Member member) {
         
      memberService.insert(member);
         
      return "redirect:/main/index";
   }
   
   @GetMapping("login")
   public String login() {
      return "/member/login";
   }
   @GetMapping("profile")
   public String profile() {
	   return "member/profile";
   }
}