<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfileMaster.master" AutoEventWireup="true" CodeFile="ContactManagrForm.aspx.cs" Inherits="ContactManagrForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 60%;
            background-color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style4" dir="rtl" border="1">
        <tr>
            <td>
                <asp:Image ID="Image10" runat="server" Height="60px" ImageUrl="~/Images/Icons/contact icon.png" Width="60px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی:" ForeColor="Yellow"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfamily" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="آدرس ایمیل:" ForeColor="Yellow"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="موضوع:" ForeColor="Yellow"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsubject" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="متن:" ForeColor="Yellow"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmatn" runat="server" Height="110px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Large" Text="ارسال" OnClick="Button1_Click" Font-Bold="True" Font-Italic="False" ForeColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>

