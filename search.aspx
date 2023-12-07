<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterMaster.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 400px; margin: auto; background-color: yellow">
        <h3>نتایج جستجو در محصولات</h3>
        <table align="center" dir="rtl">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <img src="<%#DataBinder.Eval(Container.DataItem,"mah_img") %>" width="100" height="60" /></td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="نام محصول"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"mah_name") %></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="قیمت محصول"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"mah_price") %></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="تعداد موجودی"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"mah_mojodi") %></td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="توضیحات"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"mah_comments") %></td>
                    </tr>
                    <tr>
                        <td>&nbsp</td>
                        <td>&nbsp</td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <hr />

         <h3>نتایج جستجو در اخبار</h3>
        <table align="center" dir="rtl">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <img src="<%#DataBinder.Eval(Container.DataItem,"nimage") %>" width="100" height="60" /></td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="عنوان خبر"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"title") %></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="تاریخ خبر"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"ndate") %></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="نویسنده خبر"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"nwriter") %></td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="توضیحات"></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"ncomments") %></td>
                    </tr>
                    <tr>
                        <td>&nbsp</td>
                        <td>&nbsp</td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>

