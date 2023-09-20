package com.shubham.springmvc.techcode.model;

public class Holiday {
	
	private final String day;
	private final String reason;
	private final Type type;
	
	public enum Type{
		FESTIVAL, GOVERNMENT
	}

	public Holiday(String day, String reason, Type type) {
		super();
		this.day = day;
		this.reason = reason;
		this.type = type;
	}

	public String getDay() {
		return day;
	}

	public String getReason() {
		return reason;
	}

	public Type getType() {
		return type;
	}
	
	
	
}
