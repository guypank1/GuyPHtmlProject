<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GuyPHtmlProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/d96bb958-4e6c-4ce0-9447-fbe226fbbecf/dfiam72-0c8222b9-ecc0-4b44-a33e-0c2f56c6b02d.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
                    color: whitesmoke;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 align="center">כניסת משתמש</h1>
    <form name="loginFrm" id="loginFrm" method="post" runat="server">
        <br />
        <br>
        <table id="tablel" dir="rtl" align="center">
            <tr>
                <td>שם משתמש:</td>
                <td>
                    <input type="text" name="uName" /></td>
            </tr>
            <tr>
                <td>סיסמא:</td>
                <td>
                    <input type="password" name="pw" id="pw" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"></td>
                <td>
                    <input type="submit" name="submit" value="  התחבר  " />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
