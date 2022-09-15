<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="Student_Management_System.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="font-weight: normal; " class="auto-style2"><em>Add New Student</em></h3>
    <div>
        <br />
        <table border="1">
            <tr>
                <td>Student First Name</td>
                <td>
                    <asp:TextBox ID="TxtStFname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Last Name</td>
                <td>
                    <asp:TextBox ID="TxtStLname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TxtStEmail" runat="server" TextMode="Email"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="TxtPhone" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Course Name</td>
                <td>
                    <asp:DropDownList ID="DDLCourseName" runat="server" AutoPostBack="True" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="Cname" OnSelectedIndexChanged="DDLCourseName_SelectedIndexChanged">
                        <asp:ListItem Value="0" Text="-- Select Course --"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString2 %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Course Fees</td>
                <td>
                    <asp:Label ID="LabCourseFees" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Fee Paid While Joining</td>
                <td>
                    <asp:TextBox ID="TxtCourseInstallment" runat="server" AutoPostBack="true" OnTextChanged="TxtCourseInstallment_TextChanged" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Fee Due</td>
                <td>
                    <asp:Label ID="LabDueFees" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Join Date</td>
                <td>
                    <asp:Literal ID="LitJoindate" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButStudent" runat="server" Text="Insert Record" OnClick="ButStudent_Click" /></td>
                <td>
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
        </table>
    </div>
    <br /><br /><br /><br /><br /><br /><br />
    <h2 style="font-weight: normal; font-size: x-small"><em>---You are Viewing Student Page---</em></h2>
</asp:Content>
