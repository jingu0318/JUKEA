<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>술 정보</title>
  <link rel="stylesheet" href="${contextPath}/resources/css/sulinformation2.css">
</head>
<body>
    <body>
        <div class="mainheader">
            <div class="head-title">	
              <h1>JUKEA</h1>
              <h4>밤은 길고 술은 달다 ★</h4>
            </div>
        </div>
        <div class="search">
            <input type = "text" value=" 술 이름을 입력하세요" style="width:400px;height:30px;font-size:15px;">
            <input type = "submit" value="검색" style="height:30px; width: 50px;">
        </div>
        <div class="sul">
            <ul class="banner">
              <form>
                <li>
                <input type="radio" id="whi" value="위스키" name="alc" checked="checked">
                    <label for="whi">위스키</label>
                </li>
                <li>
                  <input type="radio" id="win" name="alc" value="와인">
                      <label for="win">와인</label>
                </li>
                <li>
                  <input type="radio" id="sak" name="alc" value="사케">
                      <label for="sak">사케</label>
                </li>
                <li>
                  <input type="radio" id="bee" name="alc" value="맥주">
                      <label for="bee">맥주</label>
                </li>
                <li>
                  <input type="radio" id="bra" name="alc" value="브랜디">
                      <label for="bra">브랜디</label>
               </li>
                <li>
                  <input type="radio" id="req" name="alc" value="리큐르">
                      <label for="req">리큐르</label>
                </li>
                <li>
                  <input type="radio" id="soj" name="alc" value="소주">
                      <label for="soj">소주</label>
               </li>
              </form>
            </ul>
        </div>
        <hr style="border: solid 1px white;">
    <div class="sulname">
        <h1><p class="title">${drink.dname}</p></h1>
        <div class="img" >
            <img src = "${contextPath}/resources/image/${drink.dimage}">
        </div>
        <div class="info">
            <table height="300" > 
                <tbody>
                    <tr>
                        <td>원산지</td>
                        <td>${drink.dorigin}</td>
                    </tr>
                    <tr>
                        <td>용량</td>
                        <td>${drink.damount}ml</td>
                    </tr>
                    <tr>
                        <td>알콜도수</td>
                        <td>${drink.dalchol } %</td>
                    </tr>
                    <tr>
                        <td>소비자가격</td>
                        <td>${drink.dprice} 원</td>
                    </tr>
                    <tr>
                        <td>판매가격</td>
                        <td><span style="font-size: 40px;">${drink.dprice} 원</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="infodetail">
            <p>
              	${drink.dinfo}
            </p>
        </div>
    </div>
</body>
<script src="${contextPath}/resources/js/sulinformation5.js"></script>
</html>