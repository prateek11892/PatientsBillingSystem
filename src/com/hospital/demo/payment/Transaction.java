package com.hospital.demo.payment;

public class Transaction {

	private String transactionId;
	
	private String transactionDate;
	
	private String transactionAmount;

	public String getTransactionId() {
		return transactionId;
	}

	public String getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}

	public String getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(String transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}	
	
}
