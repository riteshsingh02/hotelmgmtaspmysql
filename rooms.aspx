<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rooms.aspx.cs" Inherits="rooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 42%;

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
        .auto-style8 {
            width: 42%;
            height: 31px;
        }
    </style>
   
</head>

<body>
    <form id="form1" runat="server">
        <center>
        <table class="auto-style1" border="0">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label" runat="server" Text="Room Number" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="t1" runat="server" class="oval" ></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" class="button button5" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Room Type" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="t2" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" class="button button5" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Price Per Night" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="t3" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" class="button button5" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Max Persons" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="t4" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete" class="button button5" Width="100px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Locked" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="t5" runat="server" class="oval"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" class="button button5" Height="24px" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/mymenu.aspx" ForeColor="Yellow">HOME</asp:LinkButton>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button6" runat="server" Text="Psearch" OnClick="Button6_Click" class="button button5" Height="24px" Width="100px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" Width="718px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
