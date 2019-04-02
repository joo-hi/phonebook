<%@page import="java.sql.Date"%>
<%@page import="com.jbp.phonebook.vo.Phone"%>
<%@page import="com.jbp.phonebook.dao.PhonebookDAO"%>
<%@page import="util.ResizeImageUtil"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

// multipart/form-data로 넘어오는
// 파라미터는 단순히
// request.getParameter()로 받을 수 없음
// cos라이브러리 활용

/*
MultipartRequest(request, 
				파일업로드경로, 
				파일업로드최대사이즈, 
				인코딩방식, 
				FileRenamePolicy)
*/

//실제로는 
//톰캣의 경로를 알아와서 써줘야 함..
String root = application.getRealPath("/");
System.out.println(root);

//upload 폴더 경로
//File.separatoe: OS 별로 달라서
String upload = root + "upload" + File.separator;
MultipartRequest mr = new MultipartRequest(request, upload, 52428800, "UTF-8", new DefaultFileRenamePolicy());

Phone phonebook = new Phone();

String name = mr.getParameter("name");
String phone1 = mr.getParameter("phone1");
String phone2 = mr.getParameter("phone2");
String phone3 = mr.getParameter("phone3");
String phone = phone1+phone2+phone3;
String gender = mr.getParameter("gender");
//인자에는 input type file의 파라미터명 기입
String profileImage = mr.getFilesystemName("profileImage");
String year = mr.getParameter("year");
String month = mr.getParameter("month");
String date = mr.getParameter("date");

Date birthDate = Date.valueOf(year+"-"+month+"-"+date);

// String birthDate = mr.getParameter("");
// String regdate = mr.getParameter("");


//out.print(name);
//out.print(phone);
//out.print(gender);
//out.print(profileImage);
//out.print(age);



Phone phonebook2 = new Phone(name,phone,gender,birthDate,profileImage);

PhonebookDAO.insert(phonebook2);

response.sendRedirect("/index.jsp");
//


/*

	이미지 리사이즈는 ResizeImageUtil 이용

*/

//리사이즈된 이미지의 전체 경로
String target = root + "thumbs"+File.separator+profileImage;

ResizeImageUtil.resize(upload+profileImage, target, 200);



%>



