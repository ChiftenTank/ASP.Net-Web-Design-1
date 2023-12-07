<%@ Page Title="" Language="C#" MasterPageFile="~/MahsollatMaster.master" AutoEventWireup="true" CodeFile="MahsoolDetail.aspx.cs" Inherits="MahsoolDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 80%;
        }
        .auto-style6 {
            height: 37px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style8 {
            height: 136px;
        }
        .auto-style9 {
            height: 56px;
            text-align:left;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
  <div style="background-color:burlywood; width:850px; height:350px; margin:auto; text-align:center">
      <div style="width:250px; height:275px;float:right; padding-top:75px; margin:auto; text-align:center">

          <asp:Image ID="mah_img" runat="server" Height="200px" Width="200px" />
      </div>


       <div style="width:600px; height:325px;float:right; padding-top:25px; margin:auto; text-align:center">
           <table align="center" class="auto-style5" dir="rtl">
               <tr>
                   <td class="auto-style6">
                       <asp:Label ID="Label10" runat="server" Text="نام کلا:"></asp:Label>
                   </td>
                   <td class="auto-style6">
                       <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style7">
                       
                       <asp:Label ID="Label11" runat="server" Text="قیمت:"></asp:Label>
                       
                   </td>
                   <td class="auto-style7">
                       <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style8">
                       <asp:Label ID="Label12" runat="server" Text="مشخصات:"></asp:Label>
                   </td>
                   <td class="auto-style8">
                       <asp:Label ID="lblcomments" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style9"></td>
                   <td class="auto-style9">
                       <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Large" OnClick="Button1_Click" Text="سفارش" Width="120px" />
                   </td>
               </tr>
           </table>
       </div>
  </div>
</asp:Content>

