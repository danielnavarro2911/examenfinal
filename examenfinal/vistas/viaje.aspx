<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/menu.Master" AutoEventWireup="true" CodeBehind="viaje.aspx.cs" Inherits="examenfinal.vistas.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Seleccione Pais de origen
    <br />
    <br />
    <asp:DropDownList ID="drop_pais_origen" runat="server"></asp:DropDownList>
    <br />
    <br />
    Seleccione Pais de destino
    <br />
    <br />
    <asp:DropDownList ID="drop_pais_destino" runat="server"></asp:DropDownList>
    <br />
    <br />
    Seleccione cedula de viajero
    <br />
    <br />
    <asp:DropDownList ID="drop_cedula_viajero" runat="server"></asp:DropDownList>
    <br />
    <br />
    Seleccione fecha de ingreso
    <br />
    <br />
  <asp:Calendar ID="fecha_ingreso" runat="server"></asp:Calendar>
    <br />
    <br />
    Seleccione fecha de salida
    <br />
    <br />
    <asp:Calendar ID="fecha_salida" runat="server"></asp:Calendar>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="guardar_click"/>
    <br />
    <br />
    <asp:Label ID="guardar_mensaje" runat="server" Text=""></asp:Label>
</asp:Content>
