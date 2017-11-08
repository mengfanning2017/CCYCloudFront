package com.ccycloud.model;

/****
 * 余额表
 * @author mengfanning
 *
 */
public class BalanceReport {
	/***
	 * 科目编码
	 */
	private String subjectCode;
	/***
	 * 科目名称
	 */
	private String subjectName;
	/***
	 * 科目编号
	 */
	private int subjectId;
	/**
	 * 期初借方余额
	 */
	private double beginBalanceDebit;
	/***
	 * 期初贷方余额
	 */
	private double beginBalanceCredit;
	/***
	 * 当期借方余额
	 */
	private double balanceDebit;
	/***
	 * 当期贷方余额
	 */
	private double balanceCredit;
	/***
	 * 期末借方余额
	 */
	private double endBalanceDebit;
	/***
	 * 期末贷方余额
	 */
	private double endBalanceCredit;
	/***
	 * 账套编号
	 */
	private int accountId;
	/***
	 * 余额表编号
	 */
	private int balanceId;
	
	/***
	 * 上级科目编号
	 */
	private Integer parentSubjectid;
	
	
	
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	public double getBeginBalanceDebit() {
		return beginBalanceDebit;
	}
	public void setBeginBalanceDebit(double beginBalanceDebit) {
		this.beginBalanceDebit = beginBalanceDebit;
	}
	public double getBeginBalanceCredit() {
		return beginBalanceCredit;
	}
	public void setBeginBalanceCredit(double beginBalanceCredit) {
		this.beginBalanceCredit = beginBalanceCredit;
	}
	public double getBalanceDebit() {
		return balanceDebit;
	}
	public void setBalanceDebit(double balanceDebit) {
		this.balanceDebit = balanceDebit;
	}
	public double getBalanceCredit() {
		return balanceCredit;
	}
	public void setBalanceCredit(double balanceCredit) {
		this.balanceCredit = balanceCredit;
	}
	public double getEndBalanceDebit() {
		return endBalanceDebit;
	}
	public void setEndBalanceDebit(double endBalanceDebit) {
		this.endBalanceDebit = endBalanceDebit;
	}
	public double getEndBalanceCredit() {
		return endBalanceCredit;
	}
	public void setEndBalanceCredit(double endBalanceCredit) {
		this.endBalanceCredit = endBalanceCredit;
	}
	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public int getBalanceId() {
		return balanceId;
	}
	public void setBalanceId(int balanceId) {
		this.balanceId = balanceId;
	}
	public Integer getParentSubjectid() {
		return parentSubjectid;
	}
	public void setParentSubjectid(Integer parentSubjectid) {
		this.parentSubjectid = parentSubjectid;
	}

	
}
