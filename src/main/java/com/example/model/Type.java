package com.example.model;

public class Type {
	private int typeID;
	private String typeName;
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	@Override
	public String toString() {
		return "Type [typeID=" + typeID + ", typeName=" + typeName + "]";
	}
	public Type(int typeID, String typeName) {
		super();
		this.typeID = typeID;
		this.typeName = typeName;
	}
	public Type() {
		super();
	}
	
	
}
