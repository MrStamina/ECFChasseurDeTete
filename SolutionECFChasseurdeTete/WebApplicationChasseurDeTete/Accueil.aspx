<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="WebApplicationChasseurDeTete._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="image">
    <asp:Image ID="Image1" ImageUrl="~/Images/We-want-you-image.png" runat="server" Height="443px" Width="400px" />
        </div>

    <div class="jumbotron">
        <h1>Vous êtes un candidat</h1>

        <p class="lead">Vous êtes un cadre dynamique et vous avez envie de changer de carrière, faites confiance à nos consultants.</p>
        <p>Accédez aux offres d'emploi et répondez aux sollicitations des entreprises
         Faites-vous accompagner par des consultants experts</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Créer un compte &raquo;</a></p>
    </div>

    <div class="jumbotron">      
            <h1>Vous êtes une entreprise</h1>
            <p>
              De nombreux candidats consultent les offres d'emplois chaque jour !        
           
                Publiez vos offres d'emplois et bénéficiez de l'expertise de nos consultants pour vos recrutements          
          
                Trouvez rapidement les meilleurs profils du marché
            </p>
            <p>
                <a class="btn btn-primary btn-lg" href="http://go.microsoft.com/fwlink/?LinkId=301948">Créer un compte &raquo;</a>            
          
                <a class="btn btn-primary btn-lg" href="http://go.microsoft.com/fwlink/?LinkId=301948">Publier une offre &raquo;</a>
            </p>
        </div>
        
  

</asp:Content>
