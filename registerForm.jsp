<%@page import="java.util.List"%>
<%@page import="com.jbp.phonebook.vo.Phone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호 입력페이지</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="/css/form.css"/>
</head>
<body>
<%@ include file="WEB-INF/template/header.jsp" %>
<h2><i class="fas fa-mobile-alt"></i> 전화번호 입력</h2>
	<div id="formBox">
		<form enctype="multipart/form-data" id="form" action="/register.jsp" method="post">
		
			<fieldset>
				<legend class="screen_out">전화번호 입력폼</legend>
				<div class="row">
					<label for="name">이 름</label>
					<input id="name" name="name" placeholder="이름입력" />
					<div class="msg">"2~6글자 한글과 숫자로만 입력해주세요."</div>
					
				</div>
				<div class="row">
					<label for="phone">전화번호</label>
					<span id="phone">
					<select id="phone1" title="반드시 선택해주세요."  name=phone1>
							<option>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>019</option>
					</select>
					- 
					<input id="phone2" title="3~4글자 숫자만 입력해주세요." class="digit4"
						name = "phone2" placeholder="숫자입력" size="4" maxlength="4" />
					- 
					<input id="phone3" title="4글자 숫자만 입력해주세요." class="digit4"
					name = "phone3" placeholder="숫자입력" size="4"	maxlength="4" />
					</span>
				</div>
				<div class="row">
					<label for="age">생년월일</label><span id="age" name="age">
					<select id="year" name="year" >
							<%for(int i=2019; i>=1900; i--){ %>
							<option value="<%=i%>"><%=i %>
							</option>
							<%} %>
					</select><em>년</em>
					<select id="month" name="month">
							<%for(int i=1; i<13; i++){ %>
							<option value="<%=i%>"><%=i %>
							</option>
							<%} %>
					</select><em>월</em>
					<select id="date" name="date">
							<%for(int i=1; i<32; i++){ %>
							<option value="<%=i%>"><%=i %>
							</option>
							<%} %>
					</select><em>일</em>
					</span>
				</div>
				<div class="row">
					<label for="gender">성 별</label>
					<span id="gender">
					<input type="radio" id="female" name="gender" value="F"/>
					<label for="female"><i class="fa fa-female"></i> 여 자</label>
					<input type="radio" id="male" name="gender" value="M"/> 
					<label for="male"><i class="fa fa-male"></i> 남 자</label>
					</span>
				</div>
				<!-- 만약 파일업로드가 어려우면 프로필 div를 제거하고
				 그냥 'defaultimg.png'라는 문자열을 넣으세요.
				 (기본이미지가 보여집니다.)
				 -->
				<div class="row">
					<label for="profileImage">프로필</label>
					<input type="file" name="profileImage" id="profileImage" />
					<strong class="msg normal"><div>만약 프로필 사진을 등록하지 않으면 기본이미지가 출력됩니다.</div></strong>
					
				</div>
				<!-- 만약 파일업로드가 어려우면 프로필 div를 제거하고
				 그냥 'defaultimg.png'라는 문자열을 넣으세요.
				 (기본이미지가 보여집니다.)
				 -->
				<div class="box_btn">
					<button type="submit" class="btn">
						<i class="fas fa-pencil-alt"></i> 전화번호 등록
					</button>
					<button type="reset" class="btn">
						<i class="fas fa-redo-alt"></i> 리 셋
					</button>
					<a href="/index.jsp" class="btn"><i class="fa fa-arrow-left"></i> 전화번호부로</a>
				</div>
			</fieldset>
		</form>
</div><!-- //formBox  -->

<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>