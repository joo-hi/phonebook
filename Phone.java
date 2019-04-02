package com.jbp.phonebook.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;

import org.apache.catalina.connector.Request;

public class Phone {
	
	private String name, phone, gender, profileImage;
	private Timestamp regdate;
	private int no;
	private Date birthDate;
	
	public Phone() {
		// TODO Auto-generated constructor stub
	}
	
	public Phone(String name,String phone,String gender,Date birthDate,String profileImage){
		this.name=name;
		this.phone=phone;
		this.gender=gender;
		this.birthDate=birthDate;
		this.profileImage=profileImage;
	}
		
	public Phone(String profileImage, String name, String phone) {
		this.profileImage = profileImage;
		this.name = name;
		this.phone = phone;
	}
	
	public Phone(int no, String phone, String gender, Date birthDate) {
		this.no = no;
		this.phone = phone;
		this.gender = gender;
		this.birthDate = birthDate;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}
	
	public String getPhone1() {
		String phone1;
		phone1 = phone.substring(0,3);
		return phone1;
	}
	
	public String getPhone2() {
		String phone2;
		phone2 = phone.substring(3,7);
		return phone2;
	}
	
	public String getPhone3() {
		String phone3;
		phone3 = phone.substring(7);
		return phone3;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public int getNowYear() {
		Calendar cal = Calendar.getInstance();
		return cal.get(Calendar.YEAR);
	}
	public int getBirthYear() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(birthDate);
		return cal.get(Calendar.YEAR);
	}
	public int getBirthMonth() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(birthDate);
		return cal.get(Calendar.MONTH)+1;
	}
	public int getBirthDay() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(birthDate);
		return cal.get(Calendar.DATE);
	}
	/*public int getReleaseMonth() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(releaseDate);
		return cal.get(Calendar.MONTH)+1;
	}
	public int getReleaseDay() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(releaseDate);
		return cal.get(Calendar.DATE);
	}*/
	
	// 파비콘 얻어오는 메소드
	public String getGenderEmoticon() {
		
		switch(gender) {
		case "M":return "<i class=\"fa fa-male\"></i>";
		case "F":return "<i class=\"fa fa-female\"></i>";
		default : return null;
		}
	}
	
	// 인크리즈를 너무너무 하고싶다.. 아아아악
	public static int getRenew(){
		int num = 0;
	
		return num;
	}
}
