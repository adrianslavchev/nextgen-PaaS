<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApp2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>nextgen-About</title>
    <style type="text/css">
        .auto-style1 {
            height: 626px;
        }
        .auto-style2 {
            width: 795px;
            height: 95px;
        }
        .auto-style3 {
            width: 675px;
            height: 347px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="background-image: url('Images/Hexagons.png'); background-position: center; background-repeat: no-repeat">
        <div style="text-align: center">
            <img alt="Logo" class="auto-style2" src="Images/Logo.png" /></div>
            
        <p style="font-family: Arial; font-size: small; text-align: center">&nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderStyle="None" Rows="1" Font-Names="Arial" Font-Size="Small" Height="97px" TextMode="MultiLine" Width="720px">Azure PaaS MVP is a two tier LOB solution - frontend web server (IIS) and a backend DB (MSSQL). The ASP.NET web application is running as Azure WebApp on a Free App Service Plan and connects to backend Azure SQL DB running on Basic (5 DTUs) price tier to perform read and write operations.

Azure PaaS functional diagram:</asp:TextBox>
        </p>
        <p style="font-family: Arial; font-size: small; text-align: center">
            <img alt="Diagram" class="auto-style3" src="Images/Diagram-PaaS.png" /></p>

        <p>
                &nbsp;</p>
        <p>
                <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" Text="&copy 2019 NextGen-Group 4"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        </p>


    </form>
</body>
</html>
