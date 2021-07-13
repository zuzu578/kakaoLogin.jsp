package com.mycompany.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompnay.myapp.dao.PUDING_USER_DATADao;

@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	// http://localhost:8093/myapp/ 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	@RequestMapping(value="login.page", method = RequestMethod.GET)
	public String loginPage() {
		return "loginPage";
	}
	@RequestMapping(value="getUserData" , method = RequestMethod.GET)
	@ResponseBody
	public String getUserData(HttpServletRequest req , Model model) {
		String userEmail = req.getParameter("userEmail");
		System.out.println("userEmail====================> "+ userEmail);
		PUDING_USER_DATADao dao = sqlSession.getMapper(PUDING_USER_DATADao.class);
		int userResultCount = dao.userDataCount(userEmail);
		if(userResultCount == 1) {
			System.out.println("userResultCount =======> " + userResultCount);
			System.out.println("이미 존재하는 data 입니다.");
			System.out.println("! data 중복 삽입 방지 !");
			return null ;
		}else {
		System.out.println("UserData Insert!!");
		String userNickName = req.getParameter("userNickName"); //userNickName
		System.out.println("userNickName ==========> " + userNickName );
		String userProfile_image = req.getParameter("userProfile_image"); //userProfile_image
		System.out.println("userProfile_image ========================>" + userProfile_image);
		String useraccount_profile = req.getParameter("useraccount_profile");
		System.out.println("useraccount_profile ========================>" + useraccount_profile);
		String user_birthday = req.getParameter("user_birthday"); //user_birthday
		System.out.println("user_birthday ================> " + user_birthday);
		String user_gender = req.getParameter("user_gender"); //user_gender 
		System.out.println("user_gender ==============> " +user_gender);
		dao.insertUserData(userNickName,userProfile_image,userEmail,user_birthday,user_gender);
		System.out.println("success!");
		return "home";
		}
	}
}
