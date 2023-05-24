<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="GuyPHtmlProject.Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('https://e1.pxfuel.com/desktop-wallpaper/696/490/desktop-wallpaper-harry-potter-inspired-the-boy-who-lived-backgrounds-for-girls-white-backgrounds-the-boy-who-lived.jpg');
            background-repeat: no-repeat;
            background-size: 2000px 1000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="scheduleLiteral" runat="server"></asp:Literal>

</asp:Content>
