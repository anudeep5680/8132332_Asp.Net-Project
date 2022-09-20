<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="Student_Management_System.TeacherHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url("Images/E/Images/Master.png");
            background-repeat:no-repeat;
        }
        .auto-style1 {
            height: 35px;
            text-decoration: underline;
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <h1 class="auto-style1"><em class="newStyle6">Nexon Classes</em></h1>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnLogout" runat="server" OnClick="BtnLogout_Click" Text="LogOut" />
        <br /><br /><br /><br />
            <asp:Label ID="LabMsg" runat="server" Font-Names="Microsoft Sans Serif" CssClass="auto-style3" ForeColor="Gray" style="font-size: x-large"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">Tphone:
                    <asp:Label ID="TphoneLabel" runat="server" Text='<%# Eval("Tphone") %>' />
                    <br />
                    Temail:
                    <asp:Label ID="TemailLabel" runat="server" Text='<%# Eval("Temail") %>' />
                    <br />
                    Tcourse:
                    <asp:Label ID="TcourseLabel" runat="server" Text='<%# Eval("Tcourse") %>' />
                    <br />
                    Tqualification:
                    <asp:Label ID="TqualificationLabel" runat="server" Text='<%# Eval("Tqualification") %>' />
                    <br />
                    Joindate:
                    <asp:Label ID="JoindateLabel" runat="server" Text='<%# Eval("Joindate") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">Tphone:
                    <asp:TextBox ID="TphoneTextBox" runat="server" Text='<%# Bind("Tphone") %>' />
                    <br />
                    Temail:
                    <asp:TextBox ID="TemailTextBox" runat="server" Text='<%# Bind("Temail") %>' />
                    <br />
                    Tcourse:
                    <asp:TextBox ID="TcourseTextBox" runat="server" Text='<%# Bind("Tcourse") %>' />
                    <br />
                    Tqualification:
                    <asp:TextBox ID="TqualificationTextBox" runat="server" Text='<%# Bind("Tqualification") %>' />
                    <br />
                    Joindate:
                    <asp:TextBox ID="JoindateTextBox" runat="server" Text='<%# Bind("Joindate") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Tphone:
                    <asp:TextBox ID="TphoneTextBox" runat="server" Text='<%# Bind("Tphone") %>' />
                    <br />Temail:
                    <asp:TextBox ID="TemailTextBox" runat="server" Text='<%# Bind("Temail") %>' />
                    <br />Tcourse:
                    <asp:TextBox ID="TcourseTextBox" runat="server" Text='<%# Bind("Tcourse") %>' />
                    <br />Tqualification:
                    <asp:TextBox ID="TqualificationTextBox" runat="server" Text='<%# Bind("Tqualification") %>' />
                    <br />Joindate:
                    <asp:TextBox ID="JoindateTextBox" runat="server" Text='<%# Bind("Joindate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">Tphone:
                    <asp:Label ID="TphoneLabel" runat="server" Text='<%# Eval("Tphone") %>' />
                    <br />
                    Temail:
                    <asp:Label ID="TemailLabel" runat="server" Text='<%# Eval("Temail") %>' />
                    <br />
                    Tcourse:
                    <asp:Label ID="TcourseLabel" runat="server" Text='<%# Eval("Tcourse") %>' />
                    <br />
                    Tqualification:
                    <asp:Label ID="TqualificationLabel" runat="server" Text='<%# Eval("Tqualification") %>' />
                    <br />
                    Joindate:
                    <asp:Label ID="JoindateLabel" runat="server" Text='<%# Eval("Joindate") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">Tphone:
                    <asp:Label ID="TphoneLabel" runat="server" Text='<%# Eval("Tphone") %>' />
                    <br /><br />
                    Temail:
                    <asp:Label ID="TemailLabel" runat="server" Text='<%# Eval("Temail") %>' />
                    <br /><br />
                    Tcourse:
                    <asp:Label ID="TcourseLabel" runat="server" Text='<%# Eval("Tcourse") %>' />
                    <br /><br />
                    Tqualification:
                    <asp:Label ID="TqualificationLabel" runat="server" Text='<%# Eval("Tqualification") %>' />
                    <br /><br />
                    Joindate:
                    <asp:Label ID="JoindateLabel" runat="server" Text='<%# Eval("Joindate") %>' />
                    <br /><br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString8 %>" SelectCommand="SELECT [Tphone], [Temail], [Tcourse], [Tqualification], [Joindate] FROM [tutor] WHERE ([Tname] = @Tname)">
                <SelectParameters>
                    <asp:SessionParameter Name="Tname" SessionField="Teacher" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            </center>
        </div>
    </form>
</body>
</html>
