package com.czpchen.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * 读取excel信息类
 * @author Administrator
 *
 */
public class ReadExcel {
	private String excelName;//excel名字
	private int sheetNumber;//sheet的个数
	private String location;
	
	public ReadExcel() {}

	/*
	 * 主函数入口
	 */
	public List<List<String>> read(String excelName,File file){
		List<List<String>> dataList = new ArrayList<List<String>>();
		this.setExcelName(excelName);
		InputStream is=null;
		try {
			is=new FileInputStream(file);
			Workbook wb = getWorkbook(is);
			dataList=read(wb);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(is!=null) {
				try {
					is.close();
				}catch(IOException e) {
					is=null;
					e.printStackTrace();
				}
			}
		}
		return dataList;
	}
	
	/*
	 * 读取excel信息函数
	 */
	private List<List<String>> read(Workbook wb){
		List<List<String>> dataList = new ArrayList<List<String>>();
		this.setSheetNumber(wb.getNumberOfSheets());
		//循环读取每个sheet
		for(int i=0;i<this.getSheetNumber();i++) {
			Sheet sheet = wb.getSheetAt(i);
			//sheet的行数
			int sheetRows=sheet.getPhysicalNumberOfRows();
			//循环读取每行
			for(int r=0;r<sheetRows;r++) {
				List<String> rowList=new ArrayList<String>();
				Row row = sheet.getRow(r);
				if(row==null) {
					continue;
				}
				//循环读取每个单元格
				for (int c=0;c<row.getPhysicalNumberOfCells();c++) {
					Cell cell = row.getCell(c);
					String cellValue="";
					if(null!=cell) {
						switch (cell.getCellTypeEnum()) {
						case STRING://字符串
							cellValue=cell.getStringCellValue();
							break;
						case NUMERIC://数字
							cellValue=cell.getNumericCellValue()+"";
							break;
						case BOOLEAN://布尔值
							cellValue=cell.getBooleanCellValue()+"";
							break;
						case FORMULA://公式
							cellValue=cell.getCellFormula()+"";
							break;
						case BLANK://空值
							cellValue="";
							break;
						case ERROR://故障
							cellValue="非法字符";
							break;
						default:
							cellValue="未知类型";
							break;
						}
					}
					rowList.add(cellValue);
				}
				if(rowList==null||rowList.size()<1) {
					continue;
				}
				if((rowList.get(0)).matches("(^\\d+.*?\\d$)"))
					dataList.add(rowList);
			}
		}
		return dataList;
	}
	/*
	 * 根据excel类型创建Workbook
	 */
	private Workbook getWorkbook(InputStream inputStream){
		Workbook wb=null;
		String[] excels = excelName.split("\\.");
		try {
			if(excels[1].equals("xls"))
				wb=new HSSFWorkbook(inputStream);
			else
				wb=new XSSFWorkbook(inputStream);
		}catch (IOException e) {
			e.printStackTrace();
		}
		return wb;
	}

	public String getExcelName() {
		return excelName;
	}

	public void setExcelName(String excelName) {
		this.excelName = excelName;
	}

	public int getSheetNumber() {
		return sheetNumber;
	}

	public void setSheetNumber(int sheetNumber) {
		this.sheetNumber = sheetNumber;
	}

	public String getLocation() {
		if(this.getSheetNumber()>20)
			return "相思湖";
		else
			return "明秀";
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
}
