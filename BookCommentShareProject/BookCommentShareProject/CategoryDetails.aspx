<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="CategoryDetails.aspx.cs" Inherits="BookCommandShareProject.CategoryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:auto; height:auto; margin-left:250px; margin-top:50px">
        <asp:DataList ID="DataList2" runat="server" Width="600px" BackColor="Silver" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Bold="False" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' Font-Bold="True" />
                <br />
                <asp:Label ID="BookWriterLabel" runat="server" Text='<%# Eval("BookWriter") %>' Font-Bold="True" />
                <br />
                <asp:Label ID="BookTextLabel" runat="server" Text='<%# Eval("BookText") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBConnectionString %>" SelectCommand="SELECT [BookName], [BookWriter], [BookText] FROM [Tbl_Books]"></asp:SqlDataSource>
    </div>

</asp:Content>
