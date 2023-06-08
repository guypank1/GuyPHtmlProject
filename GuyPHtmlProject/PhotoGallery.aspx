<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="GuyPHtmlProject.PhotoGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('https://i.ytimg.com/vi/HsD__RCMOXE/maxresdefault.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
                    color: whitesmoke;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <script language="javascript">
      function picShow(pic) { bigPic.src = pic; }

  </script>
    <style>
        .imgCell {
            width: 340px;
            height: 290px;
            border: 1px solid gray;
        }

        .bigPicImg {
            width: 680px;
            height: 585px;
            border: 1px solid gray;
        }
    </style>
    <table style="margin: 0px auto;">
        <tr>
            <td>
                <img class="imgCell" src="https://wallpapers.com/images/hd/harry-potter-burning-hogwarts-school-ywmmrzibetrz11r7.jpg" onmouseover="picShow('https://wallpapers.com/images/hd/harry-potter-burning-hogwarts-school-ywmmrzibetrz11r7.jpg')" /></td>
            <td>
                <img class="imgCell" src="https://live.staticflickr.com/8085/8517470721_1b61d32e9e_b.jpg" onmouseover="picShow('https://live.staticflickr.com/8085/8517470721_1b61d32e9e_b.jpg')" /></td>
            <td>
                <img class="imgCell" src="https://i.pinimg.com/originals/98/8e/2b/988e2b3fd344c2f07efb5d432731a4ea.jpg" onmouseover="picShow('https://i.pinimg.com/originals/98/8e/2b/988e2b3fd344c2f07efb5d432731a4ea.jpg')" /></td>
            <td>
                <img class="imgCell" src="https://wallpaperaccess.com/full/929097.jpg" onmouseover="picShow('https://wallpaperaccess.com/full/929097.jpg')" /></td>
        </tr>
        <tr>
            <td>
                <img class="imgCell" src="https://images8.alphacoders.com/130/1302542.png" onmouseover="picShow('https://images8.alphacoders.com/130/1302542.png')" /></td>
            <td rowspan="2" colspan="2">
                <img class="bigPicImg" id="bigPic" src="https://cdn.wallpapersafari.com/58/48/Bz4HcR.jpg" />
            </td>
            <td>
                <img class="imgCell" src="https://e0.pxfuel.com/wallpapers/178/61/desktop-wallpaper-iphone-harry-potter-awesome-blon-%C3%B0%C5%B8%C2%A6-on-harry-harry-potter-gryffindor.jpg" onmouseover="picShow('https://e0.pxfuel.com/wallpapers/178/61/desktop-wallpaper-iphone-harry-potter-awesome-blon-%C3%B0%C5%B8%C2%A6-on-harry-harry-potter-gryffindor.jpg')" /></td>
            <td>
        </tr>
        <tr>
            <td>
                <img class="imgCell" src="https://trumpwallpapers.com/wp-content/uploads/Harry-Potter-Wallpaper-03-1920-x-1080.jpg" onmouseover="picShow('https://trumpwallpapers.com/wp-content/uploads/Harry-Potter-Wallpaper-03-1920-x-1080.jpg')" /></td>
            <td>
                <img class="imgCell" src="https://allears.net/wp-content/uploads/2021/01/2021-wallpapers-allears-wizarding-world-of-harry-potter-universal-diagon-alley-2.jpg" onmouseover="picShow('https://allears.net/wp-content/uploads/2021/01/2021-wallpapers-allears-wizarding-world-of-harry-potter-universal-diagon-alley-2.jpg')" /></td>
        </tr>
        <tr>
            <td>
                <img class="imgCell" src="https://wallpaper.dog/large/644653.png" onmouseover="picShow('https://wallpaper.dog/large/644653.png')" /></td>
            <td>
                <img class="imgCell" src="https://www.pixelstalk.net/wp-content/uploads/images6/Harry-Potter-Wallpaper-Free-Download.jpg" onmouseover="picShow('https://www.pixelstalk.net/wp-content/uploads/images6/Harry-Potter-Wallpaper-Free-Download.jpg')" /></td>
            <td>
                <img class="imgCell" src="https://wallpapers.com/images/hd/harry-potter-all-characters-mvbz0cawo4ffh1sc.jpg" onmouseover="picShow('https://wallpapers.com/images/hd/harry-potter-all-characters-mvbz0cawo4ffh1sc.jpg')" /></td>
            <td>
                <img class="imgCell" src="https://e0.pxfuel.com/wallpapers/525/201/desktop-wallpaper-latest-harry-potter-background-full-for-pc-harry-potter-halloween-thumbnail.jpg" onmouseover="picShow('https://e0.pxfuel.com/wallpapers/525/201/desktop-wallpaper-latest-harry-potter-background-full-for-pc-harry-potter-halloween-thumbnail.jpg')" /></td>
        </tr>
    </table>
</asp:Content>