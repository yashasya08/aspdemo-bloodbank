<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TotalSold.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class=divmid>

 <a href="Dashboard.aspx">
<h3 bgcolor="grey"><u> <- Back To Dashboard</u></h3>
</a>
<br />

<h1 class="style5">Total Details of Sold Units</h1>
<br />
<br />
<br />

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="datashow" 
        ForeColor="#333333" GridLines="None" Width="70%" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="sell_to" HeaderText="sell_to" 
                SortExpression="sell_to" />
            <asp:BoundField DataField="bloodgroup" HeaderText="bloodgroup" 
                SortExpression="bloodgroup" />
            <asp:BoundField DataField="no_of_unit" HeaderText="no_of_unit" 
                SortExpression="no_of_unit" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bloodConnectionString %>" 
        SelectCommand="SELECT * FROM [sell]"></asp:SqlDataSource>



</div>
</asp:Content>

