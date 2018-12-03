<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebGridView.aspx.cs" Inherits="ConnectToDB.WebGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DB connection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewNorthwind" runat="server" EmptyDataText="No data yet">
            </asp:GridView>
            <br />
            <asp:Button ID="ButtonShow" runat="server" OnClick="ButtonShow_Click" Text="Show" />
            <br />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Text="No error message"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
