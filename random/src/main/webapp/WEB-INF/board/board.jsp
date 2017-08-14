<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.tablecenter{
		text-align: center;
	}
	.thth{
		text-align: center;
	}
	.paging{
		text-align: center;
	}
</style>
<title>게시판</title>
</head>
<body>
<nav class="navbar">
  
</nav>
  
	<div class="row">
		<div class="col-xs-3"></div>
		<div class="col-xs-6">
			<div class="btn-group btn-group-justified" role="group" aria-label="...">
  				<div class="btn-group" role="group">
    				<button type="button" class="btn btn-default">자유게시판</button>
 				</div>
 				<div class="btn-group" role="group">
   					 <button type="button" class="btn btn-default">건의 및 문의 사항</button>
  				</div>
  				<div class="btn-group" role="group">
    				<button type="button" class="btn btn-default">공지사항</button>
  				</div>
			</div>
		</div>
		<div class="col-xs-3"></div>
	</div>
	
	<div class="row">
	<h1></h1>
	</div>
	
	<div class="row">
		<div class="col-xs-2"></div>
		<div class="col-xs-8">
	<table class="table table-hover tablecenter">
    <thead>
      <tr>
      	<th class="thth">글 번호</th>
        <th class="thth">제목</th>
         <th class="thth">이름</th>
        <th class="thth">날짜</th>
        <th class="thth">조회수</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="board" items="${boardList }" begin="0">
      <tr>
        <td>${board.board_no}</td>
        <td>${board.title} </td>
        <td>${board.name}</td>
        <td>${board.date}</td>
        <td>${board.view_no}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
		</div>
		<div class="col-xs-2"></div>
	</div>
	<div class="row">
	<div class="col-xs-10"></div>
	<div class="col-xs-1">
		<button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect">
  		<i class="material-icons">add</i>
  		</button>
	</div>
	<div class="col-xs-1"></div>
	</div>
	<div class="row">
		<div class="col-xs-4"></div>
		<div class="col-xs-4">
			<nav class="paging">
				  <ul class="pagination">
				    <li class="disabled">
				      <span>
				        <span aria-hidden="true">&laquo;</span>
				      </span>
				    </li>
				    <li class="active">
				      <span>1 <span class="sr-only">(current)</span></span>
				    </li>
				    <li class="actived">
				      <span>2 <span class="sr-only">(current)</span></span>
				    </li>
				    <li class="actived">
				      <span>3 <span class="sr-only">(current)</span></span>
				    </li>
				    <li class="actived">
				      <span>4 <span class="sr-only">(current)</span></span>
				    </li>
				    <li class="actived">
				      <span>5 <span class="sr-only">(current)</span></span>
				    </li>
				    <li>
						<a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      	</a>
				      </li>
				  </ul>
			</nav>
		</div>
		<div class="col-xs-4"></div>
	</div>
</body>
</html>