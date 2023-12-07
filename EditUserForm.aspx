<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfileMaster.master" AutoEventWireup="true" CodeFile="EditUserForm.aspx.cs" Inherits="EditUserForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 85%;
            border: 1px solid black;
            color:yellow;
            background-color:black;
        }
        .auto-style5 {
            height: 28px;
        }
        .auto-style6 {
            width: 420px;
        }
        .auto-style7 {
            height: 28px;
            width: 420px;
        }
        .auto-style8 {
            width: 171px;
        }
        .auto-style9 {
            height: 28px;
            width: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" class="auto-style4" dir="rtl">
        <tr>
            <td class="auto-style8">
                <asp:Image ID="Image10" runat="server" Height="60px" ImageUrl="~/Images/Icons/edit user.png" Width="60px" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Text="کلمه عبور"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="تکرار کلمه عبور"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="شهر"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlcity" runat="server" Font-Names="B Nazanin" Font-Size="Large" Width="80px" ForeColor="Black">
                    <asp:ListItem>تهران</asp:ListItem>
                    <asp:ListItem>اصفهان</asp:ListItem>
                    <asp:ListItem>رشت</asp:ListItem>
                    <asp:ListItem>اهواز</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="آدرس ایمیل"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" Text="عکس"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="userimg" runat="server" Font-Size="Medium" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Large" OnClick="Button1_Click" Text="ثبت ویرایش" Font-Bold="True" />
            </td>
        </tr>
    </table>
</asp:Content>

