<%@page import="com.jbp.phonebook.dao.PhonebookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String noStr = request.getParameter("no");
int no = Integer.parseInt(noStr);

PhonebookDAO.delete(no);
response.sendRedirect("/index.jsp");

%>