<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="BookCommandShareProject.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style35 {
            width: 88%;
        }

        .auto-style25 {
            width: 181px;
        }

        .auto-style34 {
            width: 30px;
        }

        .auto-style27 {
            margin-left: 8px;
        }

        .auto-style36 {
            margin-top: 0px;
        }
        .auto-style37 {
            width: 84px;
        }
        .auto-style38 {
            width: 149px;
        }
        .auto-style39 {
            width: 133px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="384px">
        <table style="margin-top:50px; margin-left:100px" class="auto-style35">
            <tr>
                <td class="auto-style38"><strong><em>Onaylanan Yorumlar</em></strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="↓" Width="20px" CssClass="auto-style27" OnClick="Button1_Click" />
                </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="20px" Text="↑" Width="19px" OnClick="Button2_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style36">
        <asp:Panel ID="Panel3" runat="server" Width="341px" CssClass="auto-style36">
            <asp:DataList ID="DataList1" runat="server" Width="337px">
                <ItemTemplate>
                    <table style="margin-top:30px" class="auto-style17">
                        <tr>
                            <td><em><strong>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                </strong></em></td>
                        </tr>
                        <tr>
                            <td><em>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("CommandText") %>'></asp:Label>
                                </em></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" Width="409px">
        <table style="margin-top:50px; margin-left:100px" class="auto-style35">
            <tr>
                <td class="auto-style25"><strong><em>Onaylanmayan Yorumlar</strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button3" runat="server" Height="20px" Text="↓" Width="20px" CssClass="auto-style27" OnClick="Button3_Click"  />
                </strong></td>
                <td class="auto-style39"><strong>
                    <asp:Button ID="Button4" runat="server" Height="20px" Text="↑" Width="19px" OnClick="Button4_Click"  />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" CssClass="auto-style36">
        <asp:Panel ID="Panel6" runat="server" Width="341px">
            <asp:DataList ID="DataList2" runat="server" Width="324px">
                <ItemTemplate>
                    <table style="margin-top:30px" class="auto-style17">
                        <tr>
                            <td class="auto-style37"><em><strong>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                </strong></em></td>
                            <td><a href='CommentDetails.aspx?CommandID=<%#Eval("CommandID") %>'>
                                <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images/indir (1).png" Width="20px" />
                                </a></td>
                        </tr>
                    </table>
                    <table class="auto-style17">
                        <tr>
                            <td><em>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("CommandText") %>'></asp:Label>
                                </em></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
