package com.se.model;

public class AGNTPF {

	private String CLNTNUM;
	private String AGNTNUM;
	private String AGNTNAME;
	private String EXPIDATE;
	private boolean CODUDATE;
	private String SERBRANCH;
	public String getCLNTNUM() {
		return CLNTNUM;
	}
	public void setCLNTNUM(String cLNTNUM) {
		CLNTNUM = cLNTNUM;
	}
	public String getAGNTNUM() {
		return AGNTNUM;
	}
	public void setAGNTNUM(String aGNTNUM) {
		AGNTNUM = aGNTNUM;
	}
	public String getAGNTNAME() {
		return AGNTNAME;
	}
	public void setAGNTNAME(String aGNTNAME) {
		AGNTNAME = aGNTNAME;
	}
	public String getEXPIDATE() {
		return EXPIDATE;
	}
	public void setEXPIDATE(String eXPIDATE) {
		EXPIDATE = eXPIDATE;
	}
	
	public boolean isCODUDATE() {
		return CODUDATE;
	}
	public void setCODUDATE(boolean cODUDATE) {
		CODUDATE = cODUDATE;
	}
	public String getSERBRANCH() {
		return SERBRANCH;
	}
	public void setSERBRANCH(String sERBRANCH) {
		SERBRANCH = sERBRANCH;
	}
	
	public AGNTPF() {
		// TODO Auto-generated constructor stub
	}
	public AGNTPF(String cLNTNUM, String aGNTNUM, String aGNTNAME, String eXPIDATE, boolean cODUDATE, String sERBRANCH) {
		super();
		CLNTNUM = cLNTNUM;
		AGNTNUM = aGNTNUM;
		AGNTNAME = aGNTNAME;
		EXPIDATE = eXPIDATE;
		CODUDATE = cODUDATE;
		SERBRANCH = sERBRANCH;
	}
	@Override
	public String toString() {
		return "AGNTPF [CLNTNUM=" + CLNTNUM + ", AGNTNUM=" + AGNTNUM + ", AGNTNAME=" + AGNTNAME + ", EXPIDATE="
				+ EXPIDATE + ", CODUDATE=" + CODUDATE + ", SERBRANCH=" + SERBRANCH + "]";
	}
	
	
	
}
