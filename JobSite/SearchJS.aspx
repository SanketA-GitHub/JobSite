<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SearchJS.aspx.cs" Inherits="JobSite.SearchJS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" Class="table table-active table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="jname" HeaderText="Name" SortExpression="jname" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="stream" HeaderText="Stream" SortExpression="stream" />
                <asp:BoundField DataField="m10" HeaderText="Primary Edu" SortExpression="m10" />
                <asp:BoundField DataField="m12" HeaderText="Secondary Edu" SortExpression="m12" />
                <asp:BoundField DataField="bachlor" HeaderText="Bachlor" SortExpression="bachlor" />
                <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                <asp:BoundField DataField="Spec" HeaderText="Specialization" SortExpression="Spec" />
                <asp:BoundField DataField="Exp" HeaderText="Experience" SortExpression="Exp" />
                <asp:BoundField DataField="Resume" HeaderText="Resume" SortExpression="Resume" Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="Resume" DataTextField="Resume" HeaderText="Resume" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT ApplyJob.Contact, ApplyJob.Email, ApplyJob.Resume, jEDetails.jname, jEDetails.m10, jEDetails.m12, jEDetails.bachlor, jEDetails.Master, jEDetails.Spec, jEDetails.stream, jEDetails.Exp FROM ApplyJob INNER JOIN jEDetails ON ApplyJob.jId = jEDetails.jId"></asp:SqlDataSource>
    </p>
    </asp:Content>
