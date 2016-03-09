<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuiviMission.aspx.cs" Inherits="WebApplicationChasseurDeTete.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Affichage">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="IdMission" HeaderText="IdMission" SortExpression="IdMission" Visible="False" />
                <asp:BoundField DataField="DateOuverture" DataFormatString="{0:d}" HeaderText="DateOuverture" SortExpression="DateOuverture" />
                <asp:BoundField DataField="Precisions" HeaderText="Precisions" SortExpression="Precisions" />
                <asp:BoundField DataField="RemunerationProposee" HeaderText="RemunerationProposee" SortExpression="RemunerationProposee" />
                <asp:BoundField DataField="Duree" HeaderText="Duree" SortExpression="Duree" />
                <asp:BoundField DataField="DateFin" DataFormatString="{0:d}" HeaderText="DateFin" SortExpression="DateFin" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllMissionsByEnt" TypeName="ClassChasseurDT.Dao.DaoMissions">
            <SelectParameters>
                <asp:SessionParameter Name="idEnt" SessionField="idEnt" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

    </div>
</asp:Content>
