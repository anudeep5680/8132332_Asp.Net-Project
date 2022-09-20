<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="Student_Management_System.StudentHome" %>

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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnLogOut" runat="server" OnClick="BtnLogOut_Click" Text="LogOut" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br /><br />
            <asp:Label ID="LabMsg" runat="server" Font-Names="Microsoft Sans Serif" CssClass="auto-style3" ForeColor="Gray" style="font-size: x-large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="Red" Text="Your Details"></asp:Label>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">Stphone:
                    <asp:Label ID="StphoneLabel" runat="server" Text='<%# Eval("Stphone") %>' />
                    <br />
                    StEmail:
                    <asp:Label ID="StEmailLabel" runat="server" Text='<%# Eval("StEmail") %>' />
                    <br />
                    CourseFees:
                    <asp:Label ID="CourseFeesLabel" runat="server" Text='<%# Eval("CourseFees") %>' />
                    <br />
                    Coursejoin:
                    <asp:Label ID="CoursejoinLabel" runat="server" Text='<%# Eval("Coursejoin") %>' />
                    <br />
                    Firstinstallment:
                    <asp:Label ID="FirstinstallmentLabel" runat="server" Text='<%# Eval("Firstinstallment") %>' />
                    <br />
                    FeesDue:
                    <asp:Label ID="FeesDueLabel" runat="server" Text='<%# Eval("FeesDue") %>' />
                    <br />
                    Joindate:
                    <asp:Label ID="JoindateLabel" runat="server" Text='<%# Eval("Joindate") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">Stphone:
                    <asp:TextBox ID="StphoneTextBox" runat="server" Text='<%# Bind("Stphone") %>' />
                    <br />
                    StEmail:
                    <asp:TextBox ID="StEmailTextBox" runat="server" Text='<%# Bind("StEmail") %>' />
                    <br />
                    CourseFees:
                    <asp:TextBox ID="CourseFeesTextBox" runat="server" Text='<%# Bind("CourseFees") %>' />
                    <br />
                    Coursejoin:
                    <asp:TextBox ID="CoursejoinTextBox" runat="server" Text='<%# Bind("Coursejoin") %>' />
                    <br />
                    Firstinstallment:
                    <asp:TextBox ID="FirstinstallmentTextBox" runat="server" Text='<%# Bind("Firstinstallment") %>' />
                    <br />
                    FeesDue:
                    <asp:TextBox ID="FeesDueTextBox" runat="server" Text='<%# Bind("FeesDue") %>' />
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
                    <span style="">Stphone:
                    <asp:TextBox ID="StphoneTextBox" runat="server" Text='<%# Bind("Stphone") %>' />
                    <br />StEmail:
                    <asp:TextBox ID="StEmailTextBox" runat="server" Text='<%# Bind("StEmail") %>' />
                    <br />CourseFees:
                    <asp:TextBox ID="CourseFeesTextBox" runat="server" Text='<%# Bind("CourseFees") %>' />
                    <br />Coursejoin:
                    <asp:TextBox ID="CoursejoinTextBox" runat="server" Text='<%# Bind("Coursejoin") %>' />
                    <br />Firstinstallment:
                    <asp:TextBox ID="FirstinstallmentTextBox" runat="server" Text='<%# Bind("Firstinstallment") %>' />
                    <br />FeesDue:
                    <asp:TextBox ID="FeesDueTextBox" runat="server" Text='<%# Bind("FeesDue") %>' />
                    <br />Joindate:
                    <asp:TextBox ID="JoindateTextBox" runat="server" Text='<%# Bind("Joindate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">Stphone:
                    <asp:Label ID="StphoneLabel" runat="server" Text='<%# Eval("Stphone") %>' />
                    <br />
                    StEmail:
                    <asp:Label ID="StEmailLabel" runat="server" Text='<%# Eval("StEmail") %>' />
                    <br />
                    CourseFees:
                    <asp:Label ID="CourseFeesLabel" runat="server" Text='<%# Eval("CourseFees") %>' />
                    <br />
                    Coursejoin:
                    <asp:Label ID="CoursejoinLabel" runat="server" Text='<%# Eval("Coursejoin") %>' />
                    <br />
                    Firstinstallment:
                    <asp:Label ID="FirstinstallmentLabel" runat="server" Text='<%# Eval("Firstinstallment") %>' />
                    <br />
                    FeesDue:
                    <asp:Label ID="FeesDueLabel" runat="server" Text='<%# Eval("FeesDue") %>' />
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
                    <span style="">Stphone:
                    <asp:Label ID="StphoneLabel" runat="server" Text='<%# Eval("Stphone") %>' />
                    <br />
                    StEmail:
                    <asp:Label ID="StEmailLabel" runat="server" Text='<%# Eval("StEmail") %>' />
                    <br />
                    CourseFees:
                    <asp:Label ID="CourseFeesLabel" runat="server" Text='<%# Eval("CourseFees") %>' />
                    <br />
                    Coursejoin:
                    <asp:Label ID="CoursejoinLabel" runat="server" Text='<%# Eval("Coursejoin") %>' />
                    <br />
                    Firstinstallment:
                    <asp:Label ID="FirstinstallmentLabel" runat="server" Text='<%# Eval("Firstinstallment") %>' />
                    <br />
                    FeesDue:
                    <asp:Label ID="FeesDueLabel" runat="server" Text='<%# Eval("FeesDue") %>' />
                    <br />
                    Joindate:
                    <asp:Label ID="JoindateLabel" runat="server" Text='<%# Eval("Joindate") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString7 %>" SelectCommand="SELECT [Stphone], [StEmail], [CourseFees], [Coursejoin], [Firstinstallment], [FeesDue], [Joindate] FROM [student] WHERE ([Stfname] = @Stfname)">
                <SelectParameters>
                    <asp:SessionParameter Name="Stfname" SessionField="Student" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="Blue" Text="The Teacher for the respective registered Course"></asp:Label>
            <br />
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                <AlternatingItemTemplate>
                    <span style="">Tname:
                    <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                    <br />
                    Temail:
                    <asp:Label ID="TemailLabel" runat="server" Text='<%# Eval("Temail") %>' />
                    <br />
                    Tphone:
                    <asp:Label ID="TphoneLabel" runat="server" Text='<%# Eval("Tphone") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">Tname:
                    <asp:TextBox ID="TnameTextBox" runat="server" Text='<%# Bind("Tname") %>' />
                    <br />
                    Temail:
                    <asp:TextBox ID="TemailTextBox" runat="server" Text='<%# Bind("Temail") %>' />
                    <br />
                    Tphone:
                    <asp:TextBox ID="TphoneTextBox" runat="server" Text='<%# Bind("Tphone") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Tname:
                    <asp:TextBox ID="TnameTextBox" runat="server" Text='<%# Bind("Tname") %>' />
                    <br />Temail:
                    <asp:TextBox ID="TemailTextBox" runat="server" Text='<%# Bind("Temail") %>' />
                    <br />Tphone:
                    <asp:TextBox ID="TphoneTextBox" runat="server" Text='<%# Bind("Tphone") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">Tname:
                    <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                    <br />
                    Temail:
                    <asp:Label ID="TemailLabel" runat="server" Text='<%# Eval("Temail") %>' />
                    <br />
                    Tphone:
                    <asp:Label ID="TphoneLabel" runat="server" Text='<%# Eval("Tphone") %>' />
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
                    <span style="">Tname:
                    <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                    <br />
                    Temail:
                    <asp:Label ID="TemailLabel" runat="server" Text='<%# Eval("Temail") %>' />
                    <br />
                    Tphone:
                    <asp:Label ID="TphoneLabel" runat="server" Text='<%# Eval("Tphone") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString12 %>" SelectCommand="SELECT [Tname], [Temail], [Tphone] FROM [tutor] WHERE ([Tcourse] = @Tcourse)">
                <SelectParameters>
                    <asp:SessionParameter Name="Tcourse" SessionField="course" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            </center>
        </div>
    </form>
</body>
</html>