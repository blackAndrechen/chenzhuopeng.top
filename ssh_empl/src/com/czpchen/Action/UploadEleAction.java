package com.czpchen.Action;

import java.io.File;

import javax.servlet.ServletContext;


import com.czpchen.Service.EleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UploadEleAction extends ActionSupport{

	private EleService eleService;
	private File uploadExcel;
	private String uploadExcelContentType;
	private String uploadExcelFileName;
	
	
	public String execute() {
		ActionContext actionContext =ActionContext.getContext(); 
		if(uploadExcel.exists()) {
			String feedback=eleService.updateEle(uploadExcelFileName,uploadExcel);
			actionContext.getApplication().put("uploadMess", feedback);
			return SUCCESS;
		}
		else
			return INPUT;
	}
	
	public String create() {
		ActionContext actionContext =ActionContext.getContext(); 
		if(uploadExcel.exists()) {
			String feedback=eleService.createEle(uploadExcelFileName,uploadExcel);
			actionContext.getApplication().put("uploadMess", feedback);
			System.out.println(feedback);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	public File getUploadExcel() {
		return uploadExcel;
	}

	public void setUploadExcel(File uploadExcel) {
		this.uploadExcel = uploadExcel;
	}

	public String getUploadExcelContentType() {
		return uploadExcelContentType;
	}

	public void setUploadExcelContentType(String uploadExcelContentType) {
		this.uploadExcelContentType = uploadExcelContentType;
	}

	public String getUploadExcelFileName() {
		return uploadExcelFileName;
	}

	public void setUploadExcelFileName(String uploadExcelFileName) {
		this.uploadExcelFileName = uploadExcelFileName;
	}

	public EleService getEleService() {
		return eleService;
	}

	public void setEleService(EleService eleService) {
		this.eleService = eleService;
	}
}
