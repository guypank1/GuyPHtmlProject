<%@ Page Title="" Language="C#" MasterPageFile="~\MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="GuyPHtmlProject.pages.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
   <style>
      @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

html {


    background-image: url('https://c4.wallpaperflare.com/wallpaper/310/209/217/harry-potter-computer-backgrounds-wallpaper-preview.jpg');
     /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: top;
  background-repeat: no-repeat;

}



.wrapper{
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background: linear-gradient(-135deg, #0F2027, #203A43, #2C5364);
  /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
  /* clip-path: circle(25px at calc(0% + 45px) 45px); */
  clip-path: circle(25px at calc(100% - 45px) 45px);
  transition: all 0.3s ease-in-out;
}
#active:checked ~ .wrapper{
  clip-path: circle(75%);
}
.menu-btn{
  position: absolute;
  z-index: 2;
  right: 20px;
  /* left: 20px; */
  top: 20px;
  height: 50px;
  width: 50px;
  text-align: center;
  line-height: 50px;
  border-radius: 50%;
  font-size: 20px;
  color: #fff;
  cursor: pointer;
  background: linear-gradient(-135deg, #0F2027, #203A43, #2C5364);
  /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
  transition: all 0.3s ease-in-out;
}
#active:checked ~ .menu-btn{
  background: #fff;
  color: #4158d0;
}
#active:checked ~ .menu-btn i:before{
  content: "\f00d";
}
.wrapper ul{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  list-style: none;
  text-align: center;
}
.wrapper ul li{
  margin: 15px 0;
}
.wrapper ul li a{
  color: none;
  text-decoration: none;
  font-size: 30px;
  font-weight: 500;
  padding: 5px 30px;
  color: #fff;
  position: relative;
  line-height: 50px;
  transition: all 1s ease;
}
.wrapper ul li a:after{
  position: absolute;
  content: "";
  background: #fff;
  width: 100%;
  height: 50px;
  left: 0;
  border-radius: 50px;
  transform: scaleY(0);
  z-index: -1;
  transition: transform 0.3s ease;
}
.wrapper ul li a:hover:after{
  transform: scaleY(1);
}
.wrapper ul li a:hover{
  color: #4158d0;
}
input[type="checkbox"]{
  display: none;
}
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: -1;
  text-align: center;
  width: 100%;
  color: #202020;
}
.content .title{
  font-size: 40px;
  font-weight: 700;
}
.content p{
  font-size: 35px;
  font-weight: 600;
}

   </style>
       <title></title>
      <link rel="stylesheet" href="style.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!DOCTYPE html>
<html>
   <body>
      <input type="checkbox" id="active">
      <label for="active" class="menu-btn"><i class="fas fa-bars"></i></label>
      <div class="wrapper">
         <ul>
            <li><a href="MainPage.aspx">Hogwarts</a></li>
            <li><a href="ALLBooks.aspx">Books</a></li>
            <li><a href="Movies.aspx">Movies</a></li>
            <li><a href="signup.aspx">Sign Up</a></li>
         </ul>
      </div>
      <div class="content">
         <div class="title">
            Welcome To...
         </div>
         <p>
            Hogwarts
         </p>
      </div>
   </body>
</html>

    </asp:Content>