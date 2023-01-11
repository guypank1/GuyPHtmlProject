using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject.pages
{
    public partial class signup : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Form["submit"] != null)
            {

                //--- שליפת המידע שהגיע מהטופס לתוך משתנים ---
                string email = Request.Form["email"];
                string password = Request.Form["password"];



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
                st += "</tbody>";
                st += "</table>";


            }

        }
    }
}