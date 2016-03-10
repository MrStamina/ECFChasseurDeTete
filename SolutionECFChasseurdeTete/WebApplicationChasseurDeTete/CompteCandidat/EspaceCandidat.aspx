<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EspaceCandidat.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="Bienvenu">
        <p>
            Bienvenue sur votre Espace Candidat
        </p>
        <asp:Label ID="LabelBienvenu" runat="server" Text=""></asp:Label>
    </div>
    <div class ="Main">
    
    <div class="Menu">
        
<ul id="menu-accordeon">
   <li><a href="#">Menu</a>
     
   </li>
    <li><a href="#">Gestion du compte</a>
      <ul>
         <li><a href="#">Mon identification</a></li>
         <li><a href="#">Changer de mot de passe</a></li>
         <li><a href="#">Modifier mes informations</a></li>     
         <li><a href="#">Mes Expèriences</a></li>
         <li><a href="#">Mes Diplômes</a></li>
         <li><a href="#">Les poste recherchés</a></li>
         
      </ul>
   </li>
    <li><a href="#">Retour accueil</a>
        </li>
</ul>
    </div>
     
 </div>
</asp:Content>
