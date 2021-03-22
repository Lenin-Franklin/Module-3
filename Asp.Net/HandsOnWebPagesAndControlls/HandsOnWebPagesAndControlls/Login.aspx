<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HandsOnWebPagesAndControlls.Login" %>

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
						<asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Label ID="lblErrMsg" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Button ID="btnSingIn" runat="server" OnClick="Validate" Text="SignIn" />
						<asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Reset" />
					</td>
				</tr>
				
			</table>
        </div>
	<p>
		&nbsp;</p>
    </form>
	</body>
</html>
