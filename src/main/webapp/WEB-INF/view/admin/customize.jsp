<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication" %>
<%@page import="com.mycar.web.security.MycarAuthenticationSuccessHandler" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   Object principal = auth.getPrincipal();
   String name =auth.getName();
%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <link href="/css/admin/admin.css" type="text/css" rel="stylesheet">
    <link href="/css/admin/reset.css" type="text/css" rel="stylesheet">
    <style>
    
    th{
       width: 60px;
    }
    .test{
    position:absolute;
    left:25%;
    
    opacity:0.9;
    
    }
    
    .test2{
    position:absolute;
    left:25%;
    min-height: 50px;
    opacity:0.9;
    
    }
    
    .d-none{
    display:none;
    }
    .clehfl{
    float: right;
    margin-right: 10px;
    }
    .table tr:first-child{
       color: violet;
       font-size: 20px;
    }
    .table tr{
       color: white;
    }
    .exit{
    width:30px;
    }
    .exit:hover{
    cursor:pointer;
    }
    .table input[type=text]{
    	color: black;
    }
    .reg{
    	width: 100px;
    	margin-right: 10px;
    }
    .imgReg{
    	width: 100px;
    	margin-right: 10px;
    }
    .submit{
    	margin-bottom: 30px;
    	margin-right: 10px;
    	margin-top: 20px;
    }
    </style>
    <script>
    window.addEventListener("load",function(){
          var regBtn = document.querySelector(".reg")
          var imgRegBtn = document.querySelector(".imgReg")
          var test = document.querySelector(".test")
          var test2 = document.querySelector(".test2")
          var exit = document.querySelector(".exit")
          
          exit.onclick = function(){
              test.classList.add("d-none")
              }
          

          regBtn.onclick = function(){
			 
             test.classList.remove("d-none")
          }

          imgRegBtn.onclick = function(){
			 test2.classList.remove("d-none")
          }
    })
    </script>
</head>
   <main id="main">
      <div class="test d-none" style="border:solid 1px black; background:black; min-width:500px; min-height:300px;">
      <form method="post" action="/admin/customize">
      <table class="table">
        <tr>
            <th>car</th>
            <th>information</th>
            <th>car</th>
            <th>information</th>
            <th class="exit">X</th>
        </tr>
         <tr>
            <th>brand</th>
            <th><input type="text" name="brand" placeholder="brand"></th>
            <th>carSegment</th>
            <th><input type="text" name="carSegment" placeholder="carSegment"></th>
         </tr>
         <tr>
            <th>carType</th>
            <th><input type="text" name="carType" placeholder="carType"></th>
            <th>carName</th>
            <th><input type="text" name="carName" placeholder=carName></th>
         </tr>
         <tr>
            <th>engine</th>
            <th><input type="text" name="engine" placeholder="engine"></th>
            <th>fuelType</th>
            <th><input type="text" name="fuelType" placeholder="fuelType"></th>
         </tr>
         <tr>
            <th>fuelEfficiency</th>
            <th><input type="text" name="fuelEfficiency" placeholder="fuelEfficiency"></th>
            <th>fuelEfficiencyGrade</th>
            <th><input type="text" name="fuelEfficiencyGrade" placeholder="fuelEfficiencyGrade"></th>
         </tr>
         <tr>
            <th>maxHp</th>
            <th><input type="text" name="maxHp" placeholder="maxHp"></th>
            <th>maxTorque</th>
            <th><input type="text" name="maxTorque" placeholder="maxTorque"></th>
         </tr>
         <tr>
            <th>passengers</th>
            <th><input type="text" name="passengers" placeholder="passengers"></th>
            <th>mainWheel</th>
            <th><input type="text" name="mainWheel" placeholder="mainWheel"></th>
         </tr>
         <tr>
            <th>maxPrice</th>
            <th><input type="text" name="maxPrice" placeholder="maxPrice"></th>
         </tr>
      </table>
         <input class="clehfl" type="submit" value="등록" onclick="location.href='/admin/customize'">
      </form>
    </div>
    
    <div class="test2 d-none" style="border:solid 1px black; background:black; min-width:500px; min-height:300px;">
      <form method="post" action="/admin/upload" enctype="multipart/form-data">
      <table class="table">
      	<tr>
      		<th colspan="2"> 이미지 등록 </th>
      	</tr>
      	<tr>
      		<th>img1</th>
            <th><input type="file" name="img1" accept="image/PNG"></th>
            <th>img2</th>
            <th><input type="file" name="img2" accept="image/PNG"></th>
         </tr>
         <tr>
            <th>img3</th>
            <th><input type="file" name="img3" accept="image/PNG"></th>
            <th>img4</th>
            <th><input type="file" name="img4" accept="image/PNG"></th>
         </tr>
         <tr>
            <th>img5</th>
            <th><input type="file" name="img5" accept="image/PNG"></th>
         </tr>
         </table>
         <input class="clehfl" type="submit" value="등록">
         <!--  onclick="location.href='/admin/customize'" -->
      </form>
      </div>
       <h3 class="hidden">차량 등록/삭제</h3>
            <form class="comForm" action="deleteCar">
            <table class="carTable">
               <thead>
                  <tr>
                     <th class="w109">체크</th>
                     <th class="w137">브랜드</th>
                     <th class="w293">모델명</th>
                     <th class="w109">연료종류</th>
                     <th class="w109">연료효율</th>
                     <th class="w137">풀옵션가격</th>
                  </tr>
               </thead>
               
               <tbody>
                     <c:forEach var="n" items="${list}">   
                     <tr>
                        <td class="w109"><input type="checkbox" name ="id" value="${n.id}"></td>
                        <td class="w137">${n.brand}</td>
                        <td class="w293 title indent text-align-left"><a href="/recommend/detail/${n.id}">${n.carName}</a></td>
                        <td class="w109">${n.fuelType}</td>
                        <td class="w109">${n.fuelEfficiency}</td>
                        <td class="w137">${n.maxPrice}</td>
                     </tr>         
                  </c:forEach>
               </tbody>
               
            </table>
            <div class="submit">
               <input class="reg" type="button" value="차량 정보 등록">
               <input class="imgReg" type="button" value="사진등록">
               <input type="submit" onclick="location.href='customize'" value="삭제"><br><br>
            </div>
            <div th:if="${msg}">
		      <span th:text="${msg}" hidden></span>
		   </div>
            </form>
            <div class="indexer margin-top align-right">
            <h3 class="hidden"></h3>
      </div>
      
   </main>