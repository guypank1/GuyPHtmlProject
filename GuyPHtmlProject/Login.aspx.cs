using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class Login : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                //שליפת המידע שהגיע מהטופס אל המשתנים
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string hobies = Request.Form["hobies"].ToString();

                st = "<table border ='1' dir = 'ltr'>";

                st += "<tr><th colspan='2'>הפרטים שהתקבלו מהשרת</th></tr>";
                st += "<tr><td>user name:</td><td>" + uName + "</td><tr>";
                st += $"<tr><td>first name:</td><td>{fName}</td></tr>";
                st += $"<tr><td>last name:</td><td>{lName}</td></tr>";
                st += $"<tr><td>email:</td><td>{email}</td></tr>";
                st += $"<tr><td>hobies:</td><td>{hobies}</td></tr>";
                if (gender == "male")
                    st += $"<tr><td colspan = '2' >{uName} הוא בן </td></tr>";
                else
                    st += $"<tr><td colspan = '2' >{uName} היא בת </td></tr>";
                st += "</table>";


                st += "</table>";
            }
        }
    }
}
