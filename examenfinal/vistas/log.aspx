<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="examenfinal.vistas.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cedula
            <asp:TextBox ID="log_cedula" runat="server"></asp:TextBox>
            <br />
            Contraseña
            <asp:TextBox ID="log_passw" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="ingresar_click" />
            <br />
            <asp:Label ID="log_label" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
