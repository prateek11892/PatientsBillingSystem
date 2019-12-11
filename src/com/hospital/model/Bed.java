package com.hospital.model;

public class Bed {
	
	private int bed_id;
	
	private int bed_no;
	
	public int getBed_id() {
		return bed_id;
	}

	public void setBed_id(int bed_id) {
		this.bed_id = bed_id;
	}

	public int getBed_no() {
		return bed_no;
	}

	public void setBed_no(int bed_no) {
		this.bed_no = bed_no;
	}

	public boolean checkAvailability() {
		
		return true;
	}

}
