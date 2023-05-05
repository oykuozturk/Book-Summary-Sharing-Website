<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="BookCommandShareProject.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            font-size: x-small;
        }
        .auto-style20 {
            width: 466px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:50px; margin-left:300px" class="auto-style20">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <em><strong>
                <asp:Label ID="LblKullaniciAdi" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                </strong></em>
                <br />
                <em>
                <asp:Label ID="LblKullaniciYorum" runat="server" Text='<%# Eval("CommandText") %>'></asp:Label>
                </em>
                <br />
                <em>
                <asp:Label ID="LblTarih" runat="server" Text='<%# Eval("CommandDate") %>' CssClass="auto-style19"></asp:Label>
                </em>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
