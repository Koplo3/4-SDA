<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStatistics.aspx.cs" Inherits="SRAD_System.UI.ViewStatistics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>View Statistics</h1>
            <h2>Agent</h2>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="AgentID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Joindate" HeaderText="Joindate" SortExpression="Joindate" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                        <asp:BoundField DataField="Yearlykpi" HeaderText="Yearlykpi" SortExpression="Yearlykpi" />
                        <asp:BoundField DataField="AgentID" HeaderText="AgentID" ReadOnly="True" SortExpression="AgentID" />
                    </Columns>
                </asp:GridView>
            </p>
            <h2>Applicant</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ApplicationID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Applicantaddress" HeaderText="Applicantaddress" SortExpression="Applicantaddress" />
                    <asp:BoundField DataField="Applicantemail" HeaderText="Applicantemail" SortExpression="Applicantemail" />
                    <asp:BoundField DataField="Applicantname" HeaderText="Applicantname" SortExpression="Applicantname" />
                    <asp:BoundField DataField="Applicanttelno" HeaderText="Applicanttelno" SortExpression="Applicanttelno" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:CheckBoxField DataField="Isdraft" HeaderText="Isdraft" SortExpression="Isdraft" />
                    <asp:BoundField DataField="Submitdate" HeaderText="Submitdate" SortExpression="Submitdate" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="ApplicationID" HeaderText="ApplicationID" SortExpression="ApplicationID" ReadOnly="True" />
                    <asp:BoundField DataField="SradStaffID" HeaderText="SradStaffID" SortExpression="SradStaffID" />
                    <asp:BoundField DataField="FacultyAdmissionDepartmentStaffID" HeaderText="FacultyAdmissionDepartmentStaffID" SortExpression="FacultyAdmissionDepartmentStaffID" />
                    <asp:BoundField DataField="ApplicationEvaluationStatusID" HeaderText="ApplicationEvaluationStatusID" SortExpression="ApplicationEvaluationStatusID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SRADConnectionString %>" SelectCommand="SELECT * FROM [Agent]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SRADConnectionString %>" SelectCommand="SELECT * FROM [Application]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
