<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfileMaster.master" AutoEventWireup="true" CodeFile="Basket.aspx.cs" Inherits="Basket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 50%;
            color:yellow;
            background-color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto">
        <br />
        <table align="center" class="auto-style4" dir="rtl" border="1">
            <tr>
                <th>جزئیات سفارش</th>
                <th>تاریخ فاکتور</th>
                <th>جمع فاکتور</th>
            </tr>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
            <tr style="text-align:center">
                <td><a href="basketdetail.aspx?factid=<%#DataBinder.Eval(Container.DataItem,"factorno") %>"><img src="Images/Icons/ArrowKey.png" width="30" height="30" /></a></td>
                <td>  <%#DataBinder.Eval(Container.DataItem,"factordate") %></td>
                <td>  <%#DataBinder.Eval(Container.DataItem,"total") %></td>
            </tr>
                    </ItemTemplate>
            </asp:Repeater>
        </table>

    </div>
</asp:Content>

