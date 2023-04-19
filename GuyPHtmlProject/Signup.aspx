<%@ Page Title="התחברות" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="GuyPHtmlProject.Signup" %>

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
    <script src="Scripts/CheckMyForm.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" onsubmit="return chkForm();">
    <table>
        <tr>
            <th></th>
            <th>טופס רישום</th>
            <th></th>
        </tr>

        <tr>
            <th>שם משתמש</th>
            <td>
                <input type="text" name="uName" id="uName"</td>
            <td><input type="text" id="mUName" size="50"
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
            <td><input type="email" name="email" id="email"</td>
            <td><input type="text" id="mEmail" size="50"
                style="display: none; background-color: silver; font-weight: bold;"
                disabled="disabled" />
        </tr>

        <tr>
            <th>מין</th>
            <td>
                <input type="radio" name="gender" value="male" /> זכר
                <input type="radio" name="gender" value="female" checked/> נקבה
            </td>
            <td></td>
        </tr>

        <tr>
            <td>שנת לידה</td>
            <td>
               <input type ="text" id="yearBorn" name ="yearBorn"/>
            </td>
            <td>
                <input type="text" id="mYearBorn" size="40"
                    style ="display: none; background-color: silver; font-weight: bold;"
                    disabled ="disabled"
            </td>
        </tr>
        <tr>
            <th>ישוב מגורים</th>
            <th>COMBO</th>
            <th></th>
        </tr>
        <tr>
            <td>מס' טלפון</td>
            <td dir ="ltr">
                <select name ="prefix" id="prefix">
                    <option value="choose">בחרו</option>
                    <option value ="050">050</option>
                    <option value ="052">052</option>
                    <option value ="053">053</option>
                    <option value ="054">054</option>
                    <option value ="055">055</option>
                    <option value ="057">057</option>
                    <option value ="058">058</option>
                    <option value ="02">02</option>
                    <option value ="03">03</option>
                    <option value ="04">04</option>
                    <option value ="08">08</option>
                    <option value ="09">09</option>
                    <option value ="077">077</option>
                </select>

                &nbsp;&nbsp; - &nbsp;&nbsp;

                <input type="text" name="phoneNum" id="phoneNum" />
            </td>
            <td>
                <input type ="text" id="mPhone" size="30"
                    style="display: none; background-color: silver; font-weight:bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>תחביבים</td>
                        <td>
                    <input type="checkbox" name="hobies" value="football" />כדורגל&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="tennis" />טניס&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="compGame" />משחקי מחשב&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="dancing" />ריקוד&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="other" />&nbsp;&nbsp;&nbsp;
                        </td>
            <td>
                <input type="text" id="mHobies" size="30"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled ="disabled" />
            </td>
        </tr>
        <tr>
            <td>סיסמה</td>
            <td>INPUT+red label</td>
            <td>OUTPUT</td>
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
