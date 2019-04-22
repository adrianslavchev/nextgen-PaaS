<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>nextgen</title>
    <style type="text/css">
        .auto-style2 {
            width: 620px;
            height: 1px;
        }
        .auto-style3 {
            width: 795px;
            height: 95px;
        }
        </style>
    </head>
<body>
    <form id="form1" runat="server" style="background-position: center; background-repeat: no-repeat; background-image: url('Images/Hexagons.png');">
        <div style="text-align: center;">
            <img alt="Logo" class="auto-style3" src="Images/Logo.png" /><br />
            </div>
        <p style="font-family: Arial; font-size: large; text-align: center;">
            Azure PaaS MVP feedback form
        </p>
        <p>
            <asp:Table ID="Table1" runat="server" Width="500px" Font-Names="Arial" Font-Size="Small" HorizontalAlign="Center">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    

</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    

</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
                    

</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                    

</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label3" runat="server" Text="Category:"></asp:Label>
                    

</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="254px" DataSourceID="SqlDataSource2" DataTextField="Category" DataValueField="Category">
                        </asp:DropDownList> 
                    

</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label4" runat="server" Text="Feedback:"></asp:Label>
                    

</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="420px">Your feedback here</asp:TextBox>
                    

</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" HorizontalAlign="Right">                    
                    <asp:TableCell runat="server">
                        
                    </asp:TableCell>                    
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                        

<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    

</asp:TableCell>
                    <asp:TableCell runat="server">

                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>

        </p>
        <p>
            &nbsp;
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQL-PaaS %>" SelectCommand="SELECT * FROM [Feedback] ORDER BY [id]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQL-PaaS %>" SelectCommand="SELECT * FROM [Category] ORDER BY [id]"></asp:SqlDataSource>
        
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Horizontal" Font-Names="Arial" Font-Size="Small" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" Font-Size="Small" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <HeaderStyle Font-Names="Arial" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="E-mail" SortExpression="Email" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
            <EditRowStyle BackColor="#999999" Font-Names="Arial" Font-Size="Small" />
            <FooterStyle BackColor="White" Font-Bold="False" ForeColor="Black" />
            <HeaderStyle BackColor="White" Font-Bold="False" ForeColor="Black" Font-Names="Arial" Font-Size="Small" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" />
            <RowStyle BackColor="#F5F9FC" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
         <p style="font-family: Arial; font-size: large; text-align: center;">             
             <img alt="Line" class="auto-style2" src="Images/Line.png" />
         </p>
        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" Text="&copy 2019 NextGen-Group 4"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" Text="|"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" Font-Size="Small" NavigateUrl="~/Contacts.aspx">Contact team</asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial" Font-Size="Small" NavigateUrl="~/About.aspx">About App</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

       &nbsp;<br />
    </form>
</body>
</html>
