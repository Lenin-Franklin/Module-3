<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HandsOnServerSideStatmanagment.Login" %>

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
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Button ID="btnSingIn" runat="server" OnClick="Validate" Text="SignIn" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Label ID="lblMsg" runat="server"></asp:Label>
					</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
