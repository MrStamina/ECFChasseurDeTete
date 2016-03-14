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
         <li><a href="ModifIdentifiantsCand">Changer mes identifiants</a></li>    
         <li><a href="ModifierCandidat.aspx">Modifier mes informations</a></li>     
         <li><a href="SuiviExperience.aspx">Mes Expériences</a></li>
         <li><a href="#">Mes Diplômes</a></li>
         <li><a href="#">Les poste recherchés</a></li>
         
      </ul>
   </li>
    <li><asp:HyperLink NavigateUrl="~/Accueil.aspx" ID="HyperLink1" runat="server">Retour accueil</asp:HyperLink>
        </li>
</ul>
    </div>
     
 </div>
</asp:Content>
