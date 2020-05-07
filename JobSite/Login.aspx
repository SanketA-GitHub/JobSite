<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JobSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control" style="text-decoration: underline; font-size: xx-large; font-family: Georgia, 'Times New Roman', Times, serif">
    <strong>LOGIN HERE</strong></p>
<p>
    <asp:Login ID="Login2" CheckBoxStyle-CssClass="table-active table-borderless font-weight-bold"  runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Height="183px" Width="260px">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:Login>
</p>

</asp:Content>
