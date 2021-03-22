<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OnlineShop.aspx.cs" Inherits="OnlineShoppe.UI.OnlineShop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<br />
	<table align="center" style="width: 50%">
		<tr>
			<td>ID</td>
			<td>
				<asp:TextBox ID="txtId" runat="server"> </asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>
				<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Price</td>
			<td>
				<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>Stock</td>
			<td>
				<asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="AddProduct" />
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
					<AlternatingRowStyle BackColor="#DCDCDC" />
					<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
					<HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
					<RowStyle BackColor="#EEEEEE" ForeColor="Black" />
					<SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
					<SortedAscendingCellStyle BackColor="#F1F1F1" />
					<SortedAscendingHeaderStyle BackColor="#0000A9" />
					<SortedDescendingCellStyle BackColor="#CAC9C9" />
					<SortedDescendingHeaderStyle BackColor="#000065" />
				</asp:GridView>
			</td>
		</tr>
	</table>
</asp:Content>
