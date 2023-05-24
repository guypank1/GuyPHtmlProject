<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="GuyPHtmlProject.DeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;border-width: 2px;">.</p>
    <h2><%= sqlSelect %></h2>

    <table>
        <%= st %>
    </table>

    <h3><%= msg %></h3>

</asp:Content>
