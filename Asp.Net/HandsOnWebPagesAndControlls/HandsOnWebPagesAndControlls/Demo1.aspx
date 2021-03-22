﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="HandsOnWebPagesAndControlls.Demo1" %>

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
        	<table class="auto-style1">
				<tr>
					<td>Name</td>
					<td>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>
						<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
					</td>
					<td>
						<asp:Label ID="lblMsg" runat="server"></asp:Label>
					</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
