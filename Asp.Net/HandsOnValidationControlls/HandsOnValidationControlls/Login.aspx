<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HandsOnValidationControlls.Login" %>

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
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pls Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Pls Enter Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:Button ID="Button1" runat="server" Text="SingIn" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">SignUp</asp:HyperLink>
					</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
