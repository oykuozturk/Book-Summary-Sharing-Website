<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="BookCommandShareProject.Books" %>

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
        .auto-style33 {
            width: 86%;
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
    .auto-style39 {
        width: 126px;
    }
    .auto-style40 {
        text-align: center;
        margin-left: 40px;
    }
    .auto-style41 {
        text-align: center;
        margin-left: 120px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="280px">
        <table style="margin-top:50px; margin-left:100px" class="auto-style35">
            <tr>
                <td class="auto-style25"><strong><em>Kitap Listesi</em></strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="↓" Width="20px" CssClass="auto-style27" OnClick="Button1_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="20px" Text="↑" Width="19px" OnClick="Button2_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Width="341px">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="margin-top:10px; margin-left:50px" class="auto-style17">
                    <tr>
                        <td class="auto-style23"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style24" Text='<%# Eval("BookName") %>'></asp:Label>
                            </em></td>
                        <td>
                            <a href="Books.aspx?BookID=<%#Eval("BookID") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/png-transparent-cross-red-rejection-no-stop-warning-thumbnail.png" Width="20px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="287px">
        <table style="margin-top:50px; margin-left:100px" class="auto-style22">
            <tr>
                <td class="auto-style37"><strong><em>Kitap Ekle</em></strong></td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button3" runat="server" Height="20px" Text="↓" Width="20px" OnClick="Button3_Click"/>
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" Height="20px" Text="↑" Width="20px" OnClick="Button4_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Width="487px">
        <table style="margin-top:10px; margin-left:50px" class="auto-style33">
            <tr>
                <td class="auto-style39"><em>Kitap Ad:</em></td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Kitabın Yazarı:</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox2" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Kitap Yorum/Alıntı:</td>
                <td class="auto-style41">
                    <asp:TextBox ID="TextBox3" runat="server" Height="49px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Kategori:</td>
                <td class="auto-style31">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="270px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style31"><em><strong>
                    <asp:Button ID="BtnEkle" runat="server" BorderStyle="Solid" CssClass="auto-style38" OnClick="BtnEkle_Click" Text="Ekle" Width="66px" />
                    </strong></em></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
