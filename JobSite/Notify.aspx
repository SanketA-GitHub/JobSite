<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Notify.aspx.cs" Inherits="JobSite.Notify" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    Compose Email To Notify<br />

<div>
    <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="/ckeditor/" runat="server" ContentsCss="/CKEditor/contents.css" Skin="moono-lisa" TemplatesFiles="/CKEditor/plugins/templates/templates/default.js"></CKEditor:CKEditorControl> 

</div>
    <br />
    <asp:Button ID="btn2" runat="server" Text="Display data" OnClick="btn2_Click"/>
    <br />
    <asp:Button ID="Btn1" runat="server" OnClick="Btn1_Click" Text="Send" />
    <br />
</asp:Content>
