<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample.aspx.cs" Inherits="CountryWebApp.Sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select Country&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownCountry_SelectedIndexChanged" AppendDataBoundItems="True" ForeColor="#3366FF" Height="20px" Width="156px">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblCountry" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select State
            <asp:DropDownList ID="DropDownState" runat="server" AppendDataBoundItems="True" AutoPostBack="True" ForeColor="Maroon" Height="20px" OnSelectedIndexChanged="DropDownState_SelectedIndexChanged" Width="155px">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblstate" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select City&nbsp;
            <asp:DropDownList ID="DropDownCity" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Height="20px" OnSelectedIndexChanged="DropDownCity_SelectedIndexChanged" Width="155px">
            </asp:DropDownList>
            <br />
        </p>
        <p>
            <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
