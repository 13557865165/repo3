package com.cn.schoolAculty.Faculty.noAppointment;

public class NoAppointment {
	
	private Integer noAppointmentId;
	private String noAppointCode;
	private String noAppointName;
	private Integer noAppointSort;
	private boolean noAppointUse;
	private String noAppointRemarks;
	
	
	
	public NoAppointment() {
	}	
	public NoAppointment(Integer noAppointmentId, String noAppointCode,
			String noAppointName, Integer noAppointSort, boolean noAppointUse,
			String noAppointRemarks) {
		this.noAppointmentId = noAppointmentId;
		this.noAppointCode = noAppointCode;
		this.noAppointName = noAppointName;
		this.noAppointSort = noAppointSort;
		this.noAppointUse = noAppointUse;
		this.noAppointRemarks = noAppointRemarks;
	}
	public Integer getNoAppointmentId() {
		return noAppointmentId;
	}
	public void setNoAppointmentId(Integer noAppointmentId) {
		this.noAppointmentId = noAppointmentId;
	}
	public String getNoAppointCode() {
		return noAppointCode;
	}
	public void setNoAppointCode(String noAppointCode) {
		this.noAppointCode = noAppointCode;
	}
	public String getNoAppointName() {
		return noAppointName;
	}
	public void setNoAppointName(String noAppointName) {
		this.noAppointName = noAppointName;
	}
	public Integer getNoAppointSort() {
		return noAppointSort;
	}
	public void setNoAppointSort(Integer noAppointSort) {
		this.noAppointSort = noAppointSort;
	}
	public boolean isNoAppointUse() {
		return noAppointUse;
	}
	public void setNoAppointUse(boolean noAppointUse) {
		this.noAppointUse = noAppointUse;
	}
	public String getNoAppointRemarks() {
		return noAppointRemarks;
	}
	public void setNoAppointRemarks(String noAppointRemarks) {
		this.noAppointRemarks = noAppointRemarks;
	}
	
	
	

}
