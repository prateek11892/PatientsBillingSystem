package com.hospital.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.hospital.demo.payment.Transaction;
import com.hospital.model.Admin;
import com.hospital.model.Doctor;
import com.hospital.model.Patient;

public class DatabaseUtils {

	public static String getCurrentDate() {
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		Date todayDate = new Date();
		String date = formatter.format(todayDate);
		return date;
	}

	public static int getWardAmount(int wardId) {

		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");
		String wardAmountQuery = "SELECT numberofbeds,wardamount FROM ward WHERE ward_id = " + wardId;
		Statement stmt;
		int perBedAmount = 0;
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(wardAmountQuery);
			int numberofbeds = 0;
			int wardamount = 0;
			while (rs.next()) {
				numberofbeds = rs.getInt(1);
				wardamount = rs.getInt(2);
			}
			perBedAmount = wardamount / numberofbeds;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return perBedAmount;
	}

	public static boolean registerPatient(Patient patient, int wardId) {

		boolean status = false;
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		int i;
		try {

			int perBedAmount = getWardAmount(wardId);

			PreparedStatement preparedStatement = con.prepareStatement(
					"insert into user(email,firstname,lastname, password, registerdate,address,phoneno,role) values(?,?,?,?,?,?,?,?)");

			preparedStatement.setString(1, patient.getEmail());
			preparedStatement.setString(2, patient.getFirstName());
			preparedStatement.setString(3, patient.getLastName());
			preparedStatement.setString(4, patient.getPassword());
			preparedStatement.setString(5, patient.getRegisterDate());
			preparedStatement.setString(6, patient.getAddress());
			preparedStatement.setString(7, patient.getPhoneNum());
			preparedStatement.setString(8, "Patient");

			i = preparedStatement.executeUpdate();

			if (i > 0)
				status = true;
			else
				status = false;

			if (status == true) {
				preparedStatement = con.prepareStatement("select userid from user where email = ?");
				preparedStatement.setString(1, patient.getEmail());

				ResultSet rs = preparedStatement.executeQuery();
				rs.next();
				String userid = rs.getString(1);

				preparedStatement = con.prepareStatement(
						"insert into patient(patientid, birthdate, admitdate, dischargedate, bloodgroup, amountdue) values(?,?,?,?,?,?)");
				preparedStatement.setString(1, userid);
				preparedStatement.setString(2, patient.getBirthDate());
				preparedStatement.setString(3, patient.getAdmitDate());
				preparedStatement.setString(4, patient.getDischargeDate());
				preparedStatement.setString(5, patient.getBloodGroup());
				preparedStatement.setInt(6, perBedAmount);

				i = preparedStatement.executeUpdate();

				if (i > 0)
					status = true;
				else
					status = false;

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	public static boolean registerDoctor(Doctor doctor) {

		boolean status = false;
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		int i;
		try {
			PreparedStatement preparedStatement = con.prepareStatement(
					"insert into user(email,firstname,lastname, password, registerdate,address,phoneno,role) values(?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, doctor.getEmail());
			preparedStatement.setString(2, doctor.getFirstName());
			preparedStatement.setString(3, doctor.getLastName());
			preparedStatement.setString(4, doctor.getPassword());
			preparedStatement.setString(5, doctor.getRegisterDate());
			preparedStatement.setString(6, doctor.getAddress());
			preparedStatement.setString(7, doctor.getPhoneNum());
			preparedStatement.setString(8, "Doctor");

			i = preparedStatement.executeUpdate();

			if (i > 0)
				status = true;
			else
				status = false;

			if (status == true) {
				preparedStatement = con.prepareStatement("select userid from user where email = ?");
				preparedStatement.setString(1, doctor.getEmail());

				ResultSet rs = preparedStatement.executeQuery();
				rs.next();
				String userid = rs.getString(1);

				preparedStatement = con.prepareStatement("insert into doctor(doctorid,expertise) values(?,?)");
				preparedStatement.setString(1, userid);
				preparedStatement.setString(2, doctor.getExpertise());

				i = preparedStatement.executeUpdate();

				if (i > 0)
					status = true;
				else
					status = false;

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	public static boolean registerAdmin(Admin admin) {

		boolean status = false;
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		int i;
		try {
			PreparedStatement preparedStatement = con.prepareStatement(
					"insert into user(email,firstname,lastname, password, registerdate,address,phoneno,role) values(?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, admin.getEmail());
			preparedStatement.setString(2, admin.getFirstName());
			preparedStatement.setString(3, admin.getLastName());
			preparedStatement.setString(4, admin.getPassword());
			preparedStatement.setString(5, admin.getRegisterDate());
			preparedStatement.setString(6, admin.getAddress());
			preparedStatement.setString(7, admin.getPhoneNum());
			preparedStatement.setString(8, "Admin");

			i = preparedStatement.executeUpdate();

			if (i > 0)
				status = true;
			else
				status = false;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	public static ResultSet getAllPatientsData() {

		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		ResultSet rs = null;
		try {
			Statement stmt = con.createStatement();

			String query = "SELECT user.userid,user.firstname,user.lastname,user.registerdate,user.address,user.phoneno,"
					+ "patient.birthdate,patient.admitdate,patient.dischargedate,patient.bloodgroup,patient.amountdue FROM user, patient "
					+ "WHERE user.userid=patient.patientid AND user.role='Patient'";

			rs = stmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs;
	}

	public static boolean addTreatment(int patientId, String treatment, int wardId, int treatmentCharges) {

		boolean status = false;
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		int i;
		try {
			PreparedStatement preparedStatement = con
					.prepareStatement("insert into treatment(patientid,typeoftreatment,ward_id) values(?,?,?)");
			preparedStatement.setInt(1, patientId);
			preparedStatement.setString(2, treatment);
			preparedStatement.setInt(3, wardId);

			i = preparedStatement.executeUpdate();

			if (i > 0)
				status = true;
			else
				status = false;

			int perBedAmount = getWardAmount(wardId);
			int totalAmount = perBedAmount + treatmentCharges;
			Statement stmt = con.createStatement();

			String updateQuery = "update patient set amountdue = amountdue + " + totalAmount + " where patientid = "
					+ patientId + "";
			System.out.println(updateQuery);
			i = stmt.executeUpdate(updateQuery);
			if (i > 0)
				status = true;
			else
				status = false;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;

	}

	public static boolean initiateTransaction(Transaction transaction, int patientId) {

		boolean status = false;
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		int i;
		try {
			PreparedStatement preparedStatement = con.prepareStatement(
					"update transaction set patientid = ?,transactionamount = ? , transactionstatus = ? WHERE  transactionId = ?");

			preparedStatement.setInt(1, patientId);
			preparedStatement.setString(2, transaction.getTransactionAmount());
			preparedStatement.setString(3, "Paid");
			preparedStatement.setString(4, transaction.getTransactionId());

			i = preparedStatement.executeUpdate();

			if (i > 0)
				status = true;
			else
				status = false;

			if (status == true) {
				preparedStatement = con
						.prepareStatement("update patient set amountdue = amountdue - ? where patientid = ?");
				preparedStatement.setString(1, transaction.getTransactionAmount());
				preparedStatement.setInt(2, patientId);

				i = preparedStatement.executeUpdate();

				if (i > 0)
					status = true;
				else
					status = false;

				if (status == true) {
					preparedStatement = con.prepareStatement("SELECT amountdue FROM patient WHERE patientid = ?");
					preparedStatement.setInt(1, patientId);
					ResultSet rs = preparedStatement.executeQuery();

					rs.next();
					int amountdue = rs.getInt(1);

					if (amountdue <= 0) {
						String date = getCurrentDate();
						preparedStatement = con
								.prepareStatement("update patient set dischargedate = ? where patientid = ?");
						preparedStatement.setString(1, date);
						preparedStatement.setInt(2, patientId);
						i = preparedStatement.executeUpdate();

						if (i > 0)
							status = true;
						else
							status = false;

					}
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	public static Transaction insertTransaction() {

		boolean status = false;
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");
		int i;
		Transaction transaction = new Transaction();
		try {
			String date = getCurrentDate();

			PreparedStatement preparedStatement = con
					.prepareStatement("INSERT INTO transaction(transactiondate,transactionstatus) values(?,?)");
			preparedStatement.setString(1, date);
			preparedStatement.setString(2, "Pending");

			i = preparedStatement.executeUpdate();

			if (i > 0)
				status = true;
			else
				status = false;

			if (status == true) {
				preparedStatement = con.prepareStatement(
						"SELECT transactionid,transactiondate FROM transaction ORDER BY transactionid desc LIMIT 1");

				ResultSet rs = preparedStatement.executeQuery();
				rs.next();
				transaction.setTransactionId(rs.getString(1));
				transaction.setTransactionDate(rs.getString(2));
			}
		} catch (Exception ex) {

		}

		return transaction;
	}

	public static ResultSet fetchPatientDetails(String transactionId, int patientId) {
		
		Connection con = null;

		con = DatabaseConnection.getConnection("user", "root", "admin");

		ResultSet rs = null;
		try {
			Statement stmt = con.createStatement();

			String query = "SELECT patient.patientid,user.firstname,user.lastname,"
					+ "patient.admitdate,patient.dischargedate,transaction.transactionid,transaction.transactiondate,"
					+ "transaction.transactionamount,transaction.transactionStatus FROM user, patient, transaction "
					+ "WHERE user.userid=patient.patientid AND patient.patientid = transaction.patientid AND transaction.transactionid = "+transactionId
					+ " AND user.role='Patient'";

			rs = stmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs;
	}
}
