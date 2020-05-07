<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ApplyJob.aspx.cs" Inherits="JobSite.ApplyJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control" style="font-size:xx-large">
    Apply to Job here:</p>
    <table class="table table-active table-bordered table-hover">
        <tr>
            <td class="font">JobNo:</td>
            <td>
                <asp:TextBox ID="txtJno" CssClass="form-control" runat="server" ReadOnly="True" Width="223px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Contact no:</td>
            <td >
                <asp:TextBox ID="txtCno" CssClass="form-control" runat="server" MaxLength="10" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Required" runat="server" ControlToValidate="txtCno" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCno" ErrorMessage="Invalid" ValidationExpression="^[7-9]{2}[0-9]{8}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="font" style="height: 42px">Email ID:</td>
            <td style="height: 42px" >
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">Resume:</td>
            <td>
                <asp:FileUpload class="file-upload" ID="RUpload" runat="server"   />
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server"  OnClick="btnSubmit_Click" Text="Submit"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="SubmitMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
