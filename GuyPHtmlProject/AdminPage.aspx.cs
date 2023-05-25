using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center; color: red;'>";
                msg += "<h3>אינך מנהל! אין לך הרשאה לצפות בעמוד זה :(</h3>";
                msg += "<a href='MainPage.aspx'>[ המשך ]</a>";
                msg += "</div>";
            }
            else
            {
                msg += "<h3><a href='ShowTable.aspx'>הצגת טבלת משתמשים</a></h3>";
                msg += "<br /><br />";
                msg += "<h3><a href='SelectByName.aspx'>כל המשתמשים שהשם הפרטי שלהם מתחיל ב-א</a></h3>";
                msg += "<h3><a href='SelectGmailAndYears.aspx'>כל המשתמשים בכתובת gmail ב- חיפה, מודיעין או תל-אביב</a></h3>";
            }

        }
    }
}