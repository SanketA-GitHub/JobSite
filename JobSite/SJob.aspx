<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SJob.aspx.cs" Inherits="JobSite.SJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control"><strong>
    List of Jobs:</strong></p>
    <p >
        <%--Height="253px" Width="552px"--%>
        <asp:GridView ID="GridView1" class="table table-active table-light table-borderless table-hover" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Jno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"  OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Jno" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="Jno" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="Exp" HeaderText="Experience" SortExpression="Exp" />
                <asp:BoundField DataField="Feild" HeaderText="Designation" SortExpression="Feild" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-info" Text="Apply" CommandName="Apply" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT [Jno], [Post], [Exp], [Feild], [Company] FROM [Post_Job]"></asp:SqlDataSource>
    </p>
</asp:Content>
