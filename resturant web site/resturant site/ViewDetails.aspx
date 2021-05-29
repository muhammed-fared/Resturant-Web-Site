<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewDetails.aspx.vb" Inherits="ViewDetails2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>FAZLA_OKU - LOKANTA_SAYFASI</title>
<style>
 .DataP {line-height: 33px;background-color: #FFFFCC; text-align:justify;
        color: #000000;}

  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="None" Height="600px" HorizontalAlign="Center" 
        Width="90%">
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField SortExpression="Name">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </InsertItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <h1><asp:Label ID="Label1" runat="server" Font-Bold="True" 
                        Text='<%# Bind("Name") %>' Font-Size="X-Large"></asp:Label></h1>
                </ItemTemplate>
            </asp:TemplateField>
        
            <asp:BoundField DataField="ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ID" 
                Visible="False" />

            <asp:TemplateField SortExpression="Pic">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pic") %>'></asp:TextBox>
                </InsertItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pic") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pic") %>' style="max-width: 50%;" />
                </ItemTemplate>
            </asp:TemplateField>
         
          
       
            <asp:TemplateField SortExpression="Description">
       
                <asp:EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                </asp:EditItemTemplate>
                <ItemTemplate>

                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text=" Yemekler hakkında açıklama "></asp:Label>
                    <br />
                    <br />
                    &quot;<asp:Label ID="Label3" runat="server" CssClass="DataP" 
                        Text='<%# Bind("Description") %>'></asp:Label>
                    &quot;<br />
                </ItemTemplate>
            </asp:TemplateField>
    
        </Fields>

        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

    </asp:DetailsView>




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT ID,Name, Pic, Price, Description FROM Products WHERE (ID = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <br />
    <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox>    
        <br />
    <asp:TextBox ID="TextBox11" runat="server" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
        Font-Size="Large" NavigateUrl="~/lokanta_sayfasi.aspx">  Ana sayfaya dön</asp:HyperLink>
    <br /><br />
    <div align="right">daha fazla  :</div><br />
    
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block"
     data-ad-format="autorelaxed"
     data-ad-client="ca-pub-2656285010301965"
     data-ad-slot="8262763556"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>

        <br />
</asp:Content>

