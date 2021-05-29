<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="404.aspx.vb" Inherits="_404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>İstenen sayfa mevcut değil- Error Page :(</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

   <div style="height: 300px;">
    <br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="200px" 
        Text="404" ForeColor="#990033"></asp:Label>
        <br /><br /><br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="Üzgünüz, Bu sayfa mevcut değil"></asp:Label>
        <br /><br /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Ana sayfaya git</asp:HyperLink>


   </div>
</asp:Content>

