package com.hospital.demo.payment;

public class Payment {

	private long payment_ref_id;
	
	private int paymentAmount;
	
	public int getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public void generateReceipt() {
		
	}
	
	public void updatePaymentInfo() {
		
	}
	
	public String getPaymentDetails() {
		return "";
	}
	
	public String makePayment() {
		return "";
	}
	
	public boolean confirmPayment() {
		
		return true;
	}
	
}
