<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="Student_Management_System.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url("/Images/E/Student.jpg");
            background-repeat:no-repeat;
        }
        .auto-style1 {
            height: 35px;
        }
        .auto-style3 {
            border-style: groove;
            border-color: inherit;
            border-width: medium;
width: 462px;
            height: 175px;
            }
        .auto-style4 {
            width: 153px;
        }
        .auto-style5 {
            height: 35px;
            width: 153px;
        }
        .newStyle1 {
            font-family: Garamond;
            font-size: xx-large;
            font-weight: bold;
            font-style: normal;
            text-transform: none;
            color: #000000;
            line-height: normal;
            text-align: center;
        }
        .newStyle2 {
            font-family: Garamond;
        }
        .auto-style6 {
            font-size: xx-large;
            font-weight: initial;
            font-style: italic;
            text-transform: none;
            color: #000000;
            line-height: normal;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 class="auto-style6">Nexon Classes</h1>
                <br /><br />
                <div>
                    <br /><br /><br />
                    <table border="1" class="auto-style3">
                        <tr>
                            <td class="newStyle2"><strong>Student User Id<br />
                                </strong>(User Id is your First name)</td>
                            <td class="newStyle2">
                                <asp:TextBox ID="TxtStdId" runat="server" Width="204px"></asp:TextBox></td>
                        </tr>
                        <tr class="newStyle2">
                            <td><strong>Password<br />
                                </strong>(Password is your Phone number)</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TxtPwdStd" runat="server" TextMode="Password" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="newStyle2">
                            <td class="auto-style1">
                                <asp:Button ID="ButLogin" runat="server" Text="Login" OnClick="ButLogin_Click" Width="89px"/>
                            </td>
                            <td class="auto-style5">
                                &nbsp;
                                <asp:Label ID="Labmsg" runat="server" ForeColor="#FF5050" Font-Names="Century Gothic"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </center>
        </div>
    </form>
</body>
</html>
