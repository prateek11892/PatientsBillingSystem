Patient Billing System is a web application which allows to manage the recordbook from the patient's entry till the discharge of the patient from the hospital.

Features of Patient Billing System:
	* Login into the system
	* Registration of patient, admin and doctor
	* Listing of all patients along with the admit date and the amount due
	* Addition of tratment of a particular patient
	* Payment Process
	* Bill Generation
	* Change Password
	* Logout from the system

How to use the web application:
	* Load the database from the dump into the mysql database
	* Launch the project(loginScreen.jsp) file on the Apache Tomcat Server
	* Login into the system - using the credentials for Admin(admin@gmail.com/asdf)
	* After logging in, register a patient and corresponding ward id
			Ward Id		Ward Type
			1			General
			2			Private
			3			Private
			4			ICU
			5			ICU
	* In order to see the list of patients, Click on List --> List All Patients
	* The treatment can be added for a patient along with the treatment charges on the basis of the patient id. This can be done at Add Treatment option
	* On the Make Payment option, the payment can be made for the due amount for the patient
	* Register a doctor into the system upon new joining along with the expertise.
	* Register other admin into the system
	* To change password of the current logged in user, go to Change Password option
	* To log out from the system, press Logout.
	
Technologies Used:
	* Java
	* Bootstrap
	* JSP
	* Servlets
	* Apache Tomcat Server
	* MySQL Database