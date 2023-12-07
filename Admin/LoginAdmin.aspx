<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="Admin_LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="direction:rtl; background-image:url(../Images/Admin/Login.jpg);" >
    <form id="form1" runat="server">
    <div id="All1">
        <br />
    <div style="width:600px; height:auto; margin:auto; border: 1px solid yellow; border-radius:20px; box-shadow:10px 10px 20px yellow">
                <table align="center" dir="rtl">
                    <tr>
                        <td>
                            <asp:Image ID="Image10" runat="server" Height="50px" ImageUrl="~/Images/Icons/login user icon.png" Width="50px" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Font-Names="B Nazanin" Font-Size="Medium" Text="نام کاربری:" ForeColor="Yellow"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Font-Names="B Nazanin" Font-Size="Medium" Text="رمز عبور" ForeColor="Yellow"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style7">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">
                            <asp:Label ID="lblerror" runat="server" Text="نام کاربری یا کلمه عبور اشتباه است." ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style7">
                            <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Text="ورود کاربران" Width="140px" Font-Size="Medium" OnClick="Button1_Click" ForeColor="Black" />
                        </td>
                    </tr>
                </table>
            </div> 
    </div>
    </form>
</body>
</html>
