<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewApplication.aspx.cs" Inherits="JobSite.ViewApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control" style="font-size:xx-large">
    <strong>Application:</strong></p>
    <p>
        <asp:GridView ID="GridView1" class="table table-active table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand1">
            <Columns>
                <asp:BoundField DataField="Jno" HeaderText="Jno" SortExpression="Jno" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Resume" HeaderText="Resume" SortExpression="Resume" Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="Resume" DataTextField="Resume" HeaderText="Resume" />
                <asp:ButtonField HeaderText="Notify" Text="Send" ButtonType="Button" CommandName="Send" />
            </Columns>
        </asp:GridView>
&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT ApplyJob.Contact, ApplyJob.Resume, ApplyJob.Email, aspnet_Users.UserName, ApplyJob.Jno FROM ApplyJob INNER JOIN aspnet_Users ON ApplyJob.jId = aspnet_Users.UserId INNER JOIN Post_Job ON ApplyJob.Jno = Post_Job.Jno WHERE (Post_Job.cId = @cId)" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:Parameter Name="cId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
