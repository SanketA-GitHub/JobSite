<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EditJob.aspx.cs" Inherits="JobSite.EditJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control " style="font-size:xx-large"><strong>
    Select Job To Edit:</strong></p>
    <table class="table table-active table-light table-borderless">
        <tr>
            <td style="width: 143px">Select JobNo:</td>
            <td>
                <asp:DropDownList ID="ddljNo" CssClass="form-control" runat="server" AutoPostBack="True" Height="35px"  Width="203px" OnSelectedIndexChanged="ddljNo_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">Post:</td>
            <td>
                <asp:TextBox ID="txtPost" CssClass="form-control" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">Experience:</td>
            <td>
                <asp:TextBox ID="txtExp" CssClass="form-control" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">Designation:</td>
            <td>
                <asp:TextBox ID="txtDesig" CssClass="form-control" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnUpdate" CssClass="btn  btn-danger" runat="server"  Text="Update
                    "  OnClick="btnUpdate_Click1"   />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" CssClass="form-check-label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
