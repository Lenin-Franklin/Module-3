﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HandsOnWebPagesAndControlls.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 50%;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<table align="center" class="auto-style1">
				<tr>
					<td>Username</td>
					<td>
						<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Button ID="Button1" runat="server" Text="Button" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
