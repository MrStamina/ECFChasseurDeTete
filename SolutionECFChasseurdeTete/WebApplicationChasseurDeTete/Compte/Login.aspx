<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center" style="font-size: x-large">Entrez vos informations de connexion</h4><hr />
    <div class ="AffichageLogin">
    <p>
       <asp:Label CssClass="Label" ID="LabelAdresseMail" runat="server" Text="Entrer votre adresse mail"></asp:Label>
    <asp:TextBox CssClass="TextBox" ID="TextBoxMail" TextMode="Email" runat="server"></asp:TextBox>
        </p>
    <p>
        <asp:Label CssClass="Label" ID="LabelMdp" runat="server" Text="Entrer votre mot de passe"></asp:Label>
    <asp:TextBox CssClass="TextBox" ID="TextBoxMdp" TextMode="Password" runat="server"></asp:TextBox></p>
        
           <div  class ="Bouton">
        <asp:Button ID="ButtonConnect" runat="server" Text="Se connecter" CssClass="btn btn-primary btn-lg" OnClick="ButtonConnect_Click"/>
           
        </div>
        <asp:Label ID="LabelErreur" ForeColor="Red" runat="server" Text=""></asp:Label>
        </div>

</asp:Content>
