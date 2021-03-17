<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DonorProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="divmid">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bloodConnectionString %>" 
        DeleteCommand="DELETE FROM [donor] WHERE [Email] = @Email" 
        InsertCommand="INSERT INTO [donor] ([Name], [City], [Email], [Age], [Sex], [BloodGroup], [Mobileno], [Password]) VALUES (@Name, @City, @Email, @Age, @Sex, @BloodGroup, @Mobileno, @Password)" 
        SelectCommand="SELECT * FROM [donor] WHERE (([Email] = @Email) AND ([Password] = @Password))" 
        UpdateCommand="UPDATE [donor] SET [Name] = @Name, [City] = @City, [Age] = @Age, [Sex] = @Sex, [BloodGroup] = @BloodGroup, [Mobileno] = @Mobileno, [Password] = @Password WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="user" Type="String" />
            <asp:SessionParameter Name="Password" SessionField="pass" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" CssClass="datashow" DataKeyNames="Email" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="50%">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                SortExpression="Email" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" 
                SortExpression="BloodGroup" />
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" 
                SortExpression="Mobileno" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</div>
</asp:Content>

