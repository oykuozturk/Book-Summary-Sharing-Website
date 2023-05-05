<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="YorumYap.aspx.cs" Inherits="BookCommandShareProject.YorumYap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            height: 359px;
            width: 426px;
        }

        .auto-style16 {
            width: 52%;
            margin-left: 0px;
        }

        .auto-style17 {
            width: 132px;
            text-align: right;
        }

        .auto-style18 {
            width: 101px;
        }

        .auto-style21 {
            width: 101px;
            text-align: left;
        }

        .auto-style22 {
            width: 127%;
        }
        .auto-style23 {
            height: 23px;
        }

        .auto-style24 {
            height: 23px;
            width: 308px;
        }
        .auto-style25 {
            width: 308px;
        }

        .auto-style26 {
            height: 359px;
            width: 769px;
        }

        .auto-style27 {
            width: 260px;
            height: 41px;
        }
        .auto-style28 {
            width: 260px;
            text-align: right;
            height: 41px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div style="margin-left: 230px; margin-top: 50px" class="auto-style26">
        <table class="auto-style16">
            <tr>
                <td class="auto-style27" style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000; font-style: italic; font-weight: bold;"><em>Yorum Yapan:</em></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtBxYorumYapan" runat="server" BackColor="#CCCCCC" BorderColor="#666666" BorderStyle="Solid" Font-Bold="False" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Strikeout="False" Height="18px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000; font-style: italic; font-weight: bold;">Kitap Adı:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtBxKitapAdi" runat="server" BackColor="#CCCCCC" BorderColor="#666666" BorderStyle="Solid" Font-Bold="False" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Strikeout="False" Height="18px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000; font-style: italic; font-weight: bold;"><em>Yorum:</em></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtBxYorum" runat="server" BackColor="#CCCCCC" BorderColor="#666666" BorderStyle="Solid" Font-Bold="False" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Strikeout="False" Height="61px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27" style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000; font-style: italic; font-weight: bold;"><em>Yorum Tarihi:</em></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TxtBxYorumTarihi" runat="server" BackColor="#CCCCCC" BorderColor="#666666" BorderStyle="Solid" Font-Bold="False" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Strikeout="False" Height="18px" TextMode="Date" Width="250px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style22">
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Button ID="BtnYorumYap" runat="server" BackColor="#CCCCCC" BorderColor="#666666" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" ForeColor="Black" Height="27px" Text="Yorum Yap" Width="97px" OnClick="BtnYorumYap_Click"/>
                </td>
            </tr>
        </table>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBConnectionString %>" SelectCommand="SELECT [CommandDate], [CommandText], [UserName] FROM [Tbl_Commands]"></asp:SqlDataSource>
</asp:Content>

