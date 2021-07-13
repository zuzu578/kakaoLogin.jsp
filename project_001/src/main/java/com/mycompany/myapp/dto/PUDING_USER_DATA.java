package com.mycompany.myapp.dto;

public class PUDING_USER_DATA {
	private String USER_SEQ_ID;
	private String USER_NICKNAME;
	private String USER_PROFILE_IMAGE;
	private String USER_EMAIL;
	private String USER_BIRTHDAY;
	private String USER_GENDER;
	public PUDING_USER_DATA() {
		
	}
	public PUDING_USER_DATA(String uSER_SEQ_ID, String uSER_NICKNAME, String uSER_PROFILE_IMAGE, String uSER_EMAIL,
			String uSER_BIRTHDAY, String uSER_GENDER) {
		super();
		USER_SEQ_ID = uSER_SEQ_ID;
		USER_NICKNAME = uSER_NICKNAME;
		USER_PROFILE_IMAGE = uSER_PROFILE_IMAGE;
		USER_EMAIL = uSER_EMAIL;
		USER_BIRTHDAY = uSER_BIRTHDAY;
		USER_GENDER = uSER_GENDER;
	}
	public String getUSER_SEQ_ID() {
		return USER_SEQ_ID;
	}
	public void setUSER_SEQ_ID(String uSER_SEQ_ID) {
		USER_SEQ_ID = uSER_SEQ_ID;
	}
	public String getUSER_NICKNAME() {
		return USER_NICKNAME;
	}
	public void setUSER_NICKNAME(String uSER_NICKNAME) {
		USER_NICKNAME = uSER_NICKNAME;
	}
	public String getUSER_PROFILE_IMAGE() {
		return USER_PROFILE_IMAGE;
	}
	public void setUSER_PROFILE_IMAGE(String uSER_PROFILE_IMAGE) {
		USER_PROFILE_IMAGE = uSER_PROFILE_IMAGE;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public String getUSER_BIRTHDAY() {
		return USER_BIRTHDAY;
	}
	public void setUSER_BIRTHDAY(String uSER_BIRTHDAY) {
		USER_BIRTHDAY = uSER_BIRTHDAY;
	}
	public String getUSER_GENDER() {
		return USER_GENDER;
	}
	public void setUSER_GENDER(String uSER_GENDER) {
		USER_GENDER = uSER_GENDER;
	}
	@Override
	public String toString() {
		return "PUDING_USER_DATA [USER_SEQ_ID=" + USER_SEQ_ID + ", USER_NICKNAME=" + USER_NICKNAME
				+ ", USER_PROFILE_IMAGE=" + USER_PROFILE_IMAGE + ", USER_EMAIL=" + USER_EMAIL + ", USER_BIRTHDAY="
				+ USER_BIRTHDAY + ", USER_GENDER=" + USER_GENDER + ", getUSER_SEQ_ID()=" + getUSER_SEQ_ID()
				+ ", getUSER_NICKNAME()=" + getUSER_NICKNAME() + ", getUSER_PROFILE_IMAGE()=" + getUSER_PROFILE_IMAGE()
				+ ", getUSER_EMAIL()=" + getUSER_EMAIL() + ", getUSER_BIRTHDAY()=" + getUSER_BIRTHDAY()
				+ ", getUSER_GENDER()=" + getUSER_GENDER() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	

}
