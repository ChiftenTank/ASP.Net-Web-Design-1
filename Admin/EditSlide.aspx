<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EditSlide.aspx.cs" Inherits="Admin_EditSlide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .auto-style1 {
            width: 90%;
            text-align:center;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
      <div style="width: 800px; margin: auto; text-align:center; background-color:yellow; border:2px solid black">
        <br />
        <br />
        <table align="center" class="auto-style1" dir="rtl" border="1">
            <tr>
                <td>
                    <asp:Image ID="simg" runat="server" Height="60px" Width="60px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="عنوان:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="تایید:"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="chkconf" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Medium" OnClick="Button1_Click" Text="ثبت ویرایش" />
                </td>
            </tr>
        </table>
        </div>
</asp:Content>

