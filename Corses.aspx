<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Corses.aspx.cs" Inherits="Corses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" class="auto-style1" dir="rtl">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <img src="<%#DataBinder.Eval(Container.DataItem,"c_image") %>" width="100" height="60" /></td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="نام دوره"></asp:Label>
                        <%#DataBinder.Eval(Container.DataItem,"c_title") %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="نام استاد"></asp:Label>
                        <%#DataBinder.Eval(Container.DataItem,"c_teacher") %></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="تعداد جلسات"></asp:Label>
                        <%#DataBinder.Eval(Container.DataItem,"c_session") %></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="هزینه دوره"></asp:Label>
                        <%#DataBinder.Eval(Container.DataItem,"c_price") %></td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="توضیحات"></asp:Label>
                        <%#DataBinder.Eval(Container.DataItem,"c_comments") %></td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

