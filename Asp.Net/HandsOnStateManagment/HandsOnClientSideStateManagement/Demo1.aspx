﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="HandsOnClientSideStateManagement.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="B1" />
			<br />
			<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="B2" />
        </div>
    	<asp:HiddenField ID="Hf1" runat="server" />
    </form>
</body>
</html>
