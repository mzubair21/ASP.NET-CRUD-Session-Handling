﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ByteWise_Login_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bytewise Authentication System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
</head>
<body>
    <form class="form-control" id="form1" runat="server">
        <div class="text-center">
            <div class="bg-info text-light">
            <h2 class="pt-5 mt-5 font-weight-bold display-4 ">Bytewise Authentication System</h2>
            <h2 class="pt-5 mt-5 h1 ">Login in</h2>
            <br />
            <br />
            <br />
            <br />
                </div>
            <div class="mt-5">
            <asp:Label CssClass="h3" ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtemail" runat="server"></asp:TextBox>
            <br />
            <asp:Label  CssClass="h3" ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-2" ID="txtpassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button CssClass="btn btn-primary btn-lg mt-5" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />
            <asp:Button CssClass="btn btn-lg ml-3 btn-secondary mt-5" ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click" />
                </div>
        </div>
    </form>
</body>
</html>
