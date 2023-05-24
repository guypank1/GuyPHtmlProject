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
            // מחרוזת כניסה

            // בניית התפריט למנהל או אורח
            if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<li style=color:aqua; font-size: 100px;>:שלום מנהל</li>";
                loginMsg += $"<li><a href = 'MainPage.aspx' > עמוד ראשי</a></li>";
                loginMsg += $"<li><a href ='Movies.aspx'> סרטים </a></li>";
                loginMsg += $"<li><a href = 'PhotoGallery.aspx' > גלריית תמונות</a></li>";
                loginMsg += "<li style=color:aqua; font-size: 100px;>:עמודות מנהל</li>";
                loginMsg += "<li><a href='ShowTable.aspx'>הצגת טבלה</a></li>";
                loginMsg += "<li><a href='ComplexQuery.aspx'>שאילתה דינמית</a></li>";
                loginMsg += "<li><a href='DeleteUser.aspx'>מחיקת משתמשים</a></li>";
                loginMsg += "<li><a href='SelectGmailAndYears.aspx'>טבלת אימיילים</a></li>";
                loginMsg += "<li><a href='Schedule.aspx'>טבלת שעות</a></li>";
                loginMsg += "<li><a href='Logout.aspx'>התנתק</a></li>";
            }
            else if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += $"שלום {Session["uFname"].ToString()}";
                loginMsg += $"<li><a href = 'MainPage.aspx' > עמוד ראשי</a></li>";
                loginMsg += "<li><a href='Signup.aspx'>רישום</a></li>";
                loginMsg += "<li><a href='Login.aspx'>התחבר</a></li>";
                loginMsg += $"<li><a href ='Movies.aspx'> סרטים </a></li>";
                loginMsg += $"<li><a href = 'PhotoGallery.aspx' > גלריית תמונות</a></li>";
                loginMsg += "<li><a href='LoginAdmin.aspx'>דף מנהל</a></li>";
            }
            else
            {
                loginMsg += "<li><a href=\"Calculator.aspx\">מחשבון</a></li>";
                loginMsg += "<li><a href=\"#services\">Market</a></li>";
                loginMsg += "<li><a href=\"#about\">Wallet</a></li>";
                loginMsg += "<li><a href='Logout.aspx'>התנתק</a></li>";
                loginMsg += $"שלום {Request.Form["uName"]}";
                loginMsg += $" {Session["fName"].ToString()}";
            }

        }
    }
}