<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="HandsOnWebPagesAndControlls.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 50%;
		}
	</style>
	<script>
		function Validate() {
			//validate Uname and Password
		}
	</script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="Validate()">
        <div>
        	<table align="center" class="auto-style1">
				<tr>
					<td>Username</td>
					<td>
						<input id="Text1" type="text" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<input id="Text2" type="text" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<input id="Button1" type="submit" value="SingIn" /></td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
