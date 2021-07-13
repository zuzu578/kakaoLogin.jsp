package com.mycompnay.myapp.dao;

public interface PUDING_USER_DATADao {

	public void insertUserData(String userNickName, String userProfile_image, String userEmail, String user_birthday,
			String user_gender);

	public int userDataCount(String userEmail);

}
