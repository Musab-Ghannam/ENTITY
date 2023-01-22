<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="Customers.customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-row">
            <asp:Label ID="Label1" runat="server" Text="Customer-name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
             <br />
             <br />
               <asp:Label ID="Label2" runat="server" Text="customer-age"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
              <br />
             <br />
             <br />
               <asp:Label ID="Label3" runat="server" Text="city-name"></asp:Label>
          
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
              <br />
             <br />
             <br />
               <asp:Label ID="Label4" runat="server" Text="phone"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
              <br />
             <br />
             <br />
              <asp:Label ID="Label5" runat="server" Text="email"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>

               <br />
             <br />
             <br />
              <asp:Label ID="Label6" runat="server" Text="photo"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
              <br />
             <br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="search" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
              <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
 
        </div>
    </form>
</body>
</html>
