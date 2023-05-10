using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            //---מחרוזת כניסה למשתמש
                loginMsg += $"<h3>שלום {Session["uFName"].ToString()} </h3>";
            //---בניית התפריט האישי לאורח/משתמש/מנהל---
            if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<a herf='ShowTable.aspx'>הצגת טבלה</a><br />";
                loginMsg += "<a herf='Logout.aspx'>התנתק</a><br />";

            }
            else if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += "<a herf='SignUp.aspx'>רישום</a><br />";
                loginMsg += "<a herf='Logoin.aspx'>התחבר</a><br />";
            }
            else
            {
                loginMsg += "<a herf='Logout.aspx'>התנתק</a><br />";
            }

        }
    }
}