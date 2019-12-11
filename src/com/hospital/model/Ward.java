package com.hospital.model;

import java.util.List;

public class Ward {

	private int wardId;
	
	private String wardType;
	
	private String wardNo;
	
	private int numberOfBeds;
	
	private int amount;
	
	private List<Bed> beds;
	
	public int getWardId() {
		return wardId;
	}
	
	public String getWardType() {
		return wardType;
	}

	public void setWardType(String wardType) {
		this.wardType = wardType;
	}

	public String getWardNo() {
		return wardNo;
	}

	public void setWardNo(String wardNo) {
		this.wardNo = wardNo;
	}

	public int getNumberOfBeds() {
		return numberOfBeds;
	}

	public void setNumberOfBeds(int numberOfBeds) {
		this.numberOfBeds = numberOfBeds;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public boolean registerWard(List<Bed> bedList) {
		setBeds(bedList);
		return true;
	}

	public List<Bed> getBeds() {
		return beds;
	}

	public void setBeds(List<Bed> beds) {
		this.beds = beds;
	}
}
