<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="WebApplicationChasseurDeTete._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="image">
    <asp:Image ID="Image1" ImageUrl="~/Images/We-want-you-image.png" runat="server" Height="443px" Width="400px" />
        </div>

    <div class="jumbotron">
        <h1>Vous êtes un candidat</h1>
        <p >
        Cadre dynamique , vous avez envie de booster votre carrière ? <br />
             Inscrivez-vous et laissez nos consultants vous trouver le job idéal !<br />
        Accédez aux offres d'emploi et répondez aux sollicitations des entreprises.<br />
         Faites-vous accompagner par des consultants experts !
        </p>
        <p>
            <a href="Compte/Register.aspx" class="btn btn-primary btn-lg">Créer un compte &raquo;</a>

        </p>
    </div>

    <div class="jumbotron">      
            <h1>Vous êtes une entreprise</h1>
            <p >
              De nombreux candidats consultent les offres d'emplois chaque jour !  <br />     
           
                Publiez vos offres d'emplois et bénéficiez de l'expertise de nos consultants pour vos recrutements.    <br />      
          
                Trouvez rapidement les meilleurs profils du marché !
            </p>
            <p>
                <a class="btn btn-primary btn-lg" href="Compte/Register.aspx">Créer un compte &raquo;</a>           
          
                <asp:LinkButton CssClass="btn btn-primary btn-lg" ID="LinkButtonOffre" OnClick="LinkButtonOffre_Click" runat="server">Publier une offre&raquo;</asp:LinkButton>  
            </p>
        </div>
        
  

</asp:Content>
