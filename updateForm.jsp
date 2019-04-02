<%@page import="com.jbp.phonebook.dao.PhonebookDAO"%>
<%@page import="com.jbp.phonebook.vo.Phone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
     String noStr = request.getParameter("no");
     int no = Integer.parseInt(noStr);
     Phone phone = new Phone();
     phone = PhonebookDAO.selectOne(no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호 수정페이지</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="/css/form.css"/>
</head>
<body>
<%@ include file="WEB-INF/template/header.jsp" %>
<h2><i class="fas fa-mobile-alt"></i> <%=phone.getName() %> 전화번호 수정</h2>
	<div id="formBox">
		<form id="form" action="/update.jsp" method="post">
		<input type = "hidden" name = "no"  value="<%=no %>"/>
			<fieldset>
				<legend class="screen_out">전화번호 수정폼</legend>
				<div class="row profile">
					<img class="img_profile" src="/upload/<%=phone.getProfileImage() %>" width="120" height="120" />
				</div>
				<div class="row">
					<label for="name">이 름</label>
					<input id="name" name ="name" title="2~6글자 한글과 숫자로만 입력해주세요."
						   readonly value="<%=phone.getName() %>"/>
				</div>
				<div class="row">
					<label for="phone">전화번호</label>
					<span id="phone">
					<select id="phone1" name="phone1" title="반드시 선택해주세요.">
							<%if(phone.getPhone1().equals("010")) {%>
							<option selected>010</option> 
							<% }%>
							<%if(phone.getPhone1().equals("011")) {%>
							<option selected>011</option> 
							<% }%>
							<%if(phone.getPhone1().equals("016")) {%>
							<option selected>016</option> 
							<% }%>
							<%if(phone.getPhone1().equals("017")) {%>
							<option selected>017</option> 
							<% }%>
							<%if(phone.getPhone1().equals("019")) {%>
							<option selected>019</option> 
							<% }%>
							<option>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>019</option>
					</select>
					
					- 
					
					<input id="phone2"  
						title="3~4글자 숫자만 입력해주세요." class="digit4"
						placeholder="숫자입력" 
						value="<%=phone.getPhone2() %>"
						name="phone2" size="4" maxlength="4" />
					
					- 
					<input id="phone3" title="4글자 숫자만 입력해주세요." class="digit4"
					placeholder="숫자입력" name="phone3" value="<%=phone.getPhone3() %>"size="4"	maxlength="4" />
					</span>
				</div>
				<div class="row">
					<label for="age">생년월일</label><span id="age">
					<select id="year" name="year" >
							<%for(int i=2019; i>=1900; i--){ %>
							<option 
							<%if(phone.getBirthYear()==i){ %>
								selected
							<%} %> 
							value="<%=i%>"><%=i %>
							</option>
							<%} %>
					</select><em>년</em>
					<select id="month" name="month">
							<%for(int i=1; i<13; i++){ %>
							<option 
							<%if(phone.getBirthMonth()==i){ %>
								selected
							<%} %>
							value="<%=i%>"><%=i %>
							</option>
							<%} %>
					</select><em>월</em>
					<select id="date" name="date">
							<%for(int i=1; i<32; i++){ %>
							<option 
							<%if(phone.getBirthDay()==i){ %>
								selected
							<%} %>
							value="<%=i%>"><%=i %>
							</option>
							<%} %>
					</select><em>일</em>
					</span>
				</div>
				<div class="row">
					<label for="gender">성 별</label>
					<span id="gender">
					<input type="radio" name="gender" <%if(phone.getGender().equals("F")){ %> 
						  	checked
							<%} %>
							value = "F"/>
					<label for="female"><i class="fa fa-female"></i> 여 자</label>
					<input type="radio" name="gender" id="male" <%if(phone.getGender().equals("M")){ %> 
						  	checked
							<%} %>
							value = "M"/> 
					<label for="male"><i class="fa fa-male"></i> 남 자</label>
					</span>
				</div>
				<div class="box_btn">
					<button type="submit" class="btn">
						<i class="fas fa-pencil-alt"></i> 전화번호 수정
					</button>
					<button type="reset" class="btn">
						<i class="fas fa-redo-alt"></i> 리 셋
					</button>
					<a href="" class="btn"><i class="fa fa-arrow-left"></i> 전화번호부로</a>
				</div>
			</fieldset>
		</form>
</div><!-- //formBox  -->

<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>