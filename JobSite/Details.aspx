<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="JobSite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <p class="form-control"><strong>Details:</strong></p><br />
    <table class="table table-active table-light table-bordered table-hover">
        <tr>
            <td class="font">Stream:</td>
            <td>
                <asp:TextBox ID="txtStream" class="form-control" runat="server" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStream" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">10thMarks:</td>
            <td >
                <asp:TextBox ID="txt10"  class="form-control" runat="server"  Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt10" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">12th/Diploma Marks:</td>
            <td >
                <asp:TextBox ID="txt12"  class="form-control" runat="server"  Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt12" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">Bachlors:</td>
            <td >
                <asp:TextBox ID="txtBachlor"  class="form-control" runat="server"  Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBachlor" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">Masters:</td>
            <td >
                <asp:TextBox ID="txtMaster"  class="form-control" runat="server"  Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMaster" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">Experience:</td>
            <td >
                <asp:TextBox ID="txtExp"  class="form-control" runat="server"  Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtExp" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="font">Specialization:</td>
            <td >
                <asp:TextBox ID="txtSpec"  class="form-control" runat="server" Height="74px" TextMode="MultiLine" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSpec" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Button" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="txtmsg" Style="font-size:x-large" runat="server" CssClass="form-check-label alert-success"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
