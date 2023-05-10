<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="GuyPHtmlProject.pages.Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('https://e0.pxfuel.com/wallpapers/354/491/desktop-wallpaper-movie-theme-movie-themes-cool-moving-theatre.jpg');
            background-repeat: no-repeat;
            background-size: 2000px 1000px;
            color: whitesmoke;
        }

        img {
            display: block;
            margin-left: 500px;
            margin-right: 500px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Image Maps</h2>
    <p>Click on the computer, the phone, or the cup of coffee to go to a new page and read more about the topic:</p>

    <img src="https://i.pinimg.com/originals/97/d0/f7/97d0f7e24d1c13167c4ff59abe52f09e.jpg" alt="Workplace" usemap="#workmap" width="1000" height="500">

    <map name="workmap">
        <area shape="rect" coords="30,20,230,230" alt="Computer" href="computer.htm">
        <area shape="rect" coords="260,20,500,230" alt="Phone" href="phone.htm">
        <area shape="rect" coords=",," alt="Cup of coffee" href="coffee.htm">
    </map>

</asp:Content>
