package com.example.model;

public class User {
	private int userID;
	private String userPwd;
	private String userName;
	private String userSex;
	private int userPhone;
	private int userPower;
	private String userEmail;
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	public int getUserPower() {
		return userPower;
	}
	public void setUserPower(int userPower) {
		this.userPower = userPower;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public User(int userID, String userPwd, String userName, String userSex,
			int userPhone, int userPower, String userEmail) {
		super();
		this.userID = userID;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSex = userSex;
		this.userPhone = userPhone;
		this.userPower = userPower;
		this.userEmail = userEmail;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [userID=" + userID + ", userPwd=" + userPwd
				+ ", userName=" + userName + ", userSex=" + userSex
				+ ", userPhone=" + userPhone + ", userPower=" + userPower
				+ ", userEmail=" + userEmail + "]";
	}
}
