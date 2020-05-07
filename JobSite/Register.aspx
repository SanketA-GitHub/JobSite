<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JobSite.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="form-control" style="font-size: xx-large; font-family: Georgia, 'Times New Roman', Times, serif; text-decoration: underline">
    <strong><dfn style="font-style: normal">Register With US</dfn></strong></p>
<p style="font-size: xx-large; font-family: Georgia, 'Times New Roman', Times, serif">
    <h3 class="font-weight-normal">Create New User</h3>  
    <asp:Label id="Msg" ForeColor="maroon" runat="server" />  
    <br />  
    <table class="table table-active table-light table-borderless">  
        <tr>  
            <td></td>  
            <td colspan="2">  
                <b>Sign Up for New User Account</b>  
            </td>  
        </tr>  
        <tr>  
            <td class="font">UserName:</td>  
            <td>  
                <asp:TextBox ID="txtUserName" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="rqfUserName" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font">Password:</td>  
            <td>  
                <asp:TextBox ID="txtPwd" Class="form-control" runat="server" TextMode="Password"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font">Confirm Password:</td>  
            <td>  
                <asp:TextBox ID="txtCnfPwd" Class="form-control" runat="server" TextMode="Password"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator id="PasswordConfirmRequiredValidator" runat="server" ControlToValidate="txtCnfPwd" ForeColor="red" Display="Dynamic" ErrorMessage="Required" />  
                <asp:CompareValidator id="PasswordConfirmCompareValidator" runat="server" ControlToValidate="txtCnfPwd" ForeColor="red" Display="Dynamic" ControlToCompare="txtPwd" ErrorMessage="Confirm password must match password." />  
            </td>  
        </tr>  
        <tr>  
            <td class="font">Email:</td>  
            <td>  
                <asp:TextBox ID="txtEmail" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Static" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font">Security Question:</td>  
            <td>  
                <asp:TextBox ID="txtQuestion" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtQuestion" Display="Static" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font">Security Answer:</td>  
            <td>  
                <asp:TextBox ID="txtAnswer" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAnswer" Display="Static" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>
            <td class="font">Role:</td>
            <td><asp:DropDownList ID="ddlRoles"  runat="server" class="form-control" Height="40px" Width="126px">
                <asp:ListItem Value="Company"></asp:ListItem>
                <asp:ListItem Value="JobSeeker"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>  
            <td></td>  
            <td>  
                <asp:Button ID="btnSubmit" class="btn btn-primary btn-lg" runat="server" Text="Create User" onclick="btnSubmit_Click" />  
            </td>  
        </tr>  
        <tr>  
            <td colspan="3">  
                <asp:Label ID="lblResult" runat="server" Font-Bold="true"/>  
            </td>  
        </tr>  
    </table>  
            </p>
</asp:Content>
