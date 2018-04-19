package com.czpchen.dao;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;
import com.czpchen.model.Dormessage;

public class EleDAO extends HibernateDaoSupport{
	/**
	 * ����У��������Ų�ѯ������Ϣ
	 * @param У��
	 * @param �����
	 * @return
	 */
	public Dormessage query(String location,String dorid){
		String hql="from Dormessage where LOCATION=? and USERNAME=?";
		try {
			@SuppressWarnings("unchecked")
			List<Dormessage> lists = (List<Dormessage>)getHibernateTemplate().find(hql, location,dorid);
			if(lists!=null||!lists.isEmpty()) {
				return lists.get(0);
			}
			return null;
		}catch (Exception e) {
			return null;
		}
		
	}
	
	public Map<String,Map<String,String>> queryTop(){
		return null;
	}
	
	/**
	 * �����ݸ��µ����ݿ�
	 * @param У��
	 * @param ����
	 * @param List����
	 */
	@Transactional(readOnly=false)
	public String update(String location,String date,List<List<String>> lists) {
		Dormessage dor;
		int error=0;
		for(List<String> list:lists) {
			try {
				dor= query(location,list.get(0));
				if(list.get(5)==null||list.get(5)=="")
					dor.setRemainele(0);
				else
					dor.setRemainele((int)Float.parseFloat(list.get(5)));
				if(list.get(3)==null||list.get(3)=="")
					dor.getEle().put(date,"0");
				else
					dor.getEle().put(date, list.get(3));
				getHibernateTemplate().update(dor);
			}catch(Exception e){
				error++;
				if(error>10) {
					return "�������ݷ����쳣,����";
				}
				continue;
			}
		}
		return "�������";
	}
	@Transactional(readOnly=false)
	public String save(String location,List<List<String>> lists) {
		try {
			for(List<String> l:lists) {
				Dormessage d = new Dormessage();
				d.setLocation(location);
				d.setUsername(l.get(0));
				d.setNums(Integer.parseInt(l.get(2)));
				getHibernateTemplate().save(d);
			}
			return "success";
		}catch (Exception e){
			System.out.println("������");
			return "error";
		}
	}
}
