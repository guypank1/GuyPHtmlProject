﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["submit"] != null)
            {
                string fileName = "";
                string tableName = "ManagerTbl";
                string sqlLogin;
                string mName = Request.Form["mName"];
                string mPw = Request.Form["mPw"];
                sqlLogin = $"select * from {tableName} where mName = '{mName}' and mPw = '{mPw}'";
                DataTable table = Helper.ExecuteDataTable(sqlLogin);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg += "<div style = 'text-align: center; color: magenta;'>";
                    msg += "<h3>אינך מנהל! פרטים שהוזנו אינם נכונים</h3>";
                    msg += "<a href.'MainPage.aspx'>[ המשך ]</a>";
                    msg += "</div>";
                }
                else
                {
                    Session["admin"] = "yes";
                    Session["uFName"] = "מנהל";
                    Response.Redirect("MainPage.aspx");
                }
            }
        }

    }
}