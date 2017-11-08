package com.ccycloud.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.ccycloud.model.BalanceReport;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class BalanceReportService {

	private BalanceReport balance ;

	public BalanceReport getBalance() {
		return balance;
	}

	public void setBalance(BalanceReport balance) {
		this.balance = balance;
	}
	
	public String getBalanceReport(String companyId,String account_id,String theMonth,String strType){
			List<BalanceReport> list = new ArrayList<BalanceReport>();
			String jsonReturn = "";
			try {
				URL requestUrl = new URL("http://192.168.8.201:8881/api/ACC_SubjectBalance?companyId="+companyId+"&accounId="+account_id+"&strType=0&strDate="+theMonth);
				JSONObject jsonObject = new JSONObject();
				JSONArray jsonArray = new JSONArray();
				HttpURLConnection connection = (HttpURLConnection) requestUrl.openConnection();// 打开连接
				connection.setRequestProperty("Accept-Charset", "UTF-8");
				connection.connect();// 连接会话
				// 获取输入流
				BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
				String line;
				StringBuilder sb = new StringBuilder();
				while ((line = br.readLine()) != null) {// 循环读取流
					sb.append(line);
				}
				br.close();// 关闭流
				connection.disconnect();// 断开连接
				jsonObject = JSONObject.fromObject(sb.toString());
				
				/***
				 * {
				    "result": true,
				    "dataInfo": [
				        {
				            "CompanyId": 5509512639679240000,
				            "CompanyStrId": "5509512639679240644",
				            "AccountId": 5418499593745604000,
				            "AccountStrId": "5418499593745603652",
				            "SubjectId": 5401232562805485000,
				            "SubjectStrId": "5401232562805484700",
				            "SubjectCode": "1012",
				            "SubjectName": "其他货币资金\t",
				            "_SubjectType": 1,
				            "ParentId": 0,
				            "ParentStrId": "0",
				            "BalanceDebit": null,
				            "BalanceCebit": null,
				            "PeriodDebit": null,
				            "PeriodCebit": null,
				            "Total_Dr_Count": null,
				            "Total_Cb_Count": null,
				            "EndtimeDebit": null,
				            "EndtimeCebit": null,
				            "ReportingPeriod": 238
				        }
				    ]
				}
				 */
				
//				Random random = new Random();
//				
//				DecimalFormat decimalFormat = new DecimalFormat("#.00");  
//				for(int i=1 ;i<=10;i++){
//					BalanceReport balance = new BalanceReport();
//					balance.setAccountId(i);
//					balance.setBalanceCredit(Double.parseDouble(decimalFormat.format( random.nextDouble())));
//					balance.setBalanceDebit(Double.parseDouble(decimalFormat.format( random.nextDouble())));
//					balance.setBalanceId(i);
//					balance.setBeginBalanceCredit(Double.parseDouble(decimalFormat.format( random.nextDouble())));
//					balance.setBeginBalanceDebit(Double.parseDouble(decimalFormat.format( random.nextDouble())));
//					balance.setEndBalanceCredit(Double.parseDouble(decimalFormat.format( random.nextDouble())));
//					balance.setEndBalanceDebit(Double.parseDouble(decimalFormat.format( random.nextDouble())));
//					if(i>5){
//						balance.setParentSubjectid(random.nextInt(5));
//					}else{
//						balance.setParentSubjectid(0);
//					}
//					
//					balance.setSubjectCode(i+"010010"+i);
//					balance.setSubjectId(i);
//					balance.setSubjectName("测试科目-0"+i);
//					list.add(balance);
//				}
				
				if(Boolean.parseBoolean(jsonObject.get("result").toString())||"true".equals(jsonObject.get("result"))){
					jsonReturn = jsonObject.get("dataInfo").toString();
				}
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		//String jsonReturn = JSONArray.fromObject(list).toString();	
		
		return jsonReturn;
	}
}
