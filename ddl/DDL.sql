/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.1 		*/
/*  Created On : 21-Dec-2020 11:41:56 PM 				*/
/*  DBMS       : SQL Server 2008 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Application_evaluate]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Application] DROP CONSTRAINT [FK_Application_evaluate]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Application_review]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Application] DROP CONSTRAINT [FK_Application_review]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Application_have]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Application] DROP CONSTRAINT [FK_Application_have]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Prospective agent application_Application]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ProspectiveAgentApplication] DROP CONSTRAINT [FK_Prospective agent application_Application]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Prospective student application_represent]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ProspectiveStudentApplication] DROP CONSTRAINT [FK_Prospective student application_represent]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Prospective student application_Application]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ProspectiveStudentApplication] DROP CONSTRAINT [FK_Prospective student application_Application]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Agent]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Agent]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Application]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Application]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ApplicationEvaluationStatus]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ApplicationEvaluationStatus]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FacultyAdmissionDepartmentStaff]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [FacultyAdmissionDepartmentStaff]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ProspectiveAgentApplication]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ProspectiveAgentApplication]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ProspectiveStudentApplication]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ProspectiveStudentApplication]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[SradStaff]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [SradStaff]
GO

/* Create Tables */

CREATE TABLE [Agent]
(
	[Email] varchar(50),
	[Id] int,
	[Joindate] Date,
	[Name] varchar(50),
	[Telephone] varchar(50),
	[Yearlykpi] real,
	[AgentID] Integer NOT NULL AUTO_INCREMENT
)
GO

CREATE TABLE [Application]
(
	[Applicantaddress] varchar(50),
	[Applicantemail] varchar(50),
	[Applicantname] varchar(50),
	[Applicanttelno] varchar(50),
	[Id] int,
	[Isdraft] bit,
	[Submitdate] date,
	[Type] varchar(50),
	[ApplicationID] Integer NOT NULL AUTO_INCREMENT,
	[SradStaffID] Integer,
	[FacultyAdmissionDepartmentStaffID] Integer,
	[ApplicationEvaluationStatusID] Integer NOT NULL
)
GO

CREATE TABLE [ApplicationEvaluationStatus]
(
	[Approvedbyfaculty] bit,
	[Approvedbysrad] bit,
	[Facultyreviewstartdate] Date,
	[Logfilename] varchar(50),
	[Reviewduedate] Date,
	[Sradevaluationstartdate] Date,
	[ApplicationEvaluationStatusID] Integer NOT NULL AUTO_INCREMENT
)
GO

CREATE TABLE [FacultyAdmissionDepartmentStaff]
(
	[Email] varchar(50),
	[Facultyname] varchar(50),
	[Name] varchar(50),
	[Staffid] int,
	[Telno] varchar(50),
	[FacultyAdmissionDepartmentStaffID] Integer NOT NULL AUTO_INCREMENT
)
GO

CREATE TABLE [ProspectiveAgentApplication]
(
	[Applicationformfilename] varchar(50),
	[Companyprofile] varchar(50),
	[ProspectiveAgentApplicationID] Integer NOT NULL AUTO_INCREMENT
)
GO

CREATE TABLE [ProspectiveStudentApplication]
(
	[Applicationformfilename] varchar(50),
	[Ic_imagefilename] varchar(50),
	[Intakecategory] varchar(50),
	[Passport_imagefilename] varchar(50),
	[Photofilename] varchar(50),
	[Qualificationdocumentname] varchar(50),
	[Sponsorletterfilename] varchar(50),
	[ProspectiveStudentApplicationID] Integer NOT NULL AUTO_INCREMENT,
	[AgentID] Integer
)
GO

CREATE TABLE [SradStaff]
(
	[Email] varchar(50),
	[Name] varchar(50),
	[Staffid] int,
	[Telno] varchar(50),
	[SradStaffID] Integer NOT NULL AUTO_INCREMENT
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [Agent] 
 ADD CONSTRAINT [PK_Agent]
	PRIMARY KEY CLUSTERED ([AgentID] ASC)
GO

ALTER TABLE [Application] 
 ADD CONSTRAINT [PK_Application]
	PRIMARY KEY CLUSTERED ([ApplicationID] ASC)
GO

ALTER TABLE [ApplicationEvaluationStatus] 
 ADD CONSTRAINT [PK_ApplicationEvaluationStatus]
	PRIMARY KEY CLUSTERED ([ApplicationEvaluationStatusID] ASC)
GO

ALTER TABLE [FacultyAdmissionDepartmentStaff] 
 ADD CONSTRAINT [PK_FacultyAdmissionDepartmentStaff]
	PRIMARY KEY CLUSTERED ([FacultyAdmissionDepartmentStaffID] ASC)
GO

ALTER TABLE [ProspectiveAgentApplication] 
 ADD CONSTRAINT [PK_ProspectiveAgentApplication]
	PRIMARY KEY CLUSTERED ([ProspectiveAgentApplicationID] ASC)
GO

ALTER TABLE [ProspectiveStudentApplication] 
 ADD CONSTRAINT [PK_ProspectiveStudentApplication]
	PRIMARY KEY CLUSTERED ([ProspectiveStudentApplicationID] ASC)
GO

ALTER TABLE [SradStaff] 
 ADD CONSTRAINT [PK_SradStaff]
	PRIMARY KEY CLUSTERED ([SradStaffID] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [Application] ADD CONSTRAINT [FK_Application_evaluate]
	FOREIGN KEY ([SradStaffID]) REFERENCES [SradStaff] ([SradStaffID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Application] ADD CONSTRAINT [FK_Application_review]
	FOREIGN KEY ([FacultyAdmissionDepartmentStaffID]) REFERENCES [FacultyAdmissionDepartmentStaff] ([FacultyAdmissionDepartmentStaffID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Application] ADD CONSTRAINT [FK_Application_have]
	FOREIGN KEY ([ApplicationEvaluationStatusID]) REFERENCES [ApplicationEvaluationStatus] ([ApplicationEvaluationStatusID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ProspectiveAgentApplication] ADD CONSTRAINT [FK_Prospective agent application_Application]
	FOREIGN KEY ([ProspectiveAgentApplicationID]) REFERENCES [Application] ([ApplicationID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ProspectiveStudentApplication] ADD CONSTRAINT [FK_Prospective student application_represent]
	FOREIGN KEY ([AgentID]) REFERENCES [Agent] ([AgentID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ProspectiveStudentApplication] ADD CONSTRAINT [FK_Prospective student application_Application]
	FOREIGN KEY ([ProspectiveStudentApplicationID]) REFERENCES [Application] ([ApplicationID]) ON DELETE No Action ON UPDATE No Action
GO
