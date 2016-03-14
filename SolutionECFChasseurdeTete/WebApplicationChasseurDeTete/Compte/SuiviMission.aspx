<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuiviMission.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center" style="font-size: x-large">Récapitulatif de vos missions</h4><hr />
    <div class="Affichage">
        <asp:GridView CssClass="GridView" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" CellSpacing="2" DataKeyNames="idMission">
            <Columns>
                <asp:BoundField DataField="idMission" HeaderText="idMission" InsertVisible="False" ReadOnly="True" SortExpression="idMission" Visible="False" />
                <asp:BoundField DataField="idmotif" HeaderText="idmotif" SortExpression="idmotif" Visible="False" />
                <asp:BoundField DataField="idQualification" HeaderText="idQualification" SortExpression="idQualification" Visible="False" />
                <asp:BoundField DataField="idNiveau" HeaderText="idNiveau" SortExpression="idNiveau" Visible="False" />
                <asp:BoundField DataField="DateOuverture" DataFormatString="{0:d}" HeaderText="Date d'ouverture" SortExpression="DateOuverture" />
                <asp:BoundField DataField="remunerationProposee" HeaderText="Rémuneration proposée" SortExpression="remunerationProposee" />
                <asp:BoundField DataField="LibelleQualification" HeaderText="       Qualification" SortExpression="LibelleQualification" />
                <asp:BoundField DataField="Libelle" HeaderText="Niveau" SortExpression="Libelle" />
                <asp:BoundField DataField="Precisions" HeaderText="Precisions" SortExpression="Precisions" />
                <asp:BoundField DataField="Duree" HeaderText="Duree" SortExpression="Duree" />
                <asp:BoundField DataField="datefin" DataFormatString="{0:d}" HeaderText="Date de Fin" SortExpression="datefin" />
                <asp:BoundField DataField="NomConsultant" HeaderText="NomConsultant" SortExpression="NomConsultant" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChasseurDeTete %>" SelectCommand="GetAllMissionsByEnt" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="identreprise" SessionField="IdEnt" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="Bouton">
            <asp:Button ID="ButtonCancel" PostBackUrl="~/Compte/EspaceEntreprise.aspx" runat="server" Text="Retour" CssClass="btn btn-primary btn-lg"  CausesValidation="false"/>
        </div>

    </div>
</asp:Content>
