<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EspaceEntreprise.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Bienvenu">
        <p>
            Bienvenue sur votre Espace Entreprise
        </p>
        <asp:Label ID="LabelBienvenu" runat="server" Text=""></asp:Label>
    </div>
 <div class ="Main">
    
    <div class="Menu">
        
<ul id="menu-accordeon">
   <li><a href="#">Menu</a>
      <%--<ul>
         <li><a href="#">Mon identification</a></li>
         <li><a href="#">Changer mon mot de passe</a></li>
         <li><a href="#">Mes missions</a></li>
         <li><a href="#">Consulter les Cv</a></li>
      </ul>--%>
   </li>
    <li><a href="#">Gestion du compte</a>
      <ul>
         <li><a href="ModifIdentifiantsEntreprise.aspx">Changer mes identifiants</a></li>
         
         <li><a href="ModifInfos.aspx">Modifier les informations</a></li>
         <%--<li><a href="#">Lien sous menu 2</a></li>--%>
      </ul>
   </li>
   <li><a href="#">Gérer mes missions</a>
      <ul>
         <li>
             <a href="SuiviMission.aspx">Suivi des missions</a>
             </li>
         <li><a href="#">Consulter les Cv</a></li>
         <li><a href="#">Contacter mon consultant</a></li>
         <li><a href="#">Proposer une mission</a></li>
      </ul>
   </li>
    <li><asp:HyperLink NavigateUrl="~/Accueil.aspx" ID="HyperLink2" runat="server">Retour accueil</asp:HyperLink>
        </li>
    
</ul>
    </div>
     
 </div>
</asp:Content>
