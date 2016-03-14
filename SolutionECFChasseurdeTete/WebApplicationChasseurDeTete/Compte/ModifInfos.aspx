<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifInfos.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm4" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center" style="font-size: x-large">Modifier vos informations</h4>
        <hr />
        <asp:Panel ID="PanelCreation" CssClass="Panel" GroupingText="Informations générales" runat ="server">
        <p>
        <asp:Label CssClass="Label" ID="LabelNom" runat="server" Text="Nom de l'entreprise"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxNom" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" runat="server" ControlToValidate="TextBoxNom" ErrorMessage="Veuillez indiquer le nom de l'entreprise" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelAdresse" runat="server" Text="Adresse"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxAdresse" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdresse" runat="server" ControlToValidate="TextBoxAdresse" ForeColor="Red" ErrorMessage="Veuillez indiquer l'adresse de l'entreprise" Text="*"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelComplement" runat="server" Text="Complément d'adresse"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxComplement" runat="server" MaxLength="30"></asp:TextBox>
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelCodePostal" runat="server" Text="Code Postal"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxCodePostal" runat="server" MaxLength="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCodePostal" runat="server" ControlToValidate="TextBoxCodePostal" ForeColor="Red" ErrorMessage="Veuillez indiquer le code postal" Text="*"></asp:RequiredFieldValidator>
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelVille" runat="server" Text="Ville"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxVille" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorVille" runat="server" ControlToValidate="TextBoxVille" ErrorMessage="Veuillez indiquer la ville" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelClient" runat="server" Text="Vous êtes client ?"></asp:Label>
             <asp:DropDownList CssClass="TextBox" ID="DropDownListClient" runat="server" AutoPostBack="True">
                 <asp:ListItem>Sélectionnez une réponse</asp:ListItem>
                 <asp:ListItem Value="1">Oui</asp:ListItem>
                 <asp:ListItem Value="0">Non</asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorClient" runat="server" ControlToValidate="DropDownListClient" Text="*" ForeColor="Red" ErrorMessage="Veuillez indiquer si vous êtes client ou non"></asp:RequiredFieldValidator>
        </p>
         <p>
            <asp:Label CssClass="Label" ID="LabelContact" runat="server" Text="Contact"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxContact" runat="server" MaxLength="50"></asp:TextBox>
            
        </p>
        <p>
            <asp:Label CssClass="Label" ID="LabelTel" runat="server" Text="Telephone"></asp:Label>
            <asp:TextBox CssClass="TextBox" ID="TextBoxTel" runat="server" MaxLength="20" ></asp:TextBox>
            <ajaxToolkit:MaskedEditExtender TargetControlID="TextBoxTel" MessageValidatorTip="true" MaskType="Number" Mask="99-99-99-99-99" ID="MaskedEditExtender3" runat="server" />
            
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
             <div class ="Bouton">
            <asp:Button ID="ButtonValider" runat="server" Text="Valider" CssClass="btn btn-primary btn-lg" OnClientClick="return confirm('Etes-vous sûr(e) de vouloir modifier?');" OnClick="ButtonValider_Click" />
                <asp:Button ID="ButtonRetour" runat="server" Text="Retour" PostBackUrl="~/Compte/EspaceEntreprise.aspx"  CssClass="btn btn-primary btn-lg" />
                 </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"  ShowMessageBox="False" DisplayMode="BulletList" HeaderText="Récapitulatif des erreurs : " />
            </asp:Panel>
</asp:Content>
