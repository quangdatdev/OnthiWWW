package com.se.model;

public class CLNTPF {

	private String CLNTNUM;
	private String CLNTNAME;
	private String BIOFDATE;
	private String COUNTRY;
	private String ADDRESS;
	
	public CLNTPF() {
		// TODO Auto-generated constructor stub
	}
	public String getCLNTNUM() {
		return CLNTNUM;
	}
	public void setCLNTNUM(String cLNTNUM) {
		CLNTNUM = cLNTNUM;
	}
	public String getCLNTNAME() {
		return CLNTNAME;
	}
	public void setCLNTNAME(String cLNTNAME) {
		CLNTNAME = cLNTNAME;
	}
	public String getBIOFDATE() {
		return BIOFDATE;
	}
	public void setBIOFDATE(String bIOFDATE) {
		BIOFDATE = bIOFDATE;
	}
	public String getCOUNTRY() {
		return COUNTRY;
	}
	public void setCOUNTRY(String cOUNTRY) {
		COUNTRY = cOUNTRY;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public CLNTPF(String cLNTNUM, String cLNTNAME, String bIOFDATE, String cOUNTRY, String aDDRESS) {
		CLNTNUM = cLNTNUM;
		CLNTNAME = cLNTNAME;
		BIOFDATE = bIOFDATE;
		COUNTRY = cOUNTRY;
		ADDRESS = aDDRESS;
	}
	@Override
	public String toString() {
		return "CLNTPF [CLNTNUM=" + CLNTNUM + ", CLNTNAME=" + CLNTNAME + ", BIOFDATE=" + BIOFDATE + ", COUNTRY="
				+ COUNTRY + ", ADDRESS=" + ADDRESS + "]";
	}
	
	
}
