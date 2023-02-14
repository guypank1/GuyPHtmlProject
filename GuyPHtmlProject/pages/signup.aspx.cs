using GuysASPNetExample;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace GuyPHtmlProject.pages
{
    public partial class signup : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlMsg = "";
        string prefix = "05";
        string phone = "2435493";
        string city = "city";
        static string yearBorn = "1234";
        int yBorn = int.Parse(yearBorn);
        string pw = "111111";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["submit"] != null)
            {

                //--- שליפת המידע שהגיע מהטופס לתוך משתנים ---
                string email = Request.Form["email"];
                string password = Request.Form["password"];
                string gender = "bruh";

                if (Request.Form["gender"] == "male")
                    gender = "גבר";
                else if (Request.Form["gender"] == "female")
                    gender = "אישה מגעילה";
                Console.WriteLine(Request.Form["gender"]);
                st += $"<table class=\"styled-table\"> ";
                st += "<thead>";
                st += "<tr>";
                st += "<th>קלט</th>";
                st += "<th>המידע שלך</th>";
                st += "</tr>";
                st += "</thead>";
                st += "<tbody>";
                st += "<tr>";
                st += $"<td>אימייל</td>";
                st += $"<td>{email}</td>";
                st += "</tr>";
                st += "<tr class=\"active-row\">";
                st += "<td>סיסמה: </td>";
                st += $"<td>{password}</td>";
                st += "</tr>";
                st += "<tr class=\"active-row\">";
                st += "<td>מגדר: </td>";
                st += $"<td>{gender}</td>";
                st += "</tr>";
                st += "</tbody>";
                st += "</table>";

                //char hob1 = 'F';
                //char hob2 = 'F';
                //char hob3 = 'F';
                //char hob4 = 'F';
                //char hob5 = 'F';

                ////--- בדיקה: האם מחרוזת התחביבים מכילה את הערכים 1 - 5 ---
                //if (hobies.Contains('1')) hob1 = 'T';
                //if (hobies.Contains('2')) hob2 = 'T';
                //if (hobies.Contains('3')) hob3 = 'T';
                //if (hobies.Contains('4')) hob4 = 'T';
                //if (hobies.Contains('5')) hob5 = 'T';

                //string tableName = "usersTbl";

                ////--- בדיקה האם שם המשתמש תפוס ---
                //string sqlSelect = $"select * from {tableName} where uName = '{uName}'";
                //if (Helper.IsExist(sqlSelect))
                //{
                //    msg = "שם המשתמש תפוס, נסה שוב עם שם אחר";
                //    sqlMsg = sqlSelect;
                //}
                //else
                //{
                //    string sqlInsert = $"insert into {tableName} ";
                //    sqlInsert += $"values ('{uName}', N'{fName}', N'{lName}', '{email}', ";
                //    sqlInsert += $"'{gender}', N'{city}', {yBorn}, '{prefix}', '{phone}',  ";
                //    sqlInsert += $"'{hob1}', '{hob2}', '{hob3}', '{hob4}', '{hob5}', ";
                //    sqlInsert += $"'{pw}')";
                //    sqlMsg = sqlInsert;

                //    Helper.DoQuery(sqlInsert);
                //    msg = "הרשומה נוספה בהצלחה";
                //}

            }

        }
    }
}