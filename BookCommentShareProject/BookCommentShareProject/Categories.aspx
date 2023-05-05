<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="BookCommandShareProject.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            width: 59%;
        }
        .auto-style23 {
            width: 234px;
        }
        .auto-style24 {
            font-size: medium;
        }
        .auto-style25 {
            width: 110px;
        }
        .auto-style27 {
            margin-left: 8px;
        }
        .auto-style29 {
            width: 99px;
            text-align: right;
        }
        .auto-style31 {
            text-align: center;
        }
        .auto-style32 {
            width: 94px;
        }
        .auto-style33 {
            width: 75%;
        }
        .auto-style34 {
            width: 30px;
        }
        .auto-style35 {
            width: 64%;
        }
        .auto-style37 {
            width: 1171px;
        }
        .auto-style38 {
            font-weight: bold;
            font-style: italic;
            background-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="280px">
        <table style="margin-top:50px; margin-left:100px" class="auto-style35">
            <tr>
                <td class="auto-style25"><strong><em>Kategori Listesi</em></strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="↓" Width="20px" OnClick="Button1_Click" CssClass="auto-style27" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="20px" OnClick="Button2_Click" Text="↑" Width="19px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Width="341px">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="margin-top:10px" class="auto-style17">
                    <tr>
                        <td class="auto-style23"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style24" Text='<%# Eval("CategoryName") %>'></asp:Label>
                            </em></td>
                        <td>
                            <a href="Categories.aspx?CategoryID=<%#Eval("CategoryID") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/png-transparent-cross-red-rejection-no-stop-warning-thumbnail.png" Width="20px" /></a>
                        </td>
                        <td>
                            <a href="CategoryEdit.aspx?CategoryID=<%#Eval("CategoryID") %>"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/indir (1).png" Width="20px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="287px">
        <table style="margin-top:50px; margin-left:100px" class="auto-style22">
            <tr>
                <td class="auto-style37"><strong><em>Kategori Ekle</em></strong></td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button3" runat="server" Height="20px" Text="↓" Width="20px" OnClick="Button3_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" Height="20px" OnClick="Button4_Click" Text="↑" Width="20px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Width="487px">
        <table style="margin-top:50px; margin-left:50px" class="auto-style33">
            <tr>
                <td class="auto-style32"><em>Kategori Ad:</em></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style31"><em><strong>
                    <asp:Button ID="BtnEkle" runat="server" BorderStyle="Solid" CssClass="auto-style38" OnClick="Button5_Click" Text="Ekle" Width="66px" />
                    </strong></em></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
