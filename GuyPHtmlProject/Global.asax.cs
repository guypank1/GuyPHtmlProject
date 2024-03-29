﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace GuyPHtmlProject
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["sessioncounter"] = 0;
            Application["logincounter"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["admin"] = "no";
            Session["uName"] = "אורח";
            Session["uFName"] = "אורח";
            Application["sessionCounter"]= (int)Application["sessionCounter"] + 1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

            Session["uName"] = "אורח";
            Session["uFName"] = "אורח";
        }
    }
}