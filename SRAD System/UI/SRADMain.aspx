<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SRADMain.aspx.cs" Inherits="SRAD_System.UI.SRADMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                SRAD Staff</div>
        <p class="auto-style1">
            Pick a task</p>
            <ul>
                <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UI/ViewApplicationStatus.aspx?&cuser=0">View application Status</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UI/ViewStatistics.aspx">View statistic</asp:HyperLink></li>
            </ul>
        </div>
    </form>
</body>
</html>
