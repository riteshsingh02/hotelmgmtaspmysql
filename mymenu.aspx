<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mymenu.aspx.cs" Inherits="mymenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        body {
                background-image: url("menubck.jpg");
                background-repeat: no-repeat;   
                
}
    </style>
<body>
    <form id="form1" runat="server">
    <div style="height: 102px; width: 234px">
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px" Font-Bold="True" Width="300px" BorderColor="#996633">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="Room Details" Value="Room Details">
                    <asp:MenuItem NavigateUrl="~/rooms.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Customers Details" Value="Customers Details">
                    <asp:MenuItem NavigateUrl="~/customers.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Payments Details" Value="Payments Details">
                    <asp:MenuItem NavigateUrl="~/payments.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Cancellations Details" Value="Cancellations Details">
                    <asp:MenuItem NavigateUrl="~/cancellations.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Bookings Details" Value="Bookings Details">
                    <asp:MenuItem NavigateUrl="~/bookings.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
