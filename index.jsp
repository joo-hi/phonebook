
<%@page import="com.jbp.phonebook.dao.PhonebookDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.jbp.phonebook.vo.Phone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

List<Phone> list = PhonebookDAO.selectList();


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아주 멋진 전화번호부</title>
<!-- 링크 임포트 -->
<%@ include file="/WEB-INF/template/link.jsp" %>
<!-- CSS 임포트 -->
<link rel="stylesheet" href="/css/index.css"/>
</head>

<body>
<!-- 헤더 임포트 -->
<%@ include file="/WEB-INF/template/header.jsp" %>

<h2><i class="fas fa-clipboard-list"></i> 전화번호 목록</h2>
<div id="phoneBox">
<table border="1">
<caption class="screen_out">전화번호표</caption>
<colgroup>
<col id="profileImage"/>
<col id="name"/>
<col id="phone"/>
<col id="gender"/>
<col id="age"/>
<col id="update"/>
<col id="delete"/>
</colgroup>
<thead>
<tr>
  <th>얼 굴</th>
  <th>이 름</th>
  <th>전화번호</th>
  <th>성 별</th>
  <th>나 이</th>
  <th>수 정</th>
  <th>삭 제</th>
</tr>
</thead>
<tbody>

<tr>
	<%if(list.isEmpty()){ %>
  <td class="no_data" colspan="7"><i class="far fa-flushed"></i> 아직 전화번호가 없습니다.</td>
	<%} %>
		<% for(Phone phone: list){ %>
</tr>
<tr>
			<td>
                <img class="img_profile" src="/upload/<%=phone.getProfileImage() %>" width="120" height="120">
            </td>
			<th><%=phone.getName() %></th>
			<td><i class="fas fa-mobile"></i><%=phone.getPhone1()+"-"+phone.getPhone2()+"-"+phone.getPhone3() %> </td>
			<td>
			<%=phone.getGenderEmoticon() %>
			<%if(phone.getGender().equals("M")){ %> 
				남자 <%} %>
			<%if(phone.getGender().equals("F")){ %> 
				여자<%} %>
			</td>
			<td title="<%=phone.getBirthDate() %>"><%=phone.getNowYear()-phone.getBirthYear()+1 %></td>
			<td>
				<a href="/updateForm.jsp?no=<%=phone.getNo() %>" class="btn update"><i class="fa fa-wrench"></i> 수정</a>
			</td>
			<td>
				<a href="/delete.jsp?no=<%=phone.getNo() %>" class="btn delete"><i class="far fa-trash-alt"></i> 삭제</a>
			</td>
		</tr>
			<%} %>
</tbody>
<tfoot>
	<tr>
  <td class="box_btn" colspan="7">
  <a href="/registerForm.jsp" class="btn"><i class="fas fa-pencil-alt"></i> 전화번호 작성</a>
  </td>
	</tr>
</tfoot>
</table>

</div>


<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>