<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/menu.Master" AutoEventWireup="true" CodeBehind="registrarviajeros.aspx.cs" Inherits="examenfinal.vistas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />

    <div class="sub-title">Registro</div>
    <br />
    Cedula
    <br />
    <asp:TextBox ID="reg_cedula" runat="server"></asp:TextBox>
    <br />
    Nombre
    <br />
    <asp:TextBox ID="reg_nombre" runat="server"></asp:TextBox>
    <br />
    Apellido
    <br />
    <asp:TextBox ID="reg_apellido" runat="server"></asp:TextBox><br />
    <br />
    Pais de nacimiento
    <br />
    <asp:TextBox ID="reg_pais" runat="server"></asp:TextBox>
    <br />
    Fecha de nacimiento
    <br />
    <asp:TextBox ID="reg_fecha" runat="server" placeholder="Formato YYYY-MM-DD"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="registrar_click" />
    <br />
    <asp:Label ID="mensaje_reg" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Ver viajeros" OnClick="ver_viajeros_click"/>
    <br />
    <asp:GridView ID="viajeros_actuales" runat="server"></asp:GridView>
</asp:Content>
