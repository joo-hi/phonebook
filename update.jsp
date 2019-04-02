<%@page import="java.sql.Date"%>
<%@page import="com.jbp.phonebook.vo.Phone"%>
<%@page import="com.jbp.phonebook.dao.PhonebookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

//포스트 방식의 한글처리
request.setCharacterEncoding("UTF-8");

String noStr = request.getParameter("no");
int no = Integer.parseInt(noStr);
String phone1 = request.getParameter("phone1");
String phone2 = request.getParameter("phone2");
String phone3 = request.getParameter("phone3");
String phone = phone1+phone2+phone3;
String gender = request.getParameter("gender");

String year =  request.getParameter("year");
String month =  request.getParameter("month");
String date =  request.getParameter("date");

Date birthDate = Date.valueOf(year+"-"+month+"-"+date);


//out.print(phone);
//out.print(gender);
//out.print(birthDate);



Phone phonebook = new Phone(no, phone, gender, birthDate);

PhonebookDAO.update(phonebook);

response.sendRedirect("/index.jsp");


%>