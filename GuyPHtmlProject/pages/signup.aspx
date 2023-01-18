<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="GuyPHtmlProject.pages.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<style>
    @import url(https://fonts.googleapis.com/css?family=Lato);
html,
body {
  height: 100%;
  font-family: "Lato";
  font-size: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
h3{
  font-size: 1.2rem;
}
.container {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  
}
label{
  user-select: none;
}
input[type="radio"] {
  display: none;
}

input[type="radio"] + label {
  z-index: 10;
  margin: 0 10px 10px 0;
  position: relative;
  color: #ced4da;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.1);
  font-weight: bold;
  background-color: #ffffff;
  border: 2px solid #ced4da;
  cursor: pointer;
  transition: all 200ms ease;
}

input[type="radio"]:checked + label {
  color: #00FFFF;
  background-color: #40D61A;
}

input[type="radio"] + label {
  padding: 5px 20px;
  border-radius: 10px;
}

    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
  width: 100%;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #5372F0;
}
::selection{
  color: #fff;
  background: #5372F0;
}
.wrapper{
  width: 380px;
  padding: 40px 30px 50px 30px;
  background: #fff;
  border-radius: 5px;
  text-align: center;
  box-shadow: 10px 10px 15px rgba(0,0,0,0.1);
}
.wrapper header{
  font-size: 35px;
  font-weight: 600;
}
.wrapper form{
  margin: 40px 0;
}
form .field{
  width: 100%;
  margin-bottom: 20px;
}
form .field.shake{
  animation: shake 0.3s ease-in-out;
}
@keyframes shake {
  0%, 100%{
    margin-left: 0px;
  }
  20%, 80%{
    margin-left: -12px;
  }
  40%, 60%{
    margin-left: 12px;
  }
}
form .field .input-area{
  height: 50px;
  width: 100%;
  position: relative;
}
form input{
  width: 100%;
  height: 100%;
  outline: none;
  padding: 0 45px;
  font-size: 18px;
  background: none;
  caret-color: #5372F0;
  border-radius: 5px;
  border: 1px solid #bfbfbf;
  border-bottom-width: 2px;
  transition: all 0.2s ease;
}
form .field input:focus,
form .field.valid input{
  border-color: #5372F0;
}
form .field.shake input,
form .field.error input{
  border-color: #dc3545;
}
.field .input-area i{
  position: absolute;
  top: 50%;
  font-size: 18px;
  pointer-events: none;
  transform: translateY(-50%);
}
.input-area .icon{
  left: 15px;
  color: #bfbfbf;
  transition: color 0.2s ease;
}
.input-area .error-icon{
  right: 15px;
  color: #dc3545;
}
form input:focus ~ .icon,
form .field.valid .icon{
  color: #5372F0;
}
form .field.shake input:focus ~ .icon,
form .field.error input:focus ~ .icon{
  color: #bfbfbf;
}
form input::placeholder{
  color: #bfbfbf;
  font-size: 17px;
}
form .field .error-txt{
  color: #dc3545;
  text-align: left;
  margin-top: 5px;
}
form .field .error{
  display: none;
}
form .field.shake .error,
form .field.error .error{
  display: block;
}
form .pass-txt{
  text-align: left;
  margin-top: -10px;
}
.wrapper a{
  color: #5372F0;
  text-decoration: none;
}
.wrapper a:hover{
  text-decoration: underline;
}
form input[type="submit"]{
  height: 50px;
  margin-top: 30px;
  color: #fff;
  padding: 0;
  border: none;
  background: #5372F0;
  cursor: pointer;
  border-bottom: 2px solid rgba(0,0,0,0.1);
  transition: all 0.3s ease;
}
form input[type="submit"]:hover{
  background: #2c52ed;
}

.styled-table thead tr {
    background-color: #5372F0;
    color: #ffffff;
    text-align: left;
}   
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #5372F0;
}
btn_block {

}
div.a {
  font-size: 15px;
}
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html lang="en">
    <body>
  <div class="wrapper">
    <header>הירשם</header>
    <form method="post" runat="server">
      <div class="field email">
        <div class="input-area">
          <input type="text" id="email" name="email" placeholder="Email Address">
          <i class="icon fas fa-envelope"></i>
        </div>
      </div>
      <div class="field password">
        <div class="input-area">
          <input type="password" name="password" id="password" placeholder="Password">
          <i class="icon fas fa-lock"></i>
        </div>
      </div>
      <div class="pass-txt"><a href="#"><font style="font-size: 20px"> ?שכחת סיסמא </font></a></div>
        <br />
          <h3>
                          
                            </h3>
                        <div class="container">
                            <input type='radio' id='male'  name='radio'>
                            <label for='male'>גבר&#128081;</label>
                            <input type='radio' id='female' name='radio'>
                            <label for='female'>אישה&#129326;</label>
                        </div>
                
      
      <input type="submit"  name="submit" value="הירשמות">

        
                
        
    </form>
      
      
  <%= st %>
    </div>
        
            


</body>






</html>
</asp:Content>
