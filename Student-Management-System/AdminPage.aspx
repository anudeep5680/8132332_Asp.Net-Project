﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Student_Management_System.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-weight: normal; " class="auto-style2"><em>Enter Your Choice</em></h2>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="0" Text="-- Select Choice --"></asp:ListItem>
        <asp:ListItem>Coursetable</asp:ListItem>
        <asp:ListItem>student</asp:ListItem>
        <asp:ListItem>tutor</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="ButSubmit" runat="server" Text="Submit" OnClick="ButSubmit_Click" />
    <br />
<br /><br />
    <asp:GridView ID="GdCourse" runat="server" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" DataKeyNames="Cid" OnRowDeleting="GdCourse_RowDeleting" OnRowCancelingEdit="GdCourse_RowCancelingEdit" OnRowEditing="GdCourse_RowEditing" OnRowUpdating="GdCourse_RowUpdating" Font-Names="Century Gothic" Font-Size="X-Large" style="font-size: medium" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" Font-Names="Century Gothic" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:GridView ID="GdStudent" runat="server" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" DataKeyNames="Stid" OnRowCancelingEdit="GdStudent_RowCancelingEdit" OnRowDeleting="GdStudent_RowDeleting" OnRowEditing="GdStudent_RowEditing" OnRowUpdating="GdStudent_RowUpdating" Font-Names="Century Gothic" Font-Size="X-Large" style="font-size: medium" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Ridge" Font-Names="Century Gothic" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:GridView ID="GdTutor" runat="server" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" DataKeyNames="Tid" OnRowCancelingEdit="GdTutor_RowCancelingEdit" OnRowDeleting="GdTutor_RowDeleting" OnRowEditing="GdTutor_RowEditing" OnRowUpdating="GdTutor_RowUpdating" Font-Names="Century Gothic" Font-Size="X-Large" BackColor="White" BorderStyle="Solid" BorderWidth="1px" style="font-size: medium" BorderColor="#999999" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Ridge" Font-Names="Century Gothic" />
        <FooterStyle BackColor="#CCCCCC" BorderStyle="Solid" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <h5><span style="font-weight: normal; font-size: small"><em>---You are Viewing Admin Page---</em></span></h5>
</asp:Content>
