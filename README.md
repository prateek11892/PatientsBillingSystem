# Patient Billing System

Patient Billing System is a web application which allows to manage the recordbook from the patient's entry till the discharge of the patient from the hospital.

Features of Patient Billing System:
1.	Login into the system
2.	Registration of patient, admin and doctor
3.  Listing of all patients along with the admit date and the amount due
4.	Addition of tratment of a particular patient
5.	Payment Process
6.	Bill Generation
7.	Change Password
8.	Logout from the system

How to use the web application:
1.	Load the database from the dump into the mysql database
2.	Launch the project(loginScreen.jsp) file on the Apache Tomcat Server
3.	Login into the system - using the credentials for Admin(admin@gmail.com/asdf)
4.	After logging in, register a patient and corresponding ward id mapping.

				Ward Id				Ward Type
				1				General
				2				Private
				3				Private
				4				ICU
				5				ICU
5.	In order to see the list of patients, Click on List --> List All Patients
6.	The treatment can be added for a patient along with the treatment charges on the basis of the patient id. This can be done at Add Treatment option
7.	On the Make Payment option, the payment can be made for the due amount for the patient
8.	Register a doctor into the system upon new joining along with the expertise.
9.	Register other admin into the system
10.	To change password of the current logged in user, go to Change Password option
11.	To log out from the system, press Logout.
	
Technologies Used:
1.	Java
2.	Bootstrap
3.	JSP
4.	Servlets
5.	Apache Tomcat Server
6.	MySQL Database
