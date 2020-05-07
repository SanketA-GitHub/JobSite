<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="JobSite.error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="head" style="font-size: x-large; color: #FF0000; background-color: #FFFFFF">
        <strong>Eror 404
</strong>
</p>
<p class="form-control alert-danger" style="font-size: x-large; color: #FF0000; background-color: #FFFFFF">
    <strong>Page Not Found</strong></p>
<p >
    <strong>
    <asp:Label ID="lblerror" cssclass="form-control " runat="server"  style="font-size: x-large; color: #FF0000; background-color: #FFFFFF"></asp:Label>
    </strong></p>
    
</asp:Content>
