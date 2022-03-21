<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ByteWise_Login_System.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
    <title>Bytewise SignUp</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
            <div class="bg-info text-light">
            <h2 class="pt-5 mt-5 font-weight-bold display-4 ">Bytewise Authentication System</h2>
            <h2 class="pt-5 mt-5 h1 ">Sign Up</h2>
            <br />
            <br />
            <br />
            <br />
                </div>

            <div class="mt-5">
            <asp:Button CssClass="btn btn-danger" ID="Button1" runat="server" OnClick="Button1_Click" Text="Admin SIGN UP" />
            <br />
            <br />
            <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" OnClick="Button2_Click" Text="Employee SIGN UP" />
            <br />
            <br />
            <asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" OnClick="Button3_Click" Text="Customer SIGN UP" />
            <br />
            <br />
            <asp:Button  CssClass="btn btn-info" ID="Button4" runat="server" OnClick="Button4_Click" Text="Supplier SIGN UP" />
                </div>
        </div>
    </form>
</body>
</html>
