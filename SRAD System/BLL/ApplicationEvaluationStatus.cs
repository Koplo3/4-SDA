///////////////////////////////////////////////////////////
//  Application Evaluation Status.cs
//  Implementation of the Class Application Evaluation Status
//  Generated by Enterprise Architect
//  Created on:      02-Jan-2021 4:53:24 AM
//  Original author: ahmad
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using SRAD_System.DLL.DataSradTableAdapters;
using System.Data.SqlClient;
using System.Data;

public class ApplicationEvaluationStatus {

	private bool approvedBYFaculty;
	private bool approvedBySRAD;
	private DateTime facultyReviewStartDate;
	private string logFileName;
	private DateTime reviewDueDate;
	private DateTime sradEvaluationStartDate;

	public ApplicationEvaluationStatus(){

	}

	~ApplicationEvaluationStatus(){

	}

	public void acceptOffer(){

	}

	/// 
	/// <param name="agentID"></param>
	public void setApplication(int AppID){
		ApplicationEvaluationStatusTableAdapter eva = new ApplicationEvaluationStatusTableAdapter();
		DataTable value = eva.GetByApplicationID(AppID);
		approvedBYFaculty = (bool)value.Rows[0][0];
		approvedBySRAD = (bool)value.Rows[0][1];
		facultyReviewStartDate = DateTime.Parse(value.Rows[0][2].ToString());
		reviewDueDate = DateTime.Parse(eva.GetData().Rows[0][4].ToString());
		sradEvaluationStartDate = DateTime.Parse(eva.GetData().Rows[0][5].ToString());
	}

	/// 
	/// <param name="id"></param>
	public void getLog(int id){

	}

	///		
	/// <param name="id"></param>
	public int getStatus(){
		if (approvedBYFaculty == true && approvedBySRAD == false)
		{
			return 1;
		}
		else if (approvedBySRAD == true && approvedBYFaculty == true)
		{
			return 2;
		}
		else if (approvedBySRAD == false && approvedBYFaculty == false)
			return 0;
		else
			return 0;
	}

	public int getFacReviewed()
    {
		System.TimeSpan diff = reviewDueDate - facultyReviewStartDate;
		return int.Parse(diff.Days.ToString());
    }
	public int getSRADEvaluate()
	{
		System.TimeSpan diff = reviewDueDate - sradEvaluationStartDate;
		return int.Parse(diff.Days.ToString());
	}

	public void rejectOrder(){

	}

	/// 
	/// <param name="applicantID"></param>
	public void selection(int applicantID){

	}

	public void sendList(){

	}

	public void sendOfferLetter(){

	}

	public void sendStatus(){

	}

	public void storeData(){

	}

	/// 
	/// <param name="ID"></param>
	public void storeStatus(int ID){

	}
	public void storeSradStatus(bool ID)
    {
		approvedBySRAD = ID;
    }

}//end Application Evaluation Status