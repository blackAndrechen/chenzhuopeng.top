package com.czpchen.model;

import java.util.Map;

public class Dormessage {
	private int id;
	private String location;//��˼��
	private String username;//�����
	private int nums;//����
	private int remainele;//ʣ�����
	private Map<String,String> ele;//�������ѵ�map
	
	public Dormessage() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getNums() {
		return nums;
	}

	public void setNums(int nums) {
		this.nums = nums;
	}

	public int getRemainele() {
		return remainele;
	}

	public void setRemainele(int remainele) {
		this.remainele = remainele;
	}

	public Map<String,String> getEle() {
		return ele;
	}

	public void setEle(Map<String,String> ele) {
		this.ele = ele;
	}

}
