<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifIdentifiantsEntreprise.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center" style="font-size: x-large">Modifiez vos informations de connexion</h4><hr />
    <div class ="AffichageLogin">
    <asp:Panel   ID="Panel2" runat="server" GroupingText="Informations de connexion">
            <p>
            <asp:Label CssClass="Label" ID="Label12" runat="server" Text="Identifiant de Connexion"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxMailConnexionCand" TextMode="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMailConnexionCand" Text="*" ForeColor="Red" ErrorMessage="Veuillez choisir un identifiant de connexion (type adresse mail)" ></asp:RequiredFieldValidator>
        </p>
             <p>
            <asp:Label CssClass="Label" ID="Label13" runat="server" Text="Mot de passe"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxMdpCand" TextMode="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxMdpCand" ErrorMessage="Veuillez choisir un mot de passe" ForeColor="Red" Text="*" ></asp:RequiredFieldValidator>
        </p>
             <p>
            <asp:Label CssClass="Label" ID="Label14" runat="server" Text="Confirmer le mot de passe"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxConfirmCand" TextMode="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" runat="server" ControlToValidate="TextBoxConfirmCand"  Text="*" ErrorMessage="Veuillez renseigner à nouveau le mot de passe"></asp:RequiredFieldValidator> 
                 <asp:CompareValidator  ID="CompareValidator2" runat="server" ForeColor="Red" ErrorMessage="Le mot de passe doit être identique" ControlToValidate="TextBoxConfirmCand" ControlToCompare="TextBoxMdpCand" ></asp:CompareValidator>                         
        </p>
     
    
          <div class="Bouton">
         <asp:Button ID="ButtonValider" runat="server" Onclick="ButtonValider_Click" Text="Valider" CssClass="btn btn-primary btn-lg"   />
                <asp:Button ID="ButtonCancel" PostBackUrl="~/Compte/EspaceEntreprise.aspx" runat="server" Text="Annuler" CssClass="btn btn-primary btn-lg"  CausesValidation="false"/>
              </div>
                <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server"  />
                </asp:Panel>
        
     
        </div>
</asp:Content>
