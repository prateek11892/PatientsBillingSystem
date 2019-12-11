package com.hospital.model;

import com.hospital.database.DatabaseUtils;

public class Patient extends User {
	
	private String birthDate;
	
	private String admitDate;
	
	private String dischargeDate;
	
	private String bloodGroup;

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getAdmitDate() {
		return admitDate;
	}

	public void setAdmitDate(String admitDate) {
		this.admitDate = admitDate;
	}

	public String getDischargeDate() {
		return dischargeDate;
	}

	public void setDischargeDate(String dischargeDate) {
		this.dischargeDate = dischargeDate;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	
	public boolean registerPatient(Patient patient, int wardId) {
		boolean status = DatabaseUtils.registerPatient(patient, wardId);
		
		return status;
	}
}
