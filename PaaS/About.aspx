<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApp2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>nextgen-About</title>
    <style type="text/css">
        .auto-style1 {
            height: 596px;
        }
        .auto-style2 {
            width: 795px;
            height: 95px;
        }
        .auto-style3 {
            background-repeat: no-repeat;
            background-position: center;
        }
        .auto-style4 {
            width: 661px;
            height: 399px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="background-image: url('Images/Hexagons.png'); background-position: center; background-repeat: no-repeat">
        <div style="text-align: center">
            <img alt="Logo" class="auto-style2" src="Images/Logo.png" /></div>
            
        <p style="font-family: Arial; font-size: small; text-align: center">&nbsp;

            ASP.NET web application is running on frontend web server (IIS) and performs read/write to <span class="auto-style3">backend SQL server DB.</span></p>
        <p style="font-family: Arial; font-size: small; text-align: center">
            <img alt="Diagram" class="auto-style4" src="Images/Diagram.png" /></p>

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
