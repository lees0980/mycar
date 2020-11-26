<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

.asideLeft{
border:none !important;
}
.asideRight{
flex-grow:0.3;
border:none !important;
}
.investment .content_container {
   margin-top: 80px;
}
.content_container {
   max-width: 1120px;
   margin: 30px auto 40px;
   justifiy-content: center;
}

.table_title {
   font-size: 27px;
}

.content_box {
   display: inline-block;
   vertical-align: top;
   font-family: "NanumSquare-EB", "나눔고딕", "Dotum", "돋움", "Helvetica",
      "Arial", "AppleSDGothicNeo", sans-serif;
   font-size: 15px;
   color: #333;
   line-height: 27px;
   letter-spacing: -0.2px;
}

.investors_table {
   width: 900px;
   min-height: 500px;
    font-family: 'Hanna', sans-serif;
   font-weight: 400px;
   font-size: 15px;
}

.investors_table th {
   padding: 14px 0;
   border-top: 2px solid #333;
   font-family: "NanumSquare-B", "나눔고딕", "Dotum", "돋움", "Helvetica",
      "Arial", "AppleSDGothicNeo", sans-serif;
   color: #333;
   text-align: left
}

.investors_table .name {
   font-family: 'Hanna', sans-serif;
   font-weight: 400px;
   font-size: 18px;
   color: #333;
   vertical-align: top;
   margin-left: 10px;
}

.investors_table .position {
   vertical-align: top;
   font-size: 18px;
}

.investors_table .career_box {
   vertical-align: top;
   margin: 0px;
   padding: 0px;
}

.investors_table td {
   padding: 14px 0;
   border-top: 1px solid #e8e8e8;
}

li, ol, ul {
   list-style: none;
}

.career_list {
   position: relative;
   padding-left: 8px;
}
</style>
</head>
<main id="main">
   <div class="content_container">
      <div class="content_box">
         <h3 class="table_title">임원 구성</h3>
         <div class="table_wrap">
            <table class="investors_table type2">
               <colgroup>
                  <col style="width: 20%;">
                  <col style="width: 15%;">
                  <col style="width: 15%;">
                  <col style="width: 50%;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">사진</th>
                     <th scope="col">성명</th>
                     <th scope="col">담당업무</th>
                     <th scope="col" class="th_pl8">약력</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
						<td class="picture"><img src="/Image/shareholder/최석환.pngg" width=130px height="180px">
						</td>
						<td class="name">최석환</td>
						<td class="position">프로젝트 팀장
						</td>
						<td>
							<ul class="career_box">
								<li class="career_list">한라대학교 기계공학부 메카트로닉스전공</li>
								<li class="career_list">BOS Automotive Products Asia(독일 자동차
									부품 회사) <br> - 3D designer/4년7개월 근무</li>
								<li class="career_list">JAVA 미니프로젝트 Wet Tissue 참여</li>
								<li class="career_list">제 1차 Web 프로젝트 미감동행 참여</li>
								<li class="career_list">제 2차 Web 프로젝트 Mycar 참여</li>
								<li class="career_list"><b>ios app 개발 대외프로젝트 준비중</b></li>
							</ul>
						</td>
					</tr>
                     <td class="picture"><img src="/Image/shareholder/이동규.png" width=130px
                        height="180px"></td>
                     <td class="name">이동규</td>
                     <td class="position">팀 코딩 지원<br> 백엔드<br> 관리자 페이지
                     </td>
                     <td>
                        <ul class="career_box">
                           <li class="career_list">여의도 고등학교 졸업</li>
                           <li class="career_list">부천대학교 컴퓨터 소프트웨어과 졸업</li>
                           <li class="career_list">미니 프로젝트 JavaSqueeze 참여</li>
                           <li class="career_list">제 1차 프로젝트 미감동행 참여</li>
                           <li class="career_list">제 2차 프로젝트 MyCar 참여</li>
                           <li class="career_list"><b>취업 준비생</b></li>
                        </ul>
                     </td>
                  </tr>
                  <tr>
                     <td class="picture"><img src="/Image/shareholder/장태진.pngg" width=130px height="180px">
                     </td>
                     <td class="name">장태진</td>
                     <td class="position">코딩<br> DB쿼리<br> 부품
                     </td>
                     <td>
                        <ul class="career_box">
                           <li class="career_list">고척 고등학교 졸업</li>
                           <li class="career_list">부천대학교 컴퓨터 소프트웨어과 졸업</li>
                           <li class="career_list">미니프로젝트 Box Hero 참여</li>
                           <li class="career_list">제 1차 프로젝트 미감동행 참여</li>
                           <li class="career_list">제 2차 프로젝트 Mycar 참여</li>
                           <li class="career_list"><b>취업 준비생</b></li>
                        </ul>
                     </td>
                  </tr>
                  <tr>
                     <td class="picture"><img src="/Image/shareholder/이영웅.pngg" width=130px height="180px">
                     </td>
                     <td class="name">이영웅</td>
                     <td class="position">코딩<br> 웹디자인<br> 계기판
                     </td>	
                     <td>
                        <ul class="career_box">
                           <li class="career_list">인천 작전고등학교 졸업</li>
                           <li class="career_list">부천대학교 컴퓨터 소프트웨어과 졸업</li>
                           <li class="career_list">미니프로젝트 Box Hero 참여</li>
                           <li class="career_list">제 1차 프로젝트 미감동행 참여</li>
                           <li class="career_list">제 2차 프로젝트 Mycar 참여</li>
                           <li class="career_list"><b>취업 준비생</b></li>
                        </ul>
                     </td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
   </div>
</main>
</html>