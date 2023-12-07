<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ContactUS.aspx.cs" Inherits="Admin_ContactUS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" class="auto-style1" dir="rtl" >
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" BackColor="#FFFF66" BorderColor="Black" Font-Bold="True" Font-Names="B Nazanin" Font-Size="Large" Text="راه های ارتباطی"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" BackColor="#FFFF66" BorderColor="Black" Font-Bold="True" Font-Names="B Nazanin" Font-Size="Large" Text="آدرس:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="B Nazanin" Font-Size="Large">اصفهان - میدان آزادی</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" BackColor="#FFFF66" BorderColor="Black" Font-Bold="True" Font-Names="B Nazanin" Font-Size="Large" Text="تلفن تماس:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Names="B Nazanin" Font-Size="Large" TextMode="Number" Width="100px">313777777</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" BackColor="#FFFF66" BorderColor="Black" Font-Bold="True" Font-Names="B Nazanin" Font-Size="Large" Text="تلگرام:"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">https://Instagram.com/fekrejavan.ins</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" BackColor="#FFFF66" BorderColor="Black" Font-Bold="True" Font-Names="B Nazanin" Font-Size="Large" Text="اینستاگرام:"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">https://Telegram.me/FekreJavan</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" BackColor="#FFFF66" BorderColor="Black" Font-Bold="True" Font-Names="B Nazanin" Font-Size="Large" Text="ارتباط با مدیریت:"></asp:Label>
            </td>
            <td id="اصفهان - میدان آزادی">
                <asp:TextBox ID="TextBox3" runat="server" Font-Names="B Nazanin" Font-Size="Large" OnTextChanged="TextBox2_TextChanged" TextMode="Email">Admin@gmail.com</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

