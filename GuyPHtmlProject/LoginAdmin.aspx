<%@ Page Title="מנהל כניסת" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="GuyPHtmlProject.LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  <link rel ="stylesheet" href="Content/style.css" />
    <head><h1>כניסת מנהל</h1></head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
<div class="login-page">
  <div class="form">
    <form class="login-form" runat="server">
      <input type="text" placeholder="שם משתמש" name="mName" id="mName"/>
      <input type="password" placeholder="סיסמה" name="mPw" id="mPw"/>
      <input type="submit" name="submit" id="submit" />
      <p class="message"><a href="SignUp">?לא רשום</a></p>
  
            <script>
                $('.message a').click(function () {
                    $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
                });
    </script>  </form>
  </div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'%3E</script><script  src="./script.js"></script>

</body>            <%= msg %>
    </msg %>
</asp:Content>
