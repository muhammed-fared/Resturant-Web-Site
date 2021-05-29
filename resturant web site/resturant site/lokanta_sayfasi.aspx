<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="lokanta_sayfasi.aspx.vb" Inherits="Rewayat2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Lokanta_sayfasi</title>


    <!-- Google / Search Engine Tags -->
    <meta itemprop="name" content="LOKANTA_SAYFASI">
    <meta itemprop="description" content="Lokantamız sayfası bütün yemeklerimiz buradadır istediğiniz yemekler yetrki istek atın">
    <meta itemprop="image" content="http://en.wikipedia.org/fav.ico">
 
    <!-- Facebook Meta Tags -->
    <meta property="og:url" content="http://en.wikipedia.org/lokanta_sayfasi.aspx">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Lokantamız sayfası bütün yemeklerimiz buradadır istediğiniz yemekler yetrki istek atın">
    <meta property="og:description" content="Lokantamız sayfası bütün yemeklerimiz buradadır istediğiniz yemekler yetrki istek atın">
    <meta property="og:image" content="http://en.wikipedia.org/assets/img/food_.jpg">

    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Lokanta_sayfası  loknta bütün yemekleri">
    <meta name="twitter:description" content=" Lokantamız sayfası bütün yemeklerimiz buradadır istediğiniz yemekler yetrki istek atın">
    <meta name="twitter:image" content="http://https://en.wikipedia.org/assets/img/food_.jpg">


<!-- MetaTag --> 

<!-- Style4Page Num -->
  <style type="text/css">
   .numeric_button
   {
       background-color:#384B69;
       color:#FFFFFF;
       font-family:Arial;
       font-weight:bold;
       padding:10px;  
       border:none;
       }    
    .current_page
    {
        background-color:#3482db;
        color:#FFFFFF;
        font-family:Arial;
        font-weight:bold;
        padding:10px;    
        border: 1px solid #000;
        }
    .next_button
    {
        background-color:#1F3548;
        color:#FFFFFF;
        font-family:Arial;
        font-weight:bold;
        padding:10px;
        }
    .last_button
    {
        background-color:#1F3548;
        color:#FFFFFF;
        font-family:Arial;
        font-weight:bold;
        padding:10px;
        }
   </style>

    <link href="assets/shine/style.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
     
		<div id="divMsg" style="text-align: center; display:none;">
            <asp:TextBox ID="TextBox1" runat="server" class="span2" placeholder="Istediğiniz yemek burada yazin.." Width="50%" Height="30px"></asp:TextBox> 
            <asp:Button class="btn" ID="Button1" runat="server" Text="ara" style="height: 40px;margin-bottom: 10px;" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Search.aspx" Font-Bold="True"></asp:HyperLink>            
		</div>         
        <br /> <br />          
    <!-- -->

    <div dir="rtl">
    
                <asp:ListView ID="ListView1" runat="server" GroupItemCount="3" 
                     DataSourceID="SqlDataSource1">
                    <LayoutTemplate>
                        <table cellpadding="2" runat="server" id="tblProducts" style="height: 320px;">
                            <tr align="left" runat="server" id="groupPlaceholder">
                            </tr>
                        </table>
<%--                        <asp:DataPager runat="server" ID="dpMyDatePager" PageSize="9">
                            <Fields>
                                <asp:NumericPagerField ButtonCount="2" PreviousPageText="<--" NextPageText="-->" />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowFirstPageButton="True" />
                            </Fields>
                        </asp:DataPager>--%>
                            <br />

                            <asp:DataPager ID="dpMyDatePager" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="False" 
                                        ShowNextPageButton="true" ShowPreviousPageButton="true" ButtonCssClass="last_button" NextPageText="Sonraki" PreviousPageText="Önceki" FirstPageText="Birinci" LastPageText="Sonuncu" />
                                    <asp:NumericPagerField ButtonCount="6" NumericButtonCssClass="numeric_button" CurrentPageLabelCssClass="current_page" NextPreviousButtonCssClass="next_button" NextPageText="<<" PreviousPageText=">>" />

                                </Fields>
                            </asp:DataPager>
                            <br />



                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr runat="server" id="productRow" style="height: 80px">
                            <td runat="server" id="itemPlaceholder">
                            </td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td id="Td1" valign="top" width="279px" align="left" runat="server">
                            <div style="height: 360px; width: 100%; overflow-y: auto; overflow-x: hidden; margin-left:90px;    margin-bottom: 20px;">
                                <table class="mtbl">
                                    <thead>
                                    <tr>
                                        <td class="">
                                                <%--<img src="<%#Eval("Pic")%>" style="width:196px;height:196px;" />--%>
                                        <div class="demo">
                                          <asp:Image ID="Image1" runat="server"  Height="250px" class="" ImageUrl='<%# Eval("Pic") %>' Width="215px" style="background-size: cover;" />
                                          <div class="show-off" />
                                        </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="overflow-y: hidden;max-width: 200px;white-space: nowrap;">
                                            <h4><asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>' Font-Bold="True"></asp:Label></h4>
                                        </td>
                                    </tr>
                                            <tr>
                                        <td align="center" style="overflow-y: hidden;max-width: 200px;white-space: nowrap;">
                                            <h4><asp:Label ID="Label3" runat="server" Text='<%#Eval("Price")%>' Font-Bold="True"></asp:Label></h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">                                     
                                            <asp:Button ID="Button1" class="bttn btn btn-primary" runat="server" price="server" Text="Fazla oku " CommandName="Save" CommandArgument='<%# Eval("ID") %>' Font-Bold="True" />
                                        
                                            <%--<asp:LinkButton ID="LinkButton2" runat="server" Text="<i class='icon-hand-left'></i> Fazla oku/ " CommandName="Save" CommandArgument='<%# Eval("IDRewaya") %>' Font-Bold="True"></asp:LinkButton>--%>
                                        </td>
                                    </tr>
                                     
                                </table>

                             <%--   <div id="details" class="details">
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                                </div>--%>
         
                            </div>
                        </td>

 
                    </ItemTemplate>
                </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT ID, Name, Pic, price, Description  FROM Products ORDER BY ID DESC"></asp:SqlDataSource>
    <br />

            <!--<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Food] WHERE ([Tags] LIKE '%' + @Tags + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Tags" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>-->

    </div>

<br />
</asp:Content>

