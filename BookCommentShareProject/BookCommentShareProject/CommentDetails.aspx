<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CommentDetails.aspx.cs" Inherits="BookCommandShareProject.CommentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 26%;
        }
        .auto-style21 {
            width: 123px;
        }
        .auto-style22 {
            font-weight: bold;
            font-style: italic;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            width: 123px;
            color: #333333;
            text-align: right;
        }
        .auto-style25 {
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin-left:300px; margin-top:30px" class="auto-style20">
        <tr>
            <td class="auto-style24"><em><strong>Kullanıcı Adı:</strong></em></td>
            <td>
                <em>
                <asp:TextBox ID="TextBoxKullaniciAdi" runat="server" Width="200px" CssClass="auto-style25"></asp:TextBox>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><em><strong>Kitap Adı:</strong></em></td>
            <td>
                <em>
                <asp:TextBox ID="TextBoxKitapAdi" runat="server" Width="200px" CssClass="auto-style25"></asp:TextBox>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><em><strong>Yorum:</strong></em></td>
            <td>
                <em>
                <asp:TextBox ID="TextBoxYorum" runat="server" Height="62px" TextMode="MultiLine" Width="200px" CssClass="auto-style25"></asp:TextBox>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23"><strong><em>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style22" Text="Onayla" Width="81px" OnClick="BtnOnayla_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
