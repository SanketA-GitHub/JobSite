<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PostJob.aspx.cs" Inherits="JobSite.PostJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control" >
    <strong> Requirement:</strong></p>
<table class="table table-active table-light table-borderless table-hover">
    <tr>
        <td style="font-size: large; width: 167px">Designation: </td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txtDesignation" runat="server" Width="299px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDesignation" ErrorMessage="Required"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 167px">Post:</td>
        <td>
            <asp:TextBox ID="txtPost" runat="server" Width="299px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPost" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 167px">Experience:</td>
        <td>
            <asp:TextBox ID="txtExp" CssClass="form-control" runat="server" Width="299px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtExp" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 167px">Company:</td>
        <td>
            <asp:TextBox ID="txtComp" CssClass="form-control" runat="server" Width="299px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtComp" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="font-size: large">
            <asp:Button ID="btnPost" runat="server" class="btn btn-primary btn-lg" OnClick="btnPost_Click" Text="Post"  />
            <br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
