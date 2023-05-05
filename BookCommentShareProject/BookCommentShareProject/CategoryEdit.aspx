<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CategoryEdit.aspx.cs" Inherits="BookCommandShareProject.CategoryEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style28 {
            width: 318px;
            height: 135px;
        }
        .auto-style29 {
            width: 315px;
        }
        .auto-style30 {
            width: 367px;
            text-decoration: none;
            font-size: medium;
        }
        .auto-style27 {
            width: 367px;
            text-decoration: none;
        }
        .auto-style22 {
            width: 179px;
        }
        .auto-style23 {
            font-weight: bold;
            font-style: italic;
        }
        .auto-style31 {
            font-style: italic;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style28" >
        <table style="margin-top:30px; margin-left:300px" class="auto-style29" >
            <tr>
                <td class="auto-style30"><em>Kategori Ad:</em></td>
                <td class="auto-style21">
                    <em>
                    <asp:TextBox ID="TextBox1" runat="server" Width="139px" CssClass="auto-style31"></asp:TextBox>
                    </em>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"><em>Adet:</em></td>
                <td class="auto-style21">
                    <em>
                    <asp:TextBox ID="TextBox2" runat="server" Width="140px" CssClass="auto-style31"></asp:TextBox>
                    </em>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style21"><strong><em>
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style23" Height="22px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="73px" />
                    </em></strong></td>
            </tr>
        </table>
    </div>
</asp:Content>
