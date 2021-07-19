<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicantMain.aspx.cs" Inherits="SRAD_System.UI.ApplicantMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Welcome to SRAD System (Student or Agent)</strong><p>
&nbsp;Pick a task</p>
            <ul>
                <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UI/Registration/StudentApplicationForm.aspx">Apply to study at UTM</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UI/ViewApplicationStatus.aspx?&cuser=0">View Application Status</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UI/Registration/AgentApplicationForm.aspx">Apply to become an Agent</asp:HyperLink></li>
            </ul>
        </p>
        <p>
            &nbsp;</p>
        </div>
    </form>
</body>
</html>
