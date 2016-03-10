<%@ Page Title="S'inscrire" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplicationChasseurDeTete.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">    
    

   
        <h4 class="text-center" style="font-size: x-large">Créer un nouveau compte</h4><hr />
     <div class="Choix">
         <asp:Label CssClass="Label" ID="LabelChoix" runat="server"  Text="Vous êtes :"></asp:Label><br />
         <asp:Button CssClass="BoutonChoix" ID="ButtonCandidat" runat="server" Text="Un candidat" OnClick="ButtonCandidat_Click" CausesValidation="false" />
         &nbsp;&nbsp;
         <asp:Button CssClass="BoutonChoix" ID="ButtonEntreprise" runat="server" CausesValidation="false" Text="Une entreprise" OnClick="ButtonEntreprise_Click" />
        </div>
        <asp:Panel ID="PanelCreation" CssClass="Panel" GroupingText="Informations générales" runat ="server" Visible="False">
        <p>
        <asp:Label CssClass="Label" ID="LabelNom" runat="server" Text="Nom de l'entreprise"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxNom" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" runat="server" ControlToValidate="TextBoxNom" ErrorMessage="Veuillez indiquer le nom de l'entreprise" ForeColor="Red" Text="*" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelAdresse" runat="server" Text="Adresse"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxAdresse" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdresse" runat="server" ControlToValidate="TextBoxAdresse" ForeColor="Red" ErrorMessage="Veuillez indiquer l'adresse de l'entreprise" Text="*" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelComplement" runat="server" Text="Complément d'adresse"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxComplement" runat="server" MaxLength="30"></asp:TextBox>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelCodePostal" runat="server" Text="Code Postal"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxCodePostal" runat="server" MaxLength="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCodePostal" runat="server" ControlToValidate="TextBoxCodePostal" ForeColor="Red" ErrorMessage="Veuillez indiquer le code postal" Text="*" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelVille" runat="server" Text="Ville"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxVille" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorVille" runat="server" ControlToValidate="TextBoxVille" ErrorMessage="Veuillez indiquer la ville" ForeColor="Red" Text="*" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelClient" runat="server" Text="Vous êtes client ?"></asp:Label>
             <asp:DropDownList CssClass="TextBox" ID="DropDownListClient" runat="server" AutoPostBack="True">
                 <asp:ListItem>Sélectionnez une réponse</asp:ListItem>
                 <asp:ListItem Value="1">Oui</asp:ListItem>
                 <asp:ListItem Value="2">Non</asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorClient" runat="server" ControlToValidate="DropDownListClient" InitialValue="0" Text="*" ForeColor="Red" ErrorMessage="Veuillez indiquer si vous êtes client ou non" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelContact" runat="server" Text="Contact"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxContact" runat="server" MaxLength="50"></asp:TextBox>
            
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelTel" runat="server" Text="Telephone"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxTel" runat="server" TextMode="Number" MaxLength="20"></asp:TextBox>
            
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelMail" runat="server" Text="Adresse mail"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxMail" TextMode="Email" runat="server" MaxLength="30"></asp:TextBox>
           
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelSecteur" runat="server" Text="Votre secteur d'activité"></asp:Label>
            <asp:DropDownList  CssClass="TextBox" ID="DropDownListSecteur" runat="server" AppendDataBoundItems="True" AutoPostBack="True"></asp:DropDownList>

        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelPole" runat="server" Text="Votre secteur géographique"></asp:Label>
            <asp:DropDownList  CssClass="TextBox" ID="DropDownListPole" runat="server" AppendDataBoundItems="True" AutoPostBack="True"></asp:DropDownList>
        </p>
        <asp:Panel   ID="PanelIdentification" runat="server" GroupingText="Informations de connexion">
            <p>
            <asp:Label CssClass="Label" ID="LabelIdentification" runat="server" Text="Identifiant de Connexion"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxIdentification" TextMode="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorIdentification" runat="server" ControlToValidate="TextBoxIdentification" Text="*" ForeColor="Red" ErrorMessage="Veuillez choisir un identifiant de connexion (type adresse mail)" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
             <p>
            <asp:Label CssClass="Label" ID="LabelMotDePasse" runat="server" Text="Mot de passe"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxMdp" TextMode="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorMdp" runat="server" ControlToValidate="TextBoxMdp" ErrorMessage="Veuillez choisir un mot de passe" ForeColor="Red" Text="*" ValidationGroup="ValiderEntreprise"></asp:RequiredFieldValidator>
        </p>
             <p>
            <asp:Label CssClass="Label" ID="LabelConfirmation" runat="server" Text="Confirmer le mot de passe"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxConfirmation" TextMode="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmation" ForeColor="Red" runat="server" ControlToValidate="TextBoxConfirmation" Text="*" ErrorMessage="Veuillez renseigner à nouveau le mot de passe" ValidationGroup="ValidationEntreprise"></asp:RequiredFieldValidator> 
                 <asp:CompareValidator  ID="CompareValidator1" runat="server" ErrorMessage="Le mot de passe doit être identique" ForeColor="Red" ControlToValidate="TextBoxConfirmation" ControlToCompare="TextBoxMdp" ValidationGroup="ValidationEntreprise"></asp:CompareValidator>             
        </p>
        </asp:Panel>
            <div class ="Bouton">
         <asp:Button ID="ButtonValider" ValidationGroup="ValiderEntreprise" runat="server" OnClick="ButtonValider_Click" Text="Valider" CssClass="btn btn-primary btn-lg" />
                <asp:Button ID="ButtonRetour" runat="server" Text="Retour" OnClick="ButtonRetour_Click" CssClass="btn btn-primary btn-lg"  CausesValidation="false"/>
                        
           
  </div>
             <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"  ShowMessageBox="False" DisplayMode="BulletList" HeaderText="Récapitulatif des erreurs : " />
    </asp:Panel>
    <asp:Panel ID="PanelCreationCandidat" CssClass="Panel" GroupingText="Informations générales" runat ="server" Visible="False">
        <p>
        <asp:Label CssClass="Label" ID="LabelNomCandidat" runat="server" Text="Nom"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxNomCandidat" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNom" ErrorMessage="Veuillez indiquer votre nom" ForeColor="Red" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelPrenom" runat="server" Text="Prénom"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxPrenom" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAdresse" ForeColor="Red" ErrorMessage="Veuillez indiquer votre prénom" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelDateDeNaissance" runat="server" Text="Date de naissance"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxDateDeNaissance" runat="server" MaxLength="30"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxDateDeNaissance" ForeColor="Red" ErrorMessage="Veuillez indiquer votre date de naissance" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" ControlToCompare="TextBoxDateDeNaissance" Type="Date" Operator="DataTypeCheck" runat="server" Text="*" ErrorMessage="Date au format JJ/MM/AAAA"></asp:CompareValidator>
           <%-- <asp:RangeValidator ID="RangeValidator1" ControlToValidate="TextBoxDateDeNaissance" runat="server" ForeColor="Red" Text="*" ErrorMessage="Vous devez être majeur"></asp:RangeValidator>--%>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelTelephone" runat="server" Text="Telephone"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxTelephone" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxTelephone" ForeColor="Red" ErrorMessage="Veuillez indiquer un numéro de téléphone" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
         <p>
          
            <asp:Label CssClass="Label" ID="LabelAdresseMailCandidat" runat="server" Text="Adresse mail"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxAdresseMailCandidat" TextMode="Email" runat="server" MaxLength="30"></asp:TextBox>          
        
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAdresseMailCandidat" ErrorMessage="Veuillez indiquer votre adresse mail" ForeColor="Red" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelSituPro" runat="server" Text="Situation Professionnelle"></asp:Label>
            <asp:DropDownList  CssClass="TextBox" ID="DropDownListSituPro" runat="server">              
                <asp:ListItem Value ="0">Sans emploi</asp:ListItem>
                <asp:ListItem Value ="1">En poste</asp:ListItem>
            </asp:DropDownList>
           
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelMobilite" runat="server" Text="Vous êtes mobile ?"></asp:Label>
             <asp:DropDownList CssClass="TextBox" ID="DropDownListMobilite" runat="server" AutoPostBack="False">
             
                 <asp:ListItem Value="1">Oui</asp:ListItem>
                 <asp:ListItem Value="0">Non</asp:ListItem>
             </asp:DropDownList>
            
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelSituFami" runat="server" Text="Votre situation familiale"></asp:Label>
             <asp:DropDownList CssClass="TextBox" ID="DropDownListSituFami" runat="server" AutoPostBack="false" AppendDataBoundItems="true">                 
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorSituFam" runat="server" ControlToValidate="DropDownListSituFami" Display="Static" Text="*" InitialValue="0" ForeColor="Red" ErrorMessage="Veuillez indiquer votre situation familiale">

             </asp:RequiredFieldValidator>
        </p>       
                    
        <p>
            <asp:Label CssClass="Label" ID="LabelPoleEmploi" runat="server" Text="Votre secteur géographique"></asp:Label>
            <asp:DropDownList  CssClass="TextBox" ID="DropDownListPoleEmploi" runat="server" AppendDataBoundItems="True" AutoPostBack="False"></asp:DropDownList>
           
        </p>
        <asp:Panel   ID="Panel2" runat="server" GroupingText="Informations de connexion">
            <p>
            <asp:Label CssClass="Label" ID="Label12" runat="server" Text="Identifiant de Connexion"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxMailConnexionCand" TextMode="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMailConnexionCand" Text="*" ForeColor="Red" ErrorMessage="Veuillez choisir un identifiant de connexion (type adresse mail)" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
             <p>
            <asp:Label CssClass="Label" ID="Label13" runat="server" Text="Mot de passe"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxMdpCand" TextMode="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxMdpCand" ErrorMessage="Veuillez choisir un mot de passe" ForeColor="Red" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
             <p>
            <asp:Label CssClass="Label" ID="Label14" runat="server" Text="Confirmer le mot de passe"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxConfirmCand" TextMode="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" runat="server" ControlToValidate="TextBoxConfirmCand" Text="*" ErrorMessage="Veuillez renseigner à nouveau le mot de passe"></asp:RequiredFieldValidator> 
                 <asp:CompareValidator  ID="CompareValidator2" runat="server" ForeColor="Red" ErrorMessage="Le mot de passe doit être identique" ControlToValidate="TextBoxConfirmCand" ControlToCompare="TextBoxMdpCand" ValidationGroup="ValidationCandidat"></asp:CompareValidator>                            
        </p>
        </asp:Panel>
            <div class ="Bouton">
         <asp:Button ID="ButtonValiderCand" runat="server" Onclick="ButtonValiderCand_Click" Text="Valider" CssClass="btn btn-primary btn-lg" ValidationGroup="ValidationCandidat" />
                <asp:Button ID="ButtonRetourCand" runat="server" Text="Retour" OnClick="ButtonRetour_Click" CssClass="btn btn-primary btn-lg"  CausesValidation="false"/>
                        
           
  </div>
             <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red"  ShowMessageBox="False" DisplayMode="BulletList" HeaderText="Récapitulatif des erreurs : " />
    </asp:Panel>

  
</asp:Content>
