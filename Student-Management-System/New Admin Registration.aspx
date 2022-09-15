<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New Admin Registration.aspx.cs" Inherits="Student_Management_System.New_Admin_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url("Images/E/Images/Student.jpg");
            background-repeat:no-repeat;
        }
        .auto-style1 {
            width: 465px;
            height: 173px;
            border-color:black;
        }
        .newStyle2 {
            font-family: Garamond;
        }
        .auto-style2 {
            width: 164px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-weight: normal;
            text-decoration: underline;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 class:"auto-style6" class="auto-style3"><em>Nexon Classes</em></h1>
                <p class:"auto-style6" class="auto-style3">&nbsp;</p>
            <h2 class="auto-style4">&nbsp;<em>Admin Registration</em></h2>
                <br />
                    <table border="1"; class="auto-style1">
                        <tr>
                            <td class="newStyle2"><strong>New Admin User ID</strong></td>
                            <td class="auto-style2">
                                <asp:RequiredFieldValidator ID="reqfieldnewUserID" runat="server" ErrorMessage="Please, Enter Valid User Id" ValidationGroup="NewCredentials" ControlToValidate="TxtNewUserID" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TxtNewUserID" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="newStyle2"> <strong>Admin Password</strong></td>
                            <td class="auto-style2">
                                <asp:RequiredFieldValidator ID="reqfieldnewPwd" runat="server" ErrorMessage="Please, Enter Valid Password" ValidationGroup="NewCredentials" ControlToValidate="TxtNewUserPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TxtNewUserPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="newStyle2"><strong>Confirm New Admin Password</strong></td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TxtNewUserPwdConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
                            
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ButRegister" runat="server" Text="Register" OnClick="ButRegister_Click" ValidationGroup="NewCredentials" /></td>
                            <td class="auto-style2">
                                <asp:Label ID="Labmsg" runat="server" ForeColor="Red"></asp:Label></td>
                        </tr>
                    </table>
            </center>
        </div>
    </form>
</body>
</html>
