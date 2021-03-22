<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="HandsOnServerSideStatmanagment.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	Hello
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
			<br />
			<asp:Button ID="Button2" runat="server" PostBackUrl="~/Transaction.aspx" Text=" Transaction" />
			<br />
			<asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="LogOut" />
        </div>
    </form>
</body>
</html>
