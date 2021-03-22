<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo4.aspx.cs" Inherits="HandsOnDataBindControls.Demo4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="Eid" HeaderText="Eid" ReadOnly="True" SortExpression="Eid" />
					<asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
					<asp:BoundField DataField="Joindate" HeaderText="Joindate" SortExpression="Joindate" />
					<asp:BoundField DataField="Desig" HeaderText="Desig" SortExpression="Desig" />
					<asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
					<asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
					<asp:BoundField DataField="Manager" HeaderText="Manager" SortExpression="Manager" />
				</Fields>
			</asp:DetailsView>
        </div>
    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Training1DBConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Eid] = @Eid" InsertCommand="INSERT INTO [Employee] ([Eid], [Ename], [Joindate], [Desig], [Salary], [DeptId], [Manager]) VALUES (@Eid, @Ename, @Joindate, @Desig, @Salary, @DeptId, @Manager)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Ename] = @Ename, [Joindate] = @Joindate, [Desig] = @Desig, [Salary] = @Salary, [DeptId] = @DeptId, [Manager] = @Manager WHERE [Eid] = @Eid">
			<DeleteParameters>
				<asp:Parameter Name="Eid" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="Eid" Type="Int32" />
				<asp:Parameter Name="Ename" Type="String" />
				<asp:Parameter DbType="Date" Name="Joindate" />
				<asp:Parameter Name="Desig" Type="String" />
				<asp:Parameter Name="Salary" Type="Decimal" />
				<asp:Parameter Name="DeptId" Type="String" />
				<asp:Parameter Name="Manager" Type="Int32" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="Ename" Type="String" />
				<asp:Parameter DbType="Date" Name="Joindate" />
				<asp:Parameter Name="Desig" Type="String" />
				<asp:Parameter Name="Salary" Type="Decimal" />
				<asp:Parameter Name="DeptId" Type="String" />
				<asp:Parameter Name="Manager" Type="Int32" />
				<asp:Parameter Name="Eid" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
    </form>
</body>
</html>
