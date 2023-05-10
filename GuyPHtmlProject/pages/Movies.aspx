<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="GuyPHtmlProject.pages.Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
            </div>
        </form>
    </body>
    </html>
    <!DOCTYPE html>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .container {
                position: relative;
                text-align: center;
                color: white;
            }

            .bottom-left {
                position: absolute;
                bottom: 8px;
                left: 16px;
            }

            .top-left {
                position: absolute;
                top: 8px;
                left: 16px;
            }

            .top-right {
                position: absolute;
                top: 8px;
                right: 16px;
            }

            .bottom-right {
                position: absolute;
                bottom: 8px;
                right: 16px;
            }

            .centered {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            body {
                background-image: url('https://i.ytimg.com/vi/HsD__RCMOXE/maxresdefault.jpg');
                background-size: 100%;
                background-repeat: no-repeat;
                backgroud position: center top;
                color: whitesmoke;
            }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
        <div class="container">
            <img src="img_snow_wide.jpg" alt="Snow" style="width: 100%;">
            <div class="centered">Centered</div>
        </div>

    </body>
</html> 
