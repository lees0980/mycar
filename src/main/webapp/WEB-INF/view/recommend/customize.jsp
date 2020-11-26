<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<script src="/js/recommend/customize.js"></script>
<link href="/css/recommend/customize.css" type="text/css" rel="stylesheet">
<%
String brand = request.getParameter("brand");
if (brand == null)
   brand = "";
String budget = request.getParameter("budget");
if (budget == null)
   budget = "";
String carType = request.getParameter("carType");
if (carType == null)
   carType = "";
String carSegment = request.getParameter("carSegment");
if (carSegment == null)
   carSegment = "";
String fuelType = request.getParameter("fuelType");
if (fuelType == null)
   fuelType = "";
%>
<section class="center">
    <form class="userChoice" >
        <div>브랜드
            <span class="checkBox 1">
                <select name="brand" >
                    <option value="">선택</option>
                    <option value="기아"<%=brand.equals("기아")?"selected":""%>>기아</option>
                    <option value="현대"<%=brand.equals("현대")?"selected":""%>>현대</option>
                    <option value="르노삼성"<%=brand.equals("르노삼성")?"selected":""%>>르노삼성</option>
                    <option value="쉐보레"<%=brand.equals("쉐보레")?"selected":""%>>쉐보레</option>
                    <option value="쌍용자동차"<%=brand.equals("쌍용자동차")?"selected":""%>>쌍용</option>
                    <option value="제네시스"<%=brand.equals("제네시스")?"selected":""%>>제네시스</option>
                </select>
            </span>
         </div>
        <div>내 예산
            <span class="checkBox 1">
                <select name="budget">
                    <option value="">선택</option>
                    <option value="0"<%=budget.equals("0")?"selected":""%>>~1000만원</option>
                    <option value="1000"<%=budget.equals("1000")?"selected":""%>>1000~2000만원</option>
                    <option value="2000"<%=budget.equals("2000")?"selected":""%>>2000~3000만원</option>
                    <option value="3000"<%=budget.equals("3000")?"selected":""%>>3000~4000만원</option>
                    <option value="4000"<%=budget.equals("4000")?"selected":""%>>4000~5000만원</option>
                    <option value="5000"<%=budget.equals("5000")?"selected":""%>>5000~6000만원</option>
                    <option value="6000"<%=budget.equals("6000")?"selected":""%>>6000만원 이상</option>
                </select>
            </span>
        </div>
        
        <div>차량 종류
            <span class="checkBox 1">
                <select name="carType">
                    <option  value="">선택</option>
                    <option value="sedan"<%=carType.equals("sedan")?"selected":""%>>Sedan</option>
                    <option value="hatchback"<%=carType.equals("hatchback")?"selected":""%>>Hatch Back</option>
                    <option value="suv"<%=carType.equals("suv")?"selected":""%>>SUV</option>
                    <option value="cuv"<%=carType.equals("cuv")?"selected":""%>>CUV</option>
                    <option value="wagon"<%=carType.equals("wagon")?"selected":""%>>Wagon</option>
                    <option value="convertible"<%=carType.equals("convertible")?"selected":""%>>Convertible</option>
                    <option value="coupe"<%=carType.equals("coupe")?"selected":""%>>Coupe</option>
                    <option value="pickuptruck"<%=carType.equals("pickuptruck")?"selected":""%>>Pickup Truck</option>
                    <option value="">???</option>
                </select>
            </span>
        </div>
        <div>차량 크기
            <span class="checkBox 1">
                <select name="carSegment">
                    <option value="">선택</option>
                    <option value="경차"<%=carSegment.equals("경차")?"selected":""%>>경차</option>
                    <option value="소형"<%=carSegment.equals("소형")?"selected":""%>>소형차</option>
                    <option value="준중형"<%=carSegment.equals("준중형")?"selected":""%>>준중형차</option>
                    <option value="중형"<%=carSegment.equals("중형")?"selected":""%>>중형차</option>
                    <option value="준대형"<%=carSegment.equals("준대형")?"selected":""%>>준대형차</option>
                    <option value="대형"<%=carSegment.equals("대형")?"selected":""%>>대형차</option>
                    <option value="">???</option>
                </select>
            </span>
        </div>
        <div>연료 종류
            <span class="checkBox 1">
                <select name="fuelType">
                    <option value="">선택</option>
                    <option value="gasoline"<%=fuelType.equals("gasoline")?"selected":""%>>가솔린</option>
                    <option value="diesel"<%=fuelType.equals("diesel")?"selected":""%>>디젤</option>
                    <option value="electric"<%=fuelType.equals("electric")?"selected":""%>>전기</option>
                    <option value="hybrid"<%=fuelType.equals("hybrid")?"selected":""%>>하이브리드</option>
                    <option value="hydrogen"<%=fuelType.equals("hydrogen")?"selected":""%>>수소</option>
                    <option value="lpg"<%=fuelType.equals("lpg")?"selected":""%>>LPG</option>
                    <option value="">???</option>
                </select>
            </span>
        </div>
        <input type="submit" class="btn" onclick="location.href='/recommend/customize'" value="검색">
    </form>
    <div class="carlist">
        <table class="table table-hover">
            <thead>
                <tr class="fixed_top">
                    <th class="no">순서</th>
                    <th class="brand">브랜드</th>
                    <th class="carName">모델명</th>
                    <th class="fuelType">연료종류</th>
                    <th class="fuelEfficiency">연료효율</th>
                    <th class="passengers">탑승인원</th>
                    <th class="maxPrice">풀옵션가격</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="n" items="${list}">
                    <tr>
                        <td>${n.rownum}</td>
                        <td><img src="/Image/cars/${n.brand}.png" width=50px; height=50px;>&nbsp&nbsp${n.brand}</td>
                        <td><a href="detail/${n.id}">${n.carName}</a></td>
                        <td>${n.fuelType}</td>
                        <td>${n.fuelEfficiency}</td>
                        <td>${n.passengers}</td>
                        <td>${n.maxPrice}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>