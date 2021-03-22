<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo3.aspx.cs" Inherits="HandsOnDataBindControls.Demo3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:ListView ID="ListView1" runat="server" DataKeyNames="Pid" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
				<AlternatingItemTemplate>
					<tr style="">
						<td>
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
							<asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
						</td>
						<td>
							<asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
						</td>
						<td>
							<asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
						</td>
						<td>
							<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
						</td>
						<td>
							<asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
						</td>
					</tr>
				</AlternatingItemTemplate>
				<EditItemTemplate>
					<tr style="">
						<td>
							<asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
						</td>
						<td>
							<asp:Label ID="PidLabel1" runat="server" Text='<%# Eval("Pid") %>' />
						</td>
						<td>
							<asp:TextBox ID="PnameTextBox" runat="server" Text='<%# Bind("Pname") %>' />
						</td>
						<td>
							<asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
						</td>
						<td>
							<asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
						</td>
					</tr>
				</EditItemTemplate>
				<EmptyDataTemplate>
					<table runat="server" style="">
						<tr>
							<td>No data was returned.</td>
						</tr>
					</table>
				</EmptyDataTemplate>
				<InsertItemTemplate>
					<tr style="">
						<td>
							<asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
						</td>
						<td>
							<asp:TextBox ID="PidTextBox" runat="server" Text='<%# Bind("Pid") %>' />
						</td>
						<td>
							<asp:TextBox ID="PnameTextBox" runat="server" Text='<%# Bind("Pname") %>' />
						</td>
						<td>
							<asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
						</td>
						<td>
							<asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
						</td>
					</tr>
				</InsertItemTemplate>
				<ItemTemplate>
					<tr style="">
						<td>
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
							<asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
						</td>
						<td>
							<asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
						</td>
						<td>
							<asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
						</td>
						<td>
							<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
						</td>
						<td>
							<asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
						</td>
					</tr>
				</ItemTemplate>
				<LayoutTemplate>
					<table runat="server">
						<tr runat="server">
							<td runat="server">
								<table id="itemPlaceholderContainer" runat="server" border="0" style="">
									<tr runat="server" style="">
										<th runat="server"></th>
										<th runat="server">Pid</th>
										<th runat="server">Pname</th>
										<th runat="server">Price</th>
										<th runat="server">Stock</th>
									</tr>
									<tr id="itemPlaceholder" runat="server">
									</tr>
								</table>
							</td>
						</tr>
						<tr runat="server">
							<td runat="server" style="">
								<asp:DataPager ID="DataPager1" runat="server">
									<Fields>
										<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
									</Fields>
								</asp:DataPager>
							</td>
						</tr>
					</table>
				</LayoutTemplate>
				<SelectedItemTemplate>
					<tr style="">
						<td>
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
							<asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
						</td>
						<td>
							<asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
						</td>
						<td>
							<asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
						</td>
						<td>
							<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
						</td>
						<td>
							<asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
						</td>
					</tr>
				</SelectedItemTemplate>
			</asp:ListView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Training1DBConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" InsertCommand="INSERT INTO [Product] ([Pid], [Pname], [Price], [Stock]) VALUES (@Pid, @Pname, @Price, @Stock)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Pname] = @Pname, [Price] = @Price, [Stock] = @Stock WHERE [Pid] = @Pid">
				<DeleteParameters>
					<asp:Parameter Name="Pid" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="Pid" Type="Int32" />
					<asp:Parameter Name="Pname" Type="String" />
					<asp:Parameter Name="Price" Type="Int32" />
					<asp:Parameter Name="Stock" Type="Int32" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="Pname" Type="String" />
					<asp:Parameter Name="Price" Type="Int32" />
					<asp:Parameter Name="Stock" Type="Int32" />
					<asp:Parameter Name="Pid" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
