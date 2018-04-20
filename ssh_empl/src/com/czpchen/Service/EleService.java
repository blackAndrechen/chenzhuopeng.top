package com.czpchen.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

import com.czpchen.dao.EleDAO;
import com.czpchen.model.Dormessage;
import com.czpchen.util.ReadExcel;

public class EleService{
	private EleDAO eleDAO;
	private ReadExcel excelUtil;//��excel����
	/**
	 * ��ȡexcel���,����excel������ת��Ϊlist,����EleDAO�������ݿ���Ӧ��Ϣ
	 * @param excelName
	 * @param file
	 */
	public String updateEle(String excelName,File file) {
		List<List<String>> lists;
		String date;//excel�������
		String location;
		try {
			lists = excelUtil.read(excelName,file);//��ȡexcel
			date = excelName.substring(0, 8);//excel�������
			location = excelUtil.getLocation();//У��
			Dormessage d = eleDAO.query(location, lists.get(lists.size()-1).get(0));
			if(d.getEle().get(date)!=null) {
				return "�Ѿ����ڸ����ڵ�����";
			}else {
				return eleDAO.update(location, date, lists);
			}
		}catch(Exception e) {
			return "��ȡexcel������,�������ϴ�";
		}
	}
	/**
	 * �������ݱ�
	 * @param excelName
	 * @param file
	 * @return
	 */
	public String createEle(String excelName,File file){
		List<List<String>> lists;
		String date;//excel�������
		String location;
		try {
			lists = excelUtil.read(excelName,file);//��ȡexcel
			date = excelName.substring(0, 8);//excel�������
			location = excelUtil.getLocation();//У��
			Dormessage d = eleDAO.query(location, lists.get(lists.size()-1).get(0));
			if(d!=null) {
				return "�Ѿ����ڸ��������Ϣ";
			}else {
				return eleDAO.save(location,lists);
			}
		}catch(Exception e) {
			e.printStackTrace();
			return "�������ݱ������";
		}
	}
	
	/**
	 * ����Map,key(endDate,endEle,date,ele),value(String,int,List,List)
	 * @param location 
	 * @param dorid
	 * @return
	 */
	public Map<String,Object> queryEle(String location,String dorid){
		Map<String,Object> result = new TreeMap<String,Object>();
		Dormessage d = eleDAO.query(location, dorid);
		if(d==null) {
			return null;
		}
		Map<String,String> m = d.getEle();//���
		List<Integer> eledata=new ArrayList<Integer>();
		List<Integer> ele=new ArrayList<Integer>();
		for(String s:m.keySet()) {
			eledata.add(Integer.parseInt(s));
			ele.add((int)Float.parseFloat(m.get(s)));
		}
		Collections.sort(eledata);
		Collections.sort(ele);
		for(int i=0;i<ele.size()-1;i++) {
			int after = ele.get(i+1);
			int before = ele.get(i);
			ele.set(i, after-before);
		}
		String endDate = eledata.get(eledata.size()-1).toString().substring(4, 8);
		int endEle = d.getRemainele();
		//��,��,ʣ����
		result.put("mon", endDate.substring(0, 2));
		result.put("dat", endDate.substring(2));
		result.put("endEle", endEle);
		//��������
		List<String> temp1 = new ArrayList<String>();
		for(int i=1;i<eledata.size();i++) {
			temp1.add(eledata.get(i).toString());
		}
		result.put("date", temp1);
		//�������
		List<Integer> temp2 = new ArrayList<Integer>();
		for(int i=0;i<ele.size()-1;i++)
			temp2.add(ele.get(i));
		result.put("ele", temp2);
		
		//ƽ���õ�
		int ss = Integer.parseInt(temp1.get(temp1.size()-2).substring(4, 6));
		int s = Integer.parseInt(temp1.get(temp1.size()-1).substring(4, 6));
		int days = 0;//������
		if(ss==(s-1)) {
			days = Integer.parseInt(temp1.get(temp1.size()-1).substring(6))+30-Integer.parseInt(temp1.get(temp1.size()-2).substring(6));
		}else {
			days = Integer.parseInt(temp1.get(temp1.size()-1).substring(6))-Integer.parseInt(temp1.get(temp1.size()-2).substring(6));
		}	
		//Ԥ������
		Calendar today = Calendar.getInstance(); 
		today.setTime(new Date());
		int toM = today.get(Calendar.MONTH)+1;
		int toD = today.get(Calendar.DAY_OF_MONTH);
		int sday = 0;
		if(toM==s) {
			sday =toD - Integer.parseInt(temp1.get(temp1.size()-1).substring(6));
		}else {
			sday = toD + 30 - Integer.parseInt(temp1.get(temp1.size()-1).substring(6));
		}
		int average=0;
		int stopDay=0;
		try {
			int eles = temp2.get(temp2.size()-1);//������
			average = eles/days;
			stopDay = (endEle/average)-sday;
		}catch(Exception e){
			//����������־��ӵ����ݿ�
		}
		result.put("aver", average);
		result.put("stopDay", stopDay);
		
		return result;
	}
	/**
	 * 
	 * @return
	 */
	public Map<String,String> queryEleAcountTop(){
		
		return null;
	}
	/**
	 * 
	 * @return
	 */
	public Map<String,String> queryEleSpendTop(){
		
		return null;
	}

	public EleDAO getEleDAO() {
		return eleDAO;
	}
	public void setEleDAO(EleDAO eleDAO) {
		this.eleDAO = eleDAO;
	}
	public ReadExcel getExcelUtil() {
		return excelUtil;
	}
	public void setExcelUtil(ReadExcel excelUtil) {
		this.excelUtil = excelUtil;
	}
}
