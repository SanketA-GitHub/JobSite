<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PostedJob.aspx.cs" Inherits="JobSite.PostedJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control"  style="font-size: xx-large; font-family: Arial, Helvetica, sans-serif"><strong>
        Total Posted Job:</strong></p>
    <p>
        <asp:GridView ID="GridView1" CssClass="table table-active table-hover table-dark" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Jno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="900px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Feild" HeaderText="Feild" SortExpression="Feild" />
                <asp:BoundField DataField="Exp" HeaderText="Exp" SortExpression="Exp" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="Jno" HeaderText="Jno" InsertVisible="False" ReadOnly="True" SortExpression="Jno" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT [Feild], [Exp], [Post], [Jno], [Company] FROM [Post_Job]"></asp:SqlDataSource>
    </p>
</asp:Content>
