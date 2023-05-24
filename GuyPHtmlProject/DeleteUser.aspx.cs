using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        public string st = "", msg = "";
        public string sqlSelect = "";
        public string tblName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string userToDelete = "";
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center; color: red;'>";
                msg += "<h3>אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href='index.aspx'>[ המשך ]</a>";
                msg += "</div>";

            }
            else
            {
                tblName = "userTbl";
                sqlSelect = $"select * from {tblName}";
            }

            tblName = "usersTbl";

            sqlSelect = $"select * from {tblName}";

            DataTable table = Helper.ExecuteDataTable(sqlSelect);

            int length = table.Rows.Count;
            if (length == 0)
                msg = "הטבלה ריקה. לא נרשמו משתמשים";
            else
            {
                //---  שורת כותרת הטבלה ---
                st = "<div id=\"table-scroll\" class=\"table-scroll\">";
                st += "<div class=\"table-wrap\">";
                st += "<table class=\"main-table\">";
                st += "<thead>";
                st += "<tr>";
                //st += "<th class=\"fixed-side\" scope=\"col\">&nbsp;</th>";
                st += "<th scope=\"col\">שם משתמש</th>";
                st += "<th scope=\"col\">שם פרטי</th>";
                st += "<th scope=\"col\">שם משפחה</th>";
                st += "<th scope=\"col\">כתובת דואל";
                st += "<th scope=\"col\">שנת לידה</th>";
                st += "<th scope=\"col\">מגדר</th>";
                st += "<th scope=\"col\">מס טלפון</th>";
                st += "<th scope=\"col\">עיר</th>";
                st += "<th scope=\"col\">מטבע 1</th>";
                st += "<th scope=\"col\">מטבע 2</th>";
                st += "<th scope=\"col\">מטבע 3</th>";
                st += "<th scope=\"col\">מטבע 4</th>";
                st += "<th scope=\"col\">מטבע 5</th>";
                st += "<th scope=\"col\">סיסמה</th>";
                st += "</tr>";
                st += "</thead>";
                st += "<tbody>";

                //--- כל הרשומות מהטבלה הוירטואלית ---
                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += $"<td>{table.Rows[i]["uName"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["fName"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["lName"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["email"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["yearBorn"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["gender"]}</td>";
                    st += $"<td>{table.Rows[i]["prefix"]}-{table.Rows[i]["phone"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["city"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["hob1"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["hob2"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["hob3"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["hob4"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["hob5"]}</td>";
                    st += $"<td class='right'>{table.Rows[i]["pw"]}</td>";
                    userToDelete = table.Rows[i]["uName"].ToString();
                    st += "<td style='text-align: center; border: 1px solid black;'>";
                    st += "<a href= 'DeleteRecord.aspx?uName=" + userToDelete + "'>[מחק]</a>";
                    //lName, email, yearBorn, gender,city,hob1,hob2,hob3,hob4,hob5,pw
                    st += "</tr>";
                }

                msg = $"נמצאו  {length} משתמשים";
            }
        }
    }
}