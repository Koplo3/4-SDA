///////////////////////////////////////////////////////////
//  Faculty admission department staff.cs
//  Implementation of the Class Faculty admission department staff
//  Generated by Enterprise Architect
//  Created on:      02-Jan-2021 4:53:24 AM
//  Original author: ahmad
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Faculty admission department staff {

	private string email;
	private string facultyName;
	private string name;
	private int staffID;
	private string telNo;
	private Application m_Application;

	public Faculty admission department staff(){

	}

	~Faculty admission department staff(){

	}

	public Application Application{
		get{
			return m_Application;
		}
		set{
			m_Application = value;
		}
	}

	/// 
	/// <param name="application"></param>
	/// <param name="doc"></param>
	public void display(string application, string doc){

	}

	public void sendApplication(){

	}

	/// 
	/// <param name="message"></param>
	public void sendMessage(string message){

	}

}//end Faculty admission department staff