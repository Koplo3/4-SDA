<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgentApplicationForm.aspx.cs" Inherits="SRAD_System.UI.Registration.AgentApplicationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><strong>Agent Registration</strong></h1></div>
        <h3>Personal Information</h3>
        <p>
            Full Name As in MyKad/Passport</p>
        <p>
            <asp:TextBox ID="Full_Name" runat="server" ></asp:TextBox>
        </p>
        <p>
            Date of Birth</p>
        <p>
            <input type="date" id="dateofbirth"/>
        </p>
        <p>
            MyKad/Passport Number</p>
        <p>
            <asp:TextBox ID="C_ID" runat="server" ></asp:TextBox>
        </p>
        <p>
            Country of Birth</p>
        <p>
            <asp:TextBox ID="Country_Of_Birth" runat="server"></asp:TextBox>
        </p>
        <p>
            Gender</p>
        <p>
            <asp:TextBox ID="_Gender" runat="server"></asp:TextBox>
        </p>
        <p>
            Nationality</p>
        <p>
            <asp:TextBox ID="_Nationality" runat="server"></asp:TextBox>
        </p>
        <p>
            Marital Status</p>
        <p>
            <asp:TextBox ID="Marital_Status" runat="server"></asp:TextBox>
        </p>
        <p>
            Religion</p>
        <p>
            <asp:TextBox ID="_Religion" runat="server"></asp:TextBox>
        </p>
        <p>
            Contact Info</p>
        <p>
            -&gt; Correspondence Address</p>
        <p>
            <asp:TextBox ID="C_Address" runat="server"></asp:TextBox>
        </p>
        <p>
            -&gt; Postcode</p>
        <p>
            <asp:TextBox ID="Post_code" runat="server"></asp:TextBox>
        </p>
        <p>
            -&gt; Phone Number</p>
        <p>
            <asp:TextBox ID="Phone_Number" runat="server"></asp:TextBox>
        </p>
        <p>
            -&gt; Email</p>
        <p>
            <asp:TextBox ID="E_mail" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />
        <div style="font-weight: 700">
            Company Document&nbsp; Upload
        </div>
        <p>
            Please upload your company's profile here</p>
        <p>
            <asp:FileUpload ID="CompanyProfile" runat="server" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
        </p>
        
    </form>
    </body>
</html>
