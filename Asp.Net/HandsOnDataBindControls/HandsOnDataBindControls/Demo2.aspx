<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo2.aspx.cs" Inherits="HandsOnDataBindControls.Demo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="emp_id" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
					<asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
					<asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
					<asp:BoundField DataField="minit" HeaderText="minit" SortExpression="minit" />
					<asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
					<asp:BoundField DataField="job_id" HeaderText="job_id" SortExpression="job_id" />
					<asp:BoundField DataField="job_lvl" HeaderText="job_lvl" SortExpression="job_lvl" />
					<asp:BoundField DataField="pub_id" HeaderText="pub_id" SortExpression="pub_id" />
					<asp:BoundField DataField="hire_date" HeaderText="hire_date" SortExpression="hire_date" />
				</Columns>
				<FooterStyle BackColor="White" ForeColor="#000066" />
				<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
				<RowStyle ForeColor="#000066" />
				<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
				<SortedAscendingCellStyle BackColor="#F1F1F1" />
				<SortedAscendingHeaderStyle BackColor="#007DBB" />
				<SortedDescendingCellStyle BackColor="#CAC9C9" />
				<SortedDescendingHeaderStyle BackColor="#00547E" />
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" DeleteCommand="DELETE FROM [employee] WHERE [emp_id] = @emp_id" InsertCommand="INSERT INTO [employee] ([emp_id], [fname], [minit], [lname], [job_id], [job_lvl], [pub_id], [hire_date]) VALUES (@emp_id, @fname, @minit, @lname, @job_id, @job_lvl, @pub_id, @hire_date)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [fname] = @fname, [minit] = @minit, [lname] = @lname, [job_id] = @job_id, [job_lvl] = @job_lvl, [pub_id] = @pub_id, [hire_date] = @hire_date WHERE [emp_id] = @emp_id">
				<DeleteParameters>
					<asp:Parameter Name="emp_id" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="emp_id" Type="String" />
					<asp:Parameter Name="fname" Type="String" />
					<asp:Parameter Name="minit" Type="String" />
					<asp:Parameter Name="lname" Type="String" />
					<asp:Parameter Name="job_id" Type="Int16" />
					<asp:Parameter Name="job_lvl" Type="Byte" />
					<asp:Parameter Name="pub_id" Type="String" />
					<asp:Parameter Name="hire_date" Type="DateTime" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="fname" Type="String" />
					<asp:Parameter Name="minit" Type="String" />
					<asp:Parameter Name="lname" Type="String" />
					<asp:Parameter Name="job_id" Type="Int16" />
					<asp:Parameter Name="job_lvl" Type="Byte" />
					<asp:Parameter Name="pub_id" Type="String" />
					<asp:Parameter Name="hire_date" Type="DateTime" />
					<asp:Parameter Name="emp_id" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
