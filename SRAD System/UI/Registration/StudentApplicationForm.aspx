<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentApplicationForm.aspx.cs" Inherits="SRAD_System.UI.Registration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><strong>Student Registration</strong></h1></div>
        <h3>Personal Information</h3>&nbsp;<p>
            Full Name As in MyKad/Passport</p>
        <p>
            <asp:TextBox ID="Full_Name" runat="server"></asp:TextBox>
        </p>
        <p>
            Date of Birth</p>
        <p>
            <input type="date" id="dateofbirth"/>
        </p>
        <p>
            MyKad/Passport Number</p>
        <p>
            <asp:TextBox ID="C_ID" runat="server"></asp:TextBox>
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
            <asp:TextBox ID="_Address" runat="server"></asp:TextBox>
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
            Document&nbsp; Upload
        </div>
    <p>
        Please upload your document here</p>
    <p>
        Qualification Document</p>
        <p>
            <asp:FileUpload ID="Qualification" runat="server" />
        </p>
        <p>
            Photo</p>
        <p>
            <asp:FileUpload ID="Photo" runat="server" />
        </p>
        <p>
            Sponsor Letter</p>
        <p>
            <asp:FileUpload ID="SponsorLetter" runat="server" />
        </p>
        <p>
            IC image</p>
        <p>
            <asp:FileUpload ID="ICImage" runat="server" />
        </p>
        <p>
            Passport Image</p>
        <p>
            <asp:FileUpload ID="PassportImage" runat="server" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
        </p>
        <div style="font-weight: 700">
            <h1>Processing fee payment</h1>
        </div>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.maybank2u.com.my/WebBank/fpx_lg.jpg">Proceed using FPX</asp:HyperLink>
    </form>
</body>
</html>
