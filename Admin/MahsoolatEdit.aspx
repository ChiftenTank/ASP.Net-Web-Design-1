<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="MahsoolatEdit.aspx.cs" Inherits="Admin_MahsoolatEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 90%;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     <div style="width: 800px; margin: auto; text-align:center;background-color:yellow; border:1px solid black" >
        <br />
        <table align="center" class="auto-style1" dir="rtl" border="0">
            <tr>
                <td>
                    <asp:Image ID="mimg" runat="server" Height="100px" Width="100px" />
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="نام کالا:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="موجودی:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttedad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="قیمت:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="مشخصات محصول:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatn" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="تایید کالا:"></asp:Label>
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

