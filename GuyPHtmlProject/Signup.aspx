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

         @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

        * {
            + margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        html {
            background-image: url('https://c4.wallpaperflare.com/wallpaper/310/209/217/harry-potter-computer-backgrounds-wallpaper-preview.jpg');
            /* Full height */
            height: 100%;
            /* Center and scale the image nicely */
            background-position: top;
            background-repeat: no-repeat;
        }



        .wrapper {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: linear-gradient(-135deg, #0F2027, #203A43, #2C5364);
            /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
            /* clip-path: circle(25px at calc(0% + 45px) 45px); */
            clip-path: circle(25px at calc(100% - 45px) 45px);
            transition: all 0.3s ease-in-out;
        }

        #active:checked ~ .wrapper {
            clip-path: circle(75%);
        }

        .menu-btn {
            position: absolute;
            z-index: 2;
            right: 20px;
            /* left: 20px; */
            top: 20px;
            height: 50px;
            width: 50px;
            text-align: center;
            line-height: 50px;
            border-radius: 50%;
            font-size: 20px;
            color: #fff;
            cursor: pointer;
            background: linear-gradient(-135deg, #0F2027, #203A43, #2C5364);
            /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
            transition: all 0.3s ease-in-out;
        }

        #active:checked ~ .menu-btn {
            background: #fff;
            color: #4158d0;
        }

            #active:checked ~ .menu-btn i:before {
                content: "\f00d";
            }

        .wrapper ul {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            list-style: none;
            text-align: center;
        }

            .wrapper ul li {
                margin: 15px 0;
            }

                .wrapper ul li a {
                    color: none;
                    text-decoration: none;
                    font-size: 30px;
                    font-weight: 500;
                    padding: 5px 30px;
                    color: #fff;
                    position: relative;
                    line-height: 50px;
                    transition: all 1s ease;
                }

                    .wrapper ul li a:after {
                        position: absolute;
                        content: "";
                        background: #fff;
                        width: 100%;
                        height: 50px;
                        left: 0;
                        border-radius: 50px;
                        transform: scaleY(0);
                        z-index: -1;
                        transition: transform 0.3s ease;
                    }

                    .wrapper ul li a:hover:after {
                        transform: scaleY(1);
                    }

                    .wrapper ul li a:hover {
                        color: #4158d0;
                    }

        input[type="checkbox"] {
            display: none;
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: -1;
            text-align: center;
            width: 100%;
            color: #202020;
        }

            .content .title {
                font-size: 40px;
                font-weight: 700;
            }

            .content p {
                font-size: 35px;
                font-weight: 600;
            }

        .black {
            color: black;
        }
        .right {
            float: right;
            width: 33.33%;
            padding: 5px;
            margin-top: 80px;
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
