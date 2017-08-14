<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>top</title>
</head>
<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top " role="navigation" style="background-color:transparent; border-color:transparent; ">
       
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="col-sm-11">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/hwan/main.do">밖은 어때?</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<li>
                        <a href="#">이용안내</a>
                    </li>
                <se:authorize access="isAuthenticated()">
                    <li>
                        <a href="/hwan/map/mapView.do">미세먼지 지도</a>
                    </li>
                    <li>
                        <a href="#">날씨</a>
                    </li>
                    <li>
                        <a href="/hwan/board/boardView.do">커뮤니티</a>
                    </li> 
                </se:authorize>
                <se:authorize access="isAnonymous()"> 
                                       
                   	<li>
                        <a href="/hwan/signUp.do">회원가입</a>
                    </li>
                
                     <li>
                        <a href="/hwan/login.do">로그인</a>
                    </li>
                </se:authorize>
                <se:authorize access="isAuthenticated()">
               
                      <li>
                        <a href="/hwan/logout.do">로그아웃</a>
                    </li>
                     <li>
                        <a href="#">마이페이지</a>
                    </li>
                     <li>
                        <a href="/hwan/crawling.do">분석인</a>
                    </li>
               </se:authorize>
               <se:authorize access="hasRole('ROLE_ADMIN')">
                     <li>
                        <a href="#">관리자페이지</a>
                    </li>
               </se:authorize>
              
                </ul>
            </div>
            <!-- /.navbar-collapse -->
     </div>
        <!-- /.row -->
    </nav>
</body>
</html>