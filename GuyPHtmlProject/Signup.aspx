<%@ Page Title="התחברות" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="GuyPHtmlProject.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            border: 1px;
            margin: auto;
            border-collapse: collapse;
            width: 750px;
            height: auto;
            
        }

        td, th {
            border: 1px solid navy;
            padding: 20px;
        }

        body {
            background-image: url('https://images5.alphacoders.com/129/1299476.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
                    color: whitesmoke;

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
                <input type="radio" name="gender" value="female"/> נקבה
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
                <td>ישוב מגורים</td>
                <td>
                    <select name="city" id="city">
                        <option value="other" selected>בחר ישוב מגורים</option>
                        <option value="חיפה">חיפה</option>
                        <option value="תל-אביב">תל-אביב</option>
                        <option value="ירושלים">ירושלים</option>
                        <option value="מודיעין">מודיעין</option>
                        <option value="באר-שבע">באר-שבע</option>
                        <option value="מטולה">מטולה</option>
                        <option value="הרצליה">הרצליה</option>
                        <option value="צפון">צפון</option>
                        <option value="מרכז">מרכז</option>
                        <option value="דרום">דרום</option>
                    </select>
                </td>
                <td>
                    <input type="text" id="mCity" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
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
                    <input type="checkbox" name="hobies" value="1" />כדורגל&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="2" />טניס&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="3" />משחקי מחשב&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="4" />ריקוד&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="5" />אחר&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <input type="text" id="mHobies" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
         <tr>
                <td>סיסמא</td>
                <td>
                    <input type="password" name="pw" id="pw" size="10"
                        maxlength="10"/>
                    <span style="color: red;">*6-10 תווים</span>
                </td>
                <td>
                    <input type="text" id="mPw" size="30"
                        style="display: none; background-color: silver; color: red; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
        <tr>
                <td>בדיקת סיסמא</td>
                <td>
                    <input type="password" name="pw1" id="pw1" size="10"
                        maxlength="10" />
                </td>
                <td>
                    <input type="text" id="mPw1" size="30"
                        style="display: none; background-color: silver; color: red; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
        <tr>
            <td></td>
        </tr>
        <tr style="border:none">
            <td colspan="3" class="mpTd" style="text-align: center;">
                <button type ="submit" name="submit" class="btn btn-outline-primary">שלח</button>
                <button type="reset" class="btn btn-outline-warning">אפס</button>
            </td>
            <td><br /></td>
        </tr>
    </table>
        </form>
    <br />

    <h3 style="direction: ltr"><%= sqlMsg %></h3>

    <table style="margin: 0 auto; direction: ltr; border="1">
        <%=st %>
    </table>
    <%= msg %>
</asp:Content>
