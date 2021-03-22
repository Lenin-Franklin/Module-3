<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HandsOnValidationControlls.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 50%;
		}
		.auto-style2 {
			width: 172px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<h1 style="text-align:center">Employee Registration Form</h1>
        	<table align="center" class="auto-style1">
				<tr>
					<td class="auto-style2">Employee ID(*)</td>
					<td>
						<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Pls Enter ID"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Name(*)</td>
					<td>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Age</td>
					<td>
						<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
						<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age between 22 to 60" MaximumValue="60" MinimumValue="22" Type="Integer"></asp:RangeValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">JoinDate</td>
					<td>
						<asp:TextBox ID="txtJDate" runat="server" TextMode="Date"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Mobile</td>
					<td>
						<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Invalid Mobile No" ValidationExpression="[6789][0-9]{9}"></asp:RegularExpressionValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">EmailId</td>
					<td>
						<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid EmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Designation</td>
					<td>
						<asp:DropDownList ID="ddlDesig" runat="server">
							<asp:ListItem>Trainee</asp:ListItem>
							<asp:ListItem>Programmer</asp:ListItem>
							<asp:ListItem>Sr Programmer</asp:ListItem>
							<asp:ListItem>Tech Lead</asp:ListItem>
							<asp:ListItem>TeadLead</asp:ListItem>
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Login Details</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style2">Username(*)</td>
					<td>
						<asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUname" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Password(*)</td>
					<td>
						<asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="Allow only 6 chars and last char like !@#$%" ValidationExpression="[a-zA-Z0-9]{5}[!@#$%]{1}"></asp:RegularExpressionValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">Confirm Password</td>
					<td>
						<asp:TextBox ID="txtCpwd" runat="server"></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCpwd" ErrorMessage="Password Mismatch"></asp:CompareValidator>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<asp:CheckBox ID="CheckBox1" runat="server" Text="Accept All terems and Condtions" />
&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="EmployeeRegister" />
					&nbsp;<asp:Button ID="btnRegister0" runat="server" Text="Search" OnClick="EmployeeRegister" CausesValidation="False" />
					&nbsp;<asp:Button ID="btnRegister1" runat="server" Text="Update" OnClick="EmployeeRegister" />
					&nbsp;<asp:Button ID="btnRegister2" runat="server" Text="Delete" OnClick="EmployeeRegister" />
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
					</td>
				</tr>
			</table>
        	<br />
			<asp:GridView ID="GridView1" runat="server">
			</asp:GridView>
        </div>
    </form>
</body>
</html>
