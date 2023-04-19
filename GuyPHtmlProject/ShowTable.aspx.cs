using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class ShowTable : System.Web.UI.Page
    {
        public string st = "", msg = "", sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style ='text-align: center; color: red;'>";
                msg += "<h3>אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>;";
                msg += "<a href ='MainPage.aspx'>[המשך]</a>";
                msg +="</div>";
            }
            else
            {
                string tableName = "usersTbl";

                sqlSelect = $"select * from {tableName}";

                DataTable table = Helper.ExecuteDataTable(sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "הטבלה ריקה. לא נרשמו משתמשים";
                else
                {
                    //---  שורת כותרת הטבלה ---
                    st += "<tr>";
                    st += "<th>שם משתמש</th>";
                    st += "<th>שם פרטי</th>";
                    st += "</tr>";

                    //--- כל הרשומות מהטבלה הוירטואלית ---
                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += $"<td>{table.Rows[i]["uName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["fName"]}</td>";
                        //lName, email, yearBorn, gender,city,hob1,hob2,hob3,hob4,hob5,pw
                        st += "</tr>";
                    }

                    msg = $"נמצאו  {length} משתמשים";
                }
            }
        }

    }
}