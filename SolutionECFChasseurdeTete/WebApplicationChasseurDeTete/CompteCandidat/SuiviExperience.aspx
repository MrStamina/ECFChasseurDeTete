<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuiviExperience.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center" style="font-size: x-large">Récapitulatif de vos expériences</h4><hr />
    <div class="Affichage">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="IdExperience" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField InsertVisible="False" ShowEditButton="True" />
                <asp:BoundField DataField="IdExperience" HeaderText="IdExperience" InsertVisible="False" ReadOnly="True" SortExpression="IdExperience" Visible="False" />
                <asp:BoundField DataField="IdQualification" HeaderText="IdQualification" SortExpression="IdQualification" Visible="False" />
                <asp:BoundField DataField="IdCandidat" HeaderText="IdCandidat" SortExpression="IdCandidat" Visible="False" />
                <asp:BoundField DataField="IdEntreprise" HeaderText="IdEntreprise" SortExpression="IdEntreprise" Visible="False" />
                <asp:TemplateField HeaderText="Date de début" SortExpression="DateDebut">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateDebut", "{0:d}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateDebut", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date de Fin" SortExpression="DateFin">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DateFin", "{0:d}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DateFin", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="RaisonSociale" HeaderText="Nom de l'entreprise" SortExpression="RaisonSociale" />
                <asp:BoundField DataField="LibelleQualification" HeaderText="Qualification" SortExpression="LibelleQualification" />
                <asp:BoundField DataField="Commentaire" HeaderText="Commentaire" SortExpression="Commentaire" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChasseurDeTete %>" SelectCommand="GetAllExperiencesByCand" SelectCommandType="StoredProcedure" DeleteCommand="DelExperience" DeleteCommandType="StoredProcedure" InsertCommand="AddExperience" InsertCommandType="StoredProcedure" UpdateCommand="UpdExperience" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="idExperience" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idQualification" Type="Int32" />
                <asp:Parameter Name="idCandidat" Type="Int32" />
                <asp:Parameter Name="idEntreprise" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DateDebut" />
                <asp:Parameter DbType="Date" Name="DateFin" />
                <asp:Parameter Name="Commentaire" Type="String" />
                <asp:Parameter Direction="InputOutput" Name="idExperience" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="idCandidat" SessionField="IdCand" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="idExperience" Type="Int32" />
                <asp:Parameter Name="idQualification" Type="Int32" />
                <asp:Parameter Name="idCandidat" Type="Int32" />
                <asp:Parameter Name="idEntreprise" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DateDebut" />
                <asp:Parameter DbType="Date" Name="DateFin" />
                <asp:Parameter Name="Commentaire" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="Bouton">
            <asp:Button ID="ButtonCancel" PostBackUrl="~/CompteCandidat/EspaceCandidat.aspx" runat="server" Text="Retour" CssClass="btn btn-primary btn-lg"  CausesValidation="false"/>
        </div>

        </div>
</asp:Content>
