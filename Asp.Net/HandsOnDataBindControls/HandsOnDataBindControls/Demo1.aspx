﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="HandsOnDataBindControls.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
				<FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
				<HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
				<PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
				<RowStyle BackColor="White" ForeColor="#003399" />
				<SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
				<SortedAscendingCellStyle BackColor="#EDF6F6" />
				<SortedAscendingHeaderStyle BackColor="#0D4AC4" />
				<SortedDescendingCellStyle BackColor="#D6DFDF" />
				<SortedDescendingHeaderStyle BackColor="#002876" />
			</asp:GridView>
        </div>
    	<p>
			Enter ID
			<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get" />
		</p>
		<asp:DetailsView ID="DetailsView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
			<AlternatingRowStyle BackColor="PaleGoldenrod" />
			<EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
			<FooterStyle BackColor="Tan" />
			<HeaderStyle BackColor="Tan" Font-Bold="True" />
			<PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
		</asp:DetailsView>
    </form>
</body>
</html>
