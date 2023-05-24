using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuyPHtmlProject
{
    public partial class Schedule : System.Web.UI.Page
    {
        public string msg = "";
        protected Literal scheduleLiteral;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                string msg = "<div style='text-align: center; color: red;'>";
                msg += "<h3>אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href='Mainpage.aspx'>[המשך]</a>";
                msg += "</div>";

                scheduleLiteral.Text = msg;
            }
            else
            {
                string scheduleHTML = @"
                    <style>
                        table {
        border: 1px solid red;
        margin: 0 auto;
        margin-top: 50px;
        width: 70%;
    }

        body{
            background-size: 2000px; 
            background-repeat: no-repeat;
        }
        table {
            border: 1px solid red;
            margin: auto;
        }

        td, th {
            border: 1px solid navy;
        }

        .literature {
            background-color:tomato;
            text-align: center;
            vertical-align: middle;
        }

        .history {
            background-color:blue;
            text-align: center;
            vertical-align: middle;
        }

        .cs {
            background-color:gray;
            text-align: center;
            vertical-align: middle;
        }

        .bible {
            background-color:green;
            text-align: center;
            vertical-align: middle;
        }

        .math {
            background-color:Maroon;
            text-align: center;
            vertical-align: middle;
        }

        .hebrew {
            background-color:Gold;
            text-align: center;
            vertical-align: middle;
        }

        .law {
            background-color:Orange;
            text-align: center;
            vertical-align: middle;
        }

        . {
            background-color: Dark Green;
            color:#337ab7

        }
        .tab{
            background-color:white ;
            text-align: center;
            vertical-align: middle;
        }
        .pe{
            background-color:red ;
            text-align: center;
            vertical-align: middle;
        }
        .physics{
            background-color:;
            text-align: center;
            vertical-align: middle;
        }
        .english{
            background-color:Cyan;
            text-align: center;
            vertical-align: middle;
        }
        .cars{
            background-color:Pink;
            text-align: center;
            vertical-align: middle;
        }
        .edu{
            background-color:;
            text-align: center;
            vertical-align: middle;
        }
        .money{
            background-color:;
            text-align: center;
            vertical-align: middle;
        }
        .dayhour {
            text-align: center;
            vertical-align: middle;
                    </style>
                    <table>
                        <tr>
        </tr>
        <tr>
            <th class=""dayhour"">שעה</th>
            <th class=""dayhour"">ראשון</th>
            <th class=""dayhour"">שני</th>
            <th class=""dayhour"">שלישי</th>
            <th class=""dayhour"">רביעי</th>
            <th class=""dayhour"">חמישי</th>
        </tr>
        <tr>
            <td class=""dayhour"">08:00-08:45</td>
            <td class=""safrut"" rowspan=""1"">ספרות</td>
            <td class=""money"" rowspan=""1"">חינוך פיננסי</td>
            <td class=""math"" rowspan=""2"">מתמטיקה</td>
            <td class=""hebrew"" rowspan=""1"">עברית</td>
            <td class=""pe"" rowspan=""1"">חינוך גופני</td>
        </tr>
        <tr>
            <td class=""dayhour"">08:45-09:30</td>
            <td class=""hebrew"" rowspan=""2"">עברית</td>
            <td class=""bible"" rowspan=""2"">תנ""ך</td>
            <td class=""law"" rowspan=""1"">השכלה כללית-אזרחות</td>
            <td class=""history"" rowspan=""1"">היסטוריה</td>
   
        </tr>
        <tr>
            <td class=""dayhour"">09:45-10:30</td>
            <td class=""english"" rowspan=""2"">אנגלית</td>
            <td class=""physics"" rowspan=""2"">פיסיקה</td>
            <td class=""math"" rowspan=""2"">מתמטיקה</td>
        </tr>
        <tr>
            <td class=""dayhour"">10:30-11:10</td>
            <td class=""edu"" rowspan=""1"">חינוך/חברה</td>
            <td class=""pe"" rowspan=""1"">חינוך גופני</td>
        </tr>
        <tr>
            <td class=""dayhour"">11:30-12:15</td>
            <td class=""english"" rowspan=""2"">אנגלית</td>
            <td class=""history"" rowspan=""1"">היסטוריה</td>
            <td class=""history"" rowspan=""1"">היסטוריה</td>
            <td class=""english"" rowspan=""1"">אנגלית</td>
            <td class=""cs"" rowspan=""2"">מדעי המחשב</td>     
        </tr>
        <tr>
            <td class=""dayhour"">12:15-13:00</td>
            <td class=""math"" rowspan=""2"">מתמטיקה</td>
            <td class=""cs"" rowspan=""2"">מדעי המחשב</td>
            <td class=""cars"" rowspan=""1"">חינוך תעבורתי</td>
        </tr>
        <tr>
            <td class=""dayhour"">13:15-14:00</td>
            <td class="""" rowspan=""1""></td>
            <td class=""safrut"" rowspan=""1"">ספרות</td>
            <td class="""" rowspan=""1""></td>
        </tr>
        <tr>
            <td class=""dayhour"">14:00-14:40</td>
            <td class="""" rowspan=""1""></td>
            <td class=""cs"" rowspan=""2"">מדעי המחשב</td>
            <td class="""" rowspan=""1""></td>
            <td class=""tab"" rowspan=""3"">אינטרנט/תב""א</td>
            <td class="""" rowspan=""1""></td>
        </tr>
        <tr>
            <td class=""dayhour"">14:50-15:35</td>
            <td class="""" rowspan=""1""></td>
            <td class="""" rowspan=""1""></td>
            <td class="""" rowspan=""1""></td>
        </tr>
        <tr>
            <td class=""dayhour"">15:35-16:10</td>
            <td class="""" rowspan=""1""></td>
            <td class="""" rowspan=""1""></td>
            <td class="""" rowspan=""1""></td>
            <td class="""" rowspan=""1""></td>
        </tr>

                    </table>";

                scheduleLiteral.Text = scheduleHTML;
            }
        }
    }
}
