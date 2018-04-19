package com.czpchen.dao;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;
import com.czpchen.model.Dormessage;

public class EleDAO extends HibernateDaoSupport{
	/**
	 * 根据校区和宿舍号查询宿舍信息
	 * @param 校区
	 * @param 宿舍号
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
	 * 将数据更新到数据库
	 * @param 校区
	 * @param 日期
	 * @param List数组
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
					return "更新数据发生异常,请检查";
				}
				continue;
			}
		}
		return "更新完成";
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
			System.out.println("出错了");
			return "error";
		}
	}
}
