<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Student_Management_System.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url("/Images/E/Student.jpg");
            background-repeat:no-repeat;
        }
        .auto-style3 {
            border-style: groove;
            border-color: inherit;
            border-width: medium;
width: 476px;
            height: 179px;
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
        .auto-style7 {
            width: 501px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 class="auto-style6">Nexon Classes</h1>
                <br /><br /><br /><br />
                <table border="1" class="auto-style3">
                    <tr>
                        <td class="auto-style7">

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnAdminRedirect" runat="server" Height="39px" Text="Admin" Width="103px" Font-Names="Calibri" OnClick="BtnAdminRedirect_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnTeacher" runat="server" Height="39px" Text="Teacher" Width="103px" Font-Names="Calibri" OnClick="BtnTeacher_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnStudent" runat="server" Height="39px" Text="Student" Width="103px" Font-Names="Calibri" OnClick="BtnStudent_Click" />
&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
