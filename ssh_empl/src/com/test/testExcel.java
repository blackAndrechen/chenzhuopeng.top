package com.test;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.czpchen.Util.ReadExcel;

public class testExcel {
	public static void main(String[] args) {
		Map<String, String> test = new HashMap<String,String>();
		test.put("a", "1");
		test.put("b", "2");
		System.out.println(test.get("c"));
		
		String s = "20180303103042_716.xls";
		System.out.println(s.substring(0, 8));
	}
	
	
}
