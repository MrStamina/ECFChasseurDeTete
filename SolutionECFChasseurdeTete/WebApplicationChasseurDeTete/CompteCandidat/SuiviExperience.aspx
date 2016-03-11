<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuiviExperience.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center" style="font-size: x-large">Récapitulatif de vos expériences</h4><hr />
    <div class="Affichage">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="IdExperience" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="IdExperience" HeaderText="IdExperience" InsertVisible="False" ReadOnly="True" SortExpression="IdExperience" Visible="False" />
                <asp:BoundField DataField="IdQualification" HeaderText="IdQualification" SortExpression="IdQualification" Visible="False" />
                <asp:BoundField DataField="IdCandidat" HeaderText="IdCandidat" SortExpression="IdCandidat" Visible="False" />
                <asp:BoundField DataField="IdEntreprise" HeaderText="IdEntreprise" SortExpression="IdEntreprise" Visible="False" />
                <asp:BoundField DataField="DateDebut" DataFormatString="{0:d}" HeaderText="Date de début" SortExpression="DateDebut" />
                <asp:BoundField DataField="DateFin" DataFormatString="{0:d}" HeaderText="Date de fin" SortExpression="DateFin" />
                <asp:BoundField DataField="Commentaire" HeaderText="Commentaire" SortExpression="Commentaire" />
                <asp:BoundField DataField="RaisonSociale" HeaderText="Nom de l'entreprise" SortExpression="RaisonSociale" />
                <asp:BoundField DataField="LibelleQualification" HeaderText="Qualification" SortExpression="LibelleQualification" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChasseurDeTete %>" SelectCommand="GetAllExperiencesByCand" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="idCandidat" SessionField="IdCand" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
