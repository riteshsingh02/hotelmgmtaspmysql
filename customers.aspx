<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customers.aspx.cs" Inherits="customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 296px;
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
            border-radius: 40px;
        }
 body 
 {
  background-image: url("roomback.jpg");
  background-repeat: no-repeat;
}
        .auto-style4 {
            width: 660px;
        }
        .auto-style5 {
            width: 296px;
            height: 20px;
        }
        .auto-style6 {
            width: 141px;
            height: 20px;
        }
        .auto-style7 {
            width: 660px;
            height: 20px;
        }
        .auto-style8 {
            height: 20px;
            width: 1027px;
        }
        .auto-style9 {
            width: 1027px;
        }
    </style>
</head>
<body>
     <center>
    <form id="form1" runat="server">
       
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Customer ID" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t1" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" class="button button5" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="First Name" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t2" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" class="button button5" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Last Name" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="t3" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" class="button button5" />
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Address" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t4" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" class="button button5" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Postal Code" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t5" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" class="button button5" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="City" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t6" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Psearch" runat="server" Text="Psearch" OnClick="Psearch_Click" class="button button5" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Country" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t7" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/mymenu.aspx" ForeColor="Yellow">HOME</asp:LinkButton>
                    </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Email" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t8" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Phone" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t9" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Reg Time" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t10" runat="server"  class="oval"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" Width="975px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
