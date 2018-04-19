package com.czpchen.action;

import java.util.List;
import java.util.Map;

import com.czpchen.service.EleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class EleAction extends ActionSupport {
	private String dorid;
	private String location;
	private EleService eleService;
	
	@SuppressWarnings("unchecked")
	public String execute() {
		ActionContext actionContext =ActionContext.getContext(); 
		Map<String, Object> session = actionContext.getSession();
		Map<String,Object> DorMess= eleService.queryEle(location, dorid);
		if(DorMess!=null) {
			session.put("mon", DorMess.get("mon"));
			session.put("dat", DorMess.get("dat"));
			session.put("endEle", DorMess.get("endEle"));
			session.put("Date", DorMess.get("date"));
			session.put("ele", DorMess.get("ele"));
			session.put("aver", DorMess.get("aver"));
			session.put("stopDay", DorMess.get("stopDay"));
			return SUCCESS;
		}
		else {
			actionContext.getApplication().put("query_error", "对不起,没有找到符合有求的宿舍,请检查你输入的宿舍号!");
			return ERROR;
		}
	}
	

	public EleService getEleService() {
		return eleService;
	}
	public void setEleService(EleService eleService) {
		this.eleService = eleService;
	}
	public String getDorid() {
		return dorid;
	}
	public void setDorid(String dorid) {
		this.dorid = dorid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
}
