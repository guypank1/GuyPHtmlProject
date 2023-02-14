<%@ Page Title="התחברות" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GuyPHtmlProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            border: 1px solid red;
            margin: auto;
            border-collapse: collapse
        }

        td, th {
            border: 1px solid navy;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server"
    <table>
        <tr>
            <th></th>
            <th>טופס רישום</th>
            <th></th>
        </tr>

        <tr>
            <th>שם משתמש</th>
            <td><input type="text" name="uName" id="uName"</td>
            <td><input type="text" id="muName" size="50"
                style="display: none; background-color: silver; font-weight: bold;"
                disabled="disabled" />
            </td>
        </tr>
        <tr>
            <th>שם פרטי</th>
            <td><input type="text" name="fName" id="fName"</td>
            <td><input type="text" id="mfName" size="50"
                style="display: none; background-color: silver; font-weight: bold;"
                disabled="disabled" />
            </td>
        </tr>
        <tr>
            <th>שם משפחה</th>
             <td><input type="text" name="lName" id="lName"</td>
            <td><input type="text" id="mlName" size="50"
                style="display: none; background-color: silver; font-weight: bold;"
                disabled="disabled" />
        </tr>

        <tr>
            <th>דוא"ל</th>
            <td><input type="email" name="email" id="uName"</td>
            <td><input type="text" id="mEmail" size="50"
                style="display: none; background-color: silver; font-weight: bold;"
                disabled="disabled" />
        </tr>

        <tr>
            <th>מין</th>
            <th>RADIO</th>
            <th></th>
        </tr>

        <tr>
            <th>שנת לידה</th>
            <th>COMBO</th>
            <th></th>
        </tr>
        <tr>
            <th>ישוב מגורים</th>
            <th>COMBO</th>
            <th></th>
        </tr>
        <tr>
            <th>טלפון</th>
            <th>COMBO+Textbox+RedLabel</th>
            <th></th>
        </tr>
        <tr>
            <td>תחביבים</td>
            <td colspan="2">CheckBoxes span=2</td>
        </tr>
        <tr>
            <th>סיסמה</th>
            <th>INPUT+red label</th>
            <th>OUTPUT</th>
        </tr>
        <tr>
            <th>בדיקת סיסמה</th>
            <th>INPUT</th>
            <th></th>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td><br /></td>
            <td colspan="2" style="text-align: center;">
                <input type="submit" name="submit" value="   שלח   " />
                <input type="reset" />
            </td>
        </tr>
    </table>
        </form>
    <br />
    <%= st %>
</asp:Content>
