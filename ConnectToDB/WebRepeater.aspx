<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebRepeater.aspx.cs" Inherits="ConnectToDB.WebRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page with repeater</title>
    <link href="~/Styles/Catstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="RepeaterCat" runat="server">
                <HeaderTemplate>
                    <table class="mytable">
                        <tr>
                            <td class="myheader">CatId</td>
                            <td class="myheader">Name</td>
                            <td class="myheader">Colour</td>
                            <td class="myheader">Birthday</td>
                            <td class="myheader">Picture</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("IdCat") %></td>
                        <td class="myitem"><%# Eval("Name") %></td>
                        <td class="myitem"><%# Eval("Colour") %></td>
                        <td class="myitem"><%# Eval("Birthday", "{0:dd-MM-yyyy}") %></td>
                        <td class="myitem"><img src="Pictures/<%# Eval("Picture") %>" alt="cat"</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <br />
            <br />
            <asp:Button ID="ButtonShow" runat="server" OnClick="ButtonShow_Click" Text="Show" />
            <br />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Text="No error message"></asp:Label>
        </div>
    </form>
</body>
</html>
