package com.example.model;

public class Goods {
	private int gsID;
	private String gsName;
	private String gsImage;
	private float gsPrice;
	private String gsModel;
	private int gsNum;
	private int typeID;
	private String gsColor;
	private String gsSize;
	private int cartNum;
	public int getGsID() {
		return gsID;
	}
	public void setGsID(int gsID) {
		this.gsID = gsID;
	}
	public String getGsName() {
		return gsName;
	}
	public void setGsName(String gsName) {
		this.gsName = gsName;
	}
	public String getGsImage() {
		return gsImage;
	}
	public void setGsImage(String gsImage) {
		this.gsImage = gsImage;
	}
	public float getGsPrice() {
		return gsPrice;
	}
	public void setGsPrice(float gsPrice) {
		this.gsPrice = gsPrice;
	}
	public String getGsModel() {
		return gsModel;
	}
	public void setGsModel(String gsModel) {
		this.gsModel = gsModel;
	}
	public int getGsNum() {
		return gsNum;
	}
	public void setGsNum(int gsNum) {
		this.gsNum = gsNum;
	}
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	public String getGsColor() {
		return gsColor;
	}
	public void setGsColor(String gsColor) {
		this.gsColor = gsColor;
	}
	public String getGsSize() {
		return gsSize;
	}
	public void setGsSize(String gsSize) {
		this.gsSize = gsSize;
	}
	@Override
	public String toString() {
		return "Goods [gsID=" + gsID + ", gsName=" + gsName + ", gsImage="
				+ gsImage + ", gsPrice=" + gsPrice + ", gsModel=" + gsModel
				+ ", gsNum=" + gsNum + ", typeID=" + typeID + ", gsColor="
				+ gsColor + ", gsSize=" + gsSize + "]";
	}
	public Goods(int gsID, String gsName, String gsImage, float gsPrice,
			String gsModel, int gsNum, int typeID, String gsColor, String gsSize, int cartNum) {
		super();
		this.gsID = gsID;
		this.gsName = gsName;
		this.gsImage = gsImage;
		this.gsPrice = gsPrice;
		this.gsModel = gsModel;
		this.gsNum = gsNum;
		this.typeID = typeID;
		this.gsColor = gsColor;
		this.gsSize = gsSize;
		this.cartNum = cartNum;
	}
	public Goods() {
		super();
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	
}
