<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSignUp.aspx.cs" Inherits="ByteWise_Login_System.CustomerSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
    <title>Admin Sign Up</title>
</head>
<body>
    <form class="form-control" id="form1" runat="server">
        <div class="text-center">
            <div class="bg-info text-light">
            <h2 class="pt-5 mt-5 font-weight-bold display-4 ">Bytewise Authentication System</h2>
            <h2 class="pt-5 mt-5 h1 ">Customer Sign Up</h2>
            <br />
            <br />
            <br />
            <br />
                </div>
            <div class="mt-5">


                <asp:Label CssClass="h3" ID="Label1" runat="server" Text="ID"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtid" runat="server"></asp:TextBox>
            <br />
            <asp:Label CssClass="h3" ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtemail" runat="server"></asp:TextBox>
            <br />
            <asp:Label CssClass="h3" ID="Label5" runat="server" Text="Password"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtpassword" runat="server"></asp:TextBox>
            <br /> 
            <asp:Label  CssClass="h3" ID="Label6" runat="server" Text="FirstName"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtfname" runat="server"></asp:TextBox>
            <br />
            <asp:Label CssClass="h3" ID="Label7" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtlname" runat="server"></asp:TextBox>
            <br />
            <asp:Label CssClass="h3" ID="Label8" runat="server" Text="Address"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtaddress" runat="server"></asp:TextBox>
            <br />
            <asp:Label CssClass="h3" ID="Label9" runat="server" Text="Customer Membership"></asp:Label>
            <asp:TextBox CssClass="input-group-lg ml-5" ID="txtcustmembership" runat="server" style="margin-bottom: 0px"></asp:TextBox>



            <br />
            <br />
            <asp:Button CssClass="btn btn-primary btn-lg mt-5" ID="Button3" runat="server" Text="Insert" OnClick="Button3_Click" />
                 <asp:Button CssClass="btn btn-primary btn-lg mt-5" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                 <asp:Button CssClass="btn btn-primary btn-lg mt-5" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                 <asp:Button CssClass="btn btn-primary btn-lg mt-5" ID="Button5" runat="server" Text="Select" OnClick="Button5_Click" />
                <asp:GridView ID="gv" runat="server">
                </asp:GridView>
            <asp:Button CssClass="btn btn-lg ml-3 btn-secondary mt-5" ID="Button2" runat="server" Text="Log In" OnClick="Button2_Click" />
                </div>
        </div>
        </form>
</body>
</html>
