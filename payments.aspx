<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payments.aspx.cs" Inherits="payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 88%;
        }
        .auto-style2 {
            width: 168px;
        }
        .auto-style3 {
            width: 141px;
        }
    .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px;
  width:20%;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
}

.button5 {border-radius: 10%;}
        .oval {
            width: 130px;
            height: 20px;
            background: #a84909;
            /*border-radius: 40px;*/
        }
 body 
 {
  background-image: url("roomback.jpg");
  background-repeat: no-repeat;
}
        .auto-style4 {
            width: 363px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Booking ID" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t1" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" class="button button5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Customer ID" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t2" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" class="button button5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Amount" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t3" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" class="button button5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Paid" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t4" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" class="button button5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Pay Time" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t5" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" class="button button5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Invoice" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t6" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button6" runat="server" Text="Psearch" OnClick="Button6_Click" class="button button5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Cancelled" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t7" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/mymenu.aspx" ForeColor="Yellow">HOME</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" Width="992px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </form>
</body>
</html>
