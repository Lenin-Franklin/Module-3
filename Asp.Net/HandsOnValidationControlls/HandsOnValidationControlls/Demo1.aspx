<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="HandsOnValidationControlls.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:DropDownList ID="DropDownList1" runat="server">
				<asp:ListItem>Red</asp:ListItem>
				<asp:ListItem>Blue</asp:ListItem>
				<asp:ListItem>Yellow</asp:ListItem>
				<asp:ListItem>Orange</asp:ListItem>
			</asp:DropDownList>
			<br />
			<asp:CheckBoxList ID="CheckBoxList1" runat="server">
					<asp:ListItem>Red</asp:ListItem>
				<asp:ListItem>Blue</asp:ListItem>
				<asp:ListItem>Yellow</asp:ListItem>
				<asp:ListItem>Orange</asp:ListItem>
			</asp:CheckBoxList>
			<br />
			<asp:RadioButtonList ID="RadioButtonList1" runat="server">
					<asp:ListItem>Red</asp:ListItem>
				<asp:ListItem>Blue</asp:ListItem>
				<asp:ListItem>Yellow</asp:ListItem>
				<asp:ListItem>Orange</asp:ListItem>
			</asp:RadioButtonList>
			<br />
			<asp:BulletedList ID="BulletedList1" runat="server">
					<asp:ListItem>Red</asp:ListItem>
				<asp:ListItem>Blue</asp:ListItem>
				<asp:ListItem>Yellow</asp:ListItem>
				<asp:ListItem>Orange</asp:ListItem>
			</asp:BulletedList>
        </div>
    	<asp:ListBox ID="ListBox1" runat="server">
				<asp:ListItem>Red</asp:ListItem>
				<asp:ListItem>Blue</asp:ListItem>
				<asp:ListItem>Yellow</asp:ListItem>
				<asp:ListItem>Orange</asp:ListItem>
    	</asp:ListBox>
    </form>
</body>
</html>
