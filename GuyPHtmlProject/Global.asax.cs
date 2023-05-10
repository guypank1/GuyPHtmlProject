using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace GuyPHtmlProject
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["sessionCounter"] = 0;
            Application["loginCounter"] = 0;
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["admin"] = "no";
            Session["uName"] = "אורח";
            Session["uFName"] = "אורח";
            Application["sessionCounter"] = (int)Application["sessionCounter"] + 1;
        }

        void Session_End(object sender, EventArgs e)
        {
            Session["uName"]="אורח";
            Session["uFName"] = "אורח";
        }
    }
}