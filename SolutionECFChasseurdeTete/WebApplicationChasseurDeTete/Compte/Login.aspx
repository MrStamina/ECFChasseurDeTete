<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <p>Entrer adresse mail
    <asp:TextBox ID="TextBoxMail" TextMode="Email" runat="server"></asp:TextBox>
        </p>
    <p>Entrer le mot de passe
    <asp:TextBox ID="TextBoxMdp" TextMode="Password" runat="server"></asp:TextBox></p>
        <p>
        <asp:Button ID="ButtonConnect" runat="server" Text="Se connecter" CssClass="" OnClick="ButtonConnect_Click"/>
            </p>
        </div>

</asp:Content>
