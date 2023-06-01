using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class ComplexQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        public string tableName = "usersTbl";
        public string sqlSelect;
        public bool showContent = true;
        protected void Page_Load(object sender, EventArgs e)
        {

            //שמירת שם השדה וערך השדה
            string field1 = Request.Form["field1"];
            string field2 = Request.Form["field2"];
            //שמירת שם מסד הנתונים ושם הטבלה לשימוש השאילה
            string value1 = Request.Form["value1"];
            string value2 = Request.Form["value2"];

            string op = Request.Form["op"];

            string fileName = "usersDB.mdf";
            string tableName = "dbo.usersTbl";

            string qry1 = "";
            string qry2 = "";

            if (value1 != null)
            {
                if (field1 == "gender" || field1 == "prefix")
                {
                    qry1 = field1 + " = '" + value1 + "'";
                }
                else if (field1 == "yearBorn")
                {
                    qry1 = field1 + " = '" + value1 + "'";
                }
                else if (field1 == "yearFrom")
                {
                    qry1 = "yearBorn" + " >= " + value1;
                }
                else if (field1 == "hobby")
                {
                    var val1 = int.Parse(value1);
                    switch (val1)
                    {
                        case 1: field1 = "hob1"; break;
                        case 2: field1 = "hob2"; break;
                        case 3: field1 = "hob3"; break;
                        case 4: field1 = "hob4"; break;
                        case 5: field1 = "hob5"; break;
                    }
                    qry1 = field1 + " = 'T'";
                }
                else if (field1 == "email")
                {
                    qry1 = field1 + " like '%" + value1 + "%'";
                }
                else
                {
                    qry1 = field1 + " like N'" + value1 + "%'";
                }

            }
            if (value2 != null)
            {
                if (field2 == "gender" || field2 == "prefix")
                {
                    qry2 = field2 + " = '" + value2 + "'";
                }
                else if (field2 == "yearBorn")
                {
                    qry2 = field2 + " = '" + value2 + "'";
                }
                else if (field2 == "yearFrom")
                {
                    qry2 = "yearBorn" + " >= " + value2;
                }
                else if (field2 == "hobby")
                {
                    var val2 = int.Parse(value2);
                    switch (val2)
                    {
                        case 1: field2 = "hob1"; break;
                        case 2: field2 = "hob2"; break;
                        case 3: field2 = "hob3"; break;
                        case 4: field2 = "hob4"; break;
                        case 5: field2 = "hob5"; break;
                    }
                    qry2 = field2 + " = 'T'";
                }
                else if (field2 == "email")
                {
                    qry2 = field2 + " like '%" + value2 + "%'";
                }
                else
                {
                    qry2 = field2 + " like N'" + value2 + "%'";
                }

            }
            string sqlSelect = "";
            if (qry1 != "" || qry2 != "")
            {
                if (qry1 != "" && qry2 == "")
                {
                    sqlSelect = "SELECT * FROM " + tableName + " where (" + qry1 + ");";
                }
                else
                {
                    if (qry1 == "" && qry2 != "")
                    {
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + qry2 + ");";
                    }
                    else
                    {
                        if (op == "and")
                        {
                            sqlSelect = "SELECT * FROM " + tableName + " where (" + qry1 + " AND " + qry2 + ");";
                        }
                        else
                        {
                            sqlSelect = "SELECT * FROM " + tableName + " where (" + qry1 + " OR " + qry2 + ");";
                        }
                    }
                }
            }
            sql = sqlSelect;
            if (Request.Form["submit"] != null)
            {
                DataTable table = Helper.ExecuteDataTable(sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "הטבלה ריקה. לא נרשמו משתמשים";
                else
                {
                    st += "<tr>";
                    st += "<th style = 'text align: center;  width: 80px;' >שם משתמש</th>";
                    st += "<th style = 'text align: center;  width: 80px;' >שם פרטי</th>";
                    st += "<th style = 'text align: center; width: 60px;' >שם משפחה</th>";
                    st += "<th style = 'text align: center;  width: 140px;' >דוא'ל</th>";
                    st += "<th style = 'text align: center; width: 100px;' >מגדר</th>";
                    st += "<th style = 'text align: center;'>שנת לידה</th>";
                    st += "<th style = 'text align: center; width: 150px;' >טלפון</th>";
                    st += "<th style = 'text align: center;' >כדורגל</th>";
                    st += "<th style = 'text align: center;' >טניס</th>";
                    st += "<th style = 'text align: center;' >משחקי מחשב</th>";
                    st += "<th style = 'text align: center;' >ריקוד</th>";
                    st += "<th style = 'text align: center;' >אחר</th>";
                    st += "<th style = 'text align: center; width: 100px;' >סיסמה</th>";
                    st += "</tr>";

                }
                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td style = 'text align: center; border: 1px solid black;'>" + table.Rows[i]["uName"] + "</td>";
                    st += "<td style = 'border: 1px solid black;'>" + table.Rows[i]["fName"] + "</td>";
                    st += "<td style = 'border: 1px solid black;'>" + table.Rows[i]["lName"] + "</td>";
                    st += "<td style = 'border: 1px solid black;width: 60;text align: left;'>" + table.Rows[i]["email"] + "</td>";
                    st += "<td style = 'text align: center; '>" + table.Rows[i]["gender"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["yearBorn"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["prefix"] + "-" + table.Rows[i]["phone"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["hob1"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["hob2"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["hob3"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["hob4"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["hob5"] + "</td>";
                    st += "<td style = 'text align: center;'>" + table.Rows[i]["pw"] + "</td>";
                    st += "</tr>";
                }
                msg = length + "אנשים העונים לתוצאת החיפוש ";
            }

        }
    }
}