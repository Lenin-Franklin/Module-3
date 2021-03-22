<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo2.aspx.cs" Inherits="HandsOnWebPagesAndControlls.Demo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	Select Country
			<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
			</asp:DropDownList>
			<br />
			Country <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<br />
			Capital&nbsp;
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    	<asp:Button ID="Button1" runat="server" Text="Click" />
    </form>
</body>
</html>
