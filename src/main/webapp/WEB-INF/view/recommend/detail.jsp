<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/css/recommend/detail.css" type="text/css" rel="stylesheet">
<script src="/js/recommend/detail.js"></script>

<main id="main">
   <section class="center">
      <section class="carPhoto">
         <section class="bigPicture">
            <div>
               <img data-id="big" width=500px height=350px src="/Image/cars/${n.img1}" alt="큰사진"  >
            </div>
         </section>
         <div class="smallPictures">
            <div><img data-id="1" src="/Image/cars/${n.img1}" alt="사진1"></div>
            <div><img data-id="2" src="/Image/cars/${n.img2}" alt="사진2"></div>
            <div><img data-id="3" src="/Image/cars/${n.img3}" alt="사진3"></div>
            <div><img data-id="4" src="/Image/cars/${n.img4}" alt="사진4"></div>
            <div><img data-id="5" src="/Image/cars/${n.img5}" alt="사진5"></div>
         </div>
      </section>
      <section class="carDescription">
         <table class="cd1">
            <tr>
               <td class="firstCol">제조사 :</td>
               <td>${n.brand}</td>
            </tr>
            <tr>
               <td class="firstCol">차량 타입 :</td>
               <td>${n.carType}</td>
            </tr>
            <tr>
               <td class="firstCol">차량 크기 :</td>
               <td>${n.carSegment}</td>
            </tr>
            <tr>
               <td class="firstCol">모델명 :</td>
               <td>${n.carName}</td>
            </tr>
         </table>
         <table class="cd2">
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/engine.png">
               </td>
               <td>
                  엔진 : ${n.engine}cc
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/fuelType.png">
               </td>
               <td>
                  연료 타입 : ${n.fuelType}
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/engine.png">
               </td>
               <td>
                  연비 : ${n.fuelEfficiency}km/L
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/fuelEfficiencyGrade.png">
               </td>
               <td>
                  연비 등급 : ${n.fuelEfficiencyGrade}등급
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/maxHp.png">
               </td>
               <td>
                  최대 출력 : ${n.maxHp}HP
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/maxTorque.png">
               </td>
               <td>
                  최대 토크 : ${n.maxTorque}kg.m
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/passengers.png">
               </td>
               <td>
                  최대 승차 인원 : ${n.passengers}명
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/mainWheel.png">
               </td>
               <td>
                  구동 방식 : ${n.mainWheel}
               </td>
            </tr>
            <tr>
               <td class="firstCol">
                  <img src="/Image/detail/maxPrice.png">
               </td>
               <td>
                  풀옵션 가격 : ${n.maxPrice}만원
               </td>
            </tr>
         </table>
      </section>
   </section>
</main>