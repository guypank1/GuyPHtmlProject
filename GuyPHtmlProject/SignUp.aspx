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
    <form method="post" runat="server" onsubmit="return chkForm();">
    <table style ="width: 1px">
        <tr>
            <th></th>
            <th>טופס רישום</th>
            <th></th>
        </tr>

        <tr>
            <td>שם משתמש</td>
            <td>
                <input type="text" id="uName" name="uName" /></td>
            <td>
                <input type="text" id="muName"size="50"
                    style ="display: none; backround-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>

        <tr>
            <td>שם פרטי:</td>
            <td>
                <input type="text" name="fName" id="fName" /></td>
            <td>
                <input type="text" id="mfName"size="50"
                    style ="display: none; backround-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>

        <tr>
            <td>שם משפחה:</td>
               <td>
                <input type="text" name="lName" id="lName" /></td>
            <td>
                <input type="text" id="mlName"size="50"
                    style ="display: none; backround-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>

        <tr>
            <td>כתובת דוא"ל</td>
            <td>
                <input type="email" name="email" id="email" /></td>
            <td>
                <input type="text" id="mEmail"size="50"
                    style ="display: none; backround-color: silver; font-weight: bold;"
                    disabled="disabled" />
                </td>
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
        <tr>
            <td></td>
        </tr>
        <tr>
            <td><br /></td>
            <td colspan="2" style="text-align: center;">
                <input type ="submit" name="submit" value="  שלח  " />
                <input type="reset" />
                </td>
             </tr>
        </table>
       </form>
    <br />
    <%= st %>
</asp:Content>
