<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifierCandidat.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm8" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h4 class="text-center" style="font-size: x-large">Modifier vos informations</h4>
        <hr />
     <asp:Panel ID="PanelCreationCandidat" CssClass="Panel" GroupingText="Informations générales" runat ="server" Visible="true">
        <p>
        <asp:Label CssClass="Label" ID="LabelNomCandidat" runat="server" Text="Nom"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxNomCandidat" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNomCandidat" ErrorMessage="Veuillez indiquer votre nom" ForeColor="Red" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelPrenom" runat="server" Text="Prénom"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxPrenom" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPrenom" ForeColor="Red" ErrorMessage="Veuillez indiquer votre prénom" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelDateDeNaissance" runat="server" Text="Date de naissance"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxDateDeNaissance" runat="server" MaxLength="30"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxDateDeNaissance" ForeColor="Red" ErrorMessage="Veuillez indiquer votre date de naissance" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" ControlToValidate="TextBoxDateDeNaissance" Operator="LessThanEqual" Type="Date" runat="server" ForeColor="Red" ErrorMessage="Vous devez être majeur pour vous inscrire"></asp:CompareValidator>
           
            <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="TextBoxDateDeNaissance" MaskType="Date" Mask="99/99/9999" runat="server" MessageValidatorTip="true" />
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelTelephone" runat="server" Text="Telephone"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxTelephone"  runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxTelephone" ForeColor="Red" ErrorMessage="Veuillez indiquer un numéro de téléphone" Text="*" ValidationGroup="ValidationCandidat"></asp:RequiredFieldValidator>
             <ajaxToolkit:MaskedEditExtender TargetControlID="TextBoxTelephone" MessageValidatorTip="true" MaskType="Number" Mask="99-99-99-99-99" ID="MaskedEditExtender3" runat="server" />
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
             
                 <asp:ListItem Value="0">Oui</asp:ListItem>
                 <asp:ListItem Value="1">Non</asp:ListItem>
             </asp:DropDownList>
            
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelSituFami" runat="server" Text="Votre situation familiale"></asp:Label>
             <asp:DropDownList CssClass="TextBox" ID="DropDownListSituFami" runat="server" AutoPostBack="false" AppendDataBoundItems="true">                 
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorSituFam" runat="server" ControlToValidate="DropDownListSituFami" Display="Static" Text="*" InitialValue="0" ForeColor="Red" ErrorMessage="Veuillez indiquer votre situation familiale" ValidationGroup="ValidationCandidat">

             </asp:RequiredFieldValidator>
        </p>       
                    
        <p>
            <asp:Label CssClass="Label" ID="LabelPoleEmploi" runat="server" Text="Votre secteur géographique"></asp:Label>
            <asp:DropDownList  CssClass="TextBox" ID="DropDownListPoleEmploi" runat="server" AppendDataBoundItems="True" AutoPostBack="False"></asp:DropDownList>
           
        </p>
        
            <div class ="Bouton">
         <asp:Button ID="ButtonValiderCand" runat="server" Onclick="ButtonValiderCand_Click" Text="Valider" CssClass="btn btn-primary btn-lg" ValidationGroup="ValidationCandidat"  />
                <asp:Button ID="ButtonRetourCand" runat="server" Text="Retour" PostBackUrl="~/CompteCandidat/EspaceCandidat.aspx" CssClass="btn btn-primary btn-lg"  CausesValidation="false"/>
                        
           
  </div>
             <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red"  ShowMessageBox="False" DisplayMode="BulletList" HeaderText="Récapitulatif des erreurs : " />
    </asp:Panel>
</asp:Content>
