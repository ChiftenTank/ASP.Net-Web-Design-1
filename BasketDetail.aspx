<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfileMaster.master" AutoEventWireup="true" CodeFile="BasketDetail.aspx.cs" Inherits="BasketDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 60%;
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
                <th>نام کالا</th>
                <th>تعداد </th>
                <th>قیمت </th>
            </tr>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
            <tr style="text-align:center">
                <td><%#DataBinder.Eval(Container.DataItem,"kalaname") %></td>
                <td>  <%#DataBinder.Eval(Container.DataItem,"tedad") %></td>
                <td>  <%#DataBinder.Eval(Container.DataItem,"price") %></td>
            </tr>
                    </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>

