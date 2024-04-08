<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mamedoff.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div id="form1" class="nigga" style="font-family: Arial, sans-serif;
background-color: #f4f4f4;
margin: 0;
padding: 0;
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
background-image: url('images/R.jpg');
background-size: cover;
background-position: center;">

    <div class="login-container" style=" background-color: rgba(255, 255, 255, 0.9);
padding: 20px;
border-radius: 8px;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
width: 300px;
text-align: center;">
        <h3>Login Here</h3>

        <label for="username">Username</label>
        <asp:TextBox ID="usernameTextBox" runat="server" placeholder="Username"></asp:TextBox>

        <label for="password">Password</label>
        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>

        <asp:Button ID="loginButton" runat="server" OnClick="LoginButton_Click" Text="Log In" />
    </div>
</div>
</asp:Content>
