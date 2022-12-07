<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GuyPHtmlProject.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            border: 1px solid red;
            margin: auto;
            border-collapse: collapse;
        }

        td, th {
            border: 1px solid navy;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style ="width: 1px">
        <tr>
            <th></th>
            <th>טופס רישום</th>
            <th></th>
        </tr>

        <tr>
            <td>שם משתמש</td>
            <td>INPUT</td>
            <td>OUTPUT</td>
        </tr>

        <tr>
            <td>שם פרטי</td>
            <td>INPUT</td>
            <td>OUTPUT</td>
        </tr>

        <tr>
            <td>שם משפחה</td>
            <td>INPUT</td>
            <td>OUTPUT</td>
        </tr>

        <tr>
            <td>דוא"ל</td>
            <td>INPUT</td>
            <td>OUTPUT</td>
        </tr>

        <tr>
            <td>מין</td>
            <td>radio</td>
            <td></td>
        </tr>

          <tr>
            <td>שנת לידה</td>
            <td>COMBO</td>
            <td></td>
        </tr>

          <tr>
            <td>אזור מגורים</td>
            <td>COMBO</td>
            <td></td>
        </tr>

          <tr>
            <td>טלפון</td>
            <td>COMBO+TextBook+RedLabel</td>
            <td></td>
        </tr>

          <tr>
            <td>תחביבים</td>
            <td colspan="2">CheckBoxes span = 2</td>
        </tr>

          <tr>
            <td>סיסמא</td>
            <td>INPUT+red label</td>
            <td>OUTPUT</td>
        </tr>
        <tr>
            <td>בדיקת סיסמא</td>
            <td>INPUT</td>
            <td></td>
        </tr>
    </table>
</asp:Content>
