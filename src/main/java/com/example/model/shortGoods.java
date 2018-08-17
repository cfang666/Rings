package com.example.model;

public class shortGoods {
	private int gsID;
	private String gsName;
	private float gsPrice;
	private String gsImage;
	
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
	public float getGsPrice() {
		return gsPrice;
	}
	public void setGsPrice(float gsPrice) {
		this.gsPrice = gsPrice;
	}
	public String getGsImage() {
		return gsImage;
	}
	public void setGsImage(String gsImage) {
		this.gsImage = gsImage;
	}
	public shortGoods(int gsID, String gsName, float gsPrice, String gsImage) {
		super();
		this.gsID = gsID;
		this.gsName = gsName;
		this.gsPrice = gsPrice;
		this.gsImage = gsImage;
	}
	public shortGoods() {
		super();
	}
	@Override
	public String toString() {
		return "shortGoods [gsID=" + gsID + ", gsName=" + gsName + ", gsPrice="
				+ gsPrice + ", gsImage=" + gsImage + "]";
	}
	
}
