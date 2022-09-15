<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="Student_Management_System.CoursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="auto-style2" style="font-weight: normal; "><em>Add New Course</em></h3>
<div>
        <br />
    <table border="1">
        <tr>
            <td>Course Name</td>
            <td>
                <asp:TextBox ID="TxtCoursename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Course Duration</td>
            <td>
                <asp:TextBox ID="TxtDuration" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Course Fees</td>
            <td>
                <asp:TextBox ID="TxtFees" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButCourse" runat="server" Text="Insert New Course" OnClick="ButCourse_Click" /></td>
            <td>
                <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
        </tr>
    </table>
        </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <h5><span style="font-weight: normal; font-size: small"><em>---You are Viewing Course Page---</em></span></h5>
</asp:Content>
