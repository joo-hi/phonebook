<%@page import="com.jbp.phonebook.vo.Phone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int count = 0;
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>방문자수 조사 페이지</title>
   <%@ include file="/WEB-INF/template/link.jsp" %>
	<style>
        #content h2{
            font-size: 80px;
            font-weight: bold;
            line-height: 400px;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>
    
    <h2 id="txt"><%=++count %>번째 방문입니다.</h2>
   
<%@ include file="/WEB-INF/template/footer.jsp" %>
</html>
