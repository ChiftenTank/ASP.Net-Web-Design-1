<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfileMaster.master" AutoEventWireup="true" CodeFile="NewsUserForm.aspx.cs" Inherits="NewsUserForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 80%;
            color:yellow;
            background-color:black;
        }
        .auto-style5 {
            height: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style4" dir="rtl">
        <tr>
            <td class="auto-style5">
                <asp:Image ID="Image10" runat="server" Height="60px" ImageUrl="~/Images/Icons/news icon.png" Width="60px" />
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="دسته خبر:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcat" runat="server" Font-Names="B Nazanin" Font-Size="Large">
                    <asp:ListItem Value="1">آشپزی</asp:ListItem>
                    <asp:ListItem Value="2">شیرینی پزی</asp:ListItem>
                    <asp:ListItem Value="3">دوره های آموزشی</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="عنوان خبر:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsubject" runat="server" Font-Names="B Nazanin"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="تاریخ خبر :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="newsdate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="متن خبر :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="newsmatn" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="عکس خبر :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="newsimg" runat="server" Font-Size="Large" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Large" Font-Bold="true" OnClick="Button1_Click" Text="ثبت خبر" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>

