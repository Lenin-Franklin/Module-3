<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HandsOnWebPagesAndControlls.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:magenta">
    <form id="form1" runat="server">
        <div>
        	<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Greet" />
        </div>
    	<asp:Button ID="Button2" runat="server" OnClick="SetMessage" Text="Greet" />
		<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
		<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
		<asp:Button ID="Button5" runat="server" OnClick="Sum" Text="Add" />
    </form>
</body>
</html>
