<%@ Page Title="" Theme="Golden" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HandsOnThemes.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<br />
	<br />
	<table align="center" style="width: 50%">
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
				<asp:Button ID="Button1" runat="server" Text="SignIn" />
			</td>
		</tr>
	</table>
</asp:Content>
