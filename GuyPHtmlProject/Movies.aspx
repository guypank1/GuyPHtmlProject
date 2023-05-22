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

        h1 {
            text-align: center;
            font-size: 50px;
        }

        p {
            text-align: center;
            font-size: 25px;
        }
        
        div {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>:לחץ על תמונת הסרט עליו את/ה רוצה לדעת עוד</p>

    <img src="https://i.pinimg.com/originals/97/d0/f7/97d0f7e24d1c13167c4ff59abe52f09e.jpg" alt="Workplace" usemap="#workmap" width="1000" height="500">

    <map name="workmap">
        <area shape="rect" coords="50,20,220,235" alt="FirstMovie" href="/MovieSeasons/FirstMovie.aspx">
        <area shape="rect" coords="270,20,490,235" alt="SecondMovie" href="/MovieSeasons/SecondMovie.aspx">
        <area shape="rect" coords="515,20,730,235" alt="ThirdMovie" href="/MovieSeasons/ThirdMovie.aspx">
        <area shape="rect" coords="760,20,975,235" alt="FourthMovie" href="/MovieSeasons/FourthMovie.aspx">
        <area shape="rect" coords="25,260,240,500" alt="FifthMovie" href="/MovieSeasons/FifthMovie.aspx">
        <area shape="rect" coords="270,260,485,475" alt="SixthMovie" href="/MovieSeasons/SixthMovie.aspx">
        <area shape="rect" coords="515,260,730,475" alt="SeventhMovie" href="/MovieSeasons/SeventhMovie.aspx">
        <area shape="rect" coords="760,260,975,475" alt="EigthMovie" href="/MovieSeasons/EighthMovie.aspx">
    </map>

</asp:Content>
