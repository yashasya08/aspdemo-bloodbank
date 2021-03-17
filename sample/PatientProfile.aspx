<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PatientProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="divmid">

<h1 class="style5"><b>Here is Your Profile</b></h1><br /><br />

<div>
   
    <h4 class="style5">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bloodConnectionString %>" 
            DeleteCommand="DELETE FROM [patient] WHERE [Patient_ID] = @Patient_ID" 
            InsertCommand="INSERT INTO [patient] ([Name], [Age], [Sex], [City], [Email], [Password], [MobileNo], [BloodGroup], [UnitRequired], [Disease], [Patient_ID]) VALUES (@Name, @Age, @Sex, @City, @Email, @Password, @MobileNo, @BloodGroup, @UnitRequired, @Disease, @Patient_ID)" 
            SelectCommand="SELECT * FROM [patient] WHERE (([Email] = @Email) AND ([Password] = @Password))" 
            UpdateCommand="UPDATE [patient] SET [Name] = @Name, [Age] = @Age, [Sex] = @Sex, [City] = @City, [Email] = @Email, [Password] = @Password, [MobileNo] = @MobileNo, [BloodGroup] = @BloodGroup, [UnitRequired] = @UnitRequired, [Disease] = @Disease WHERE [Patient_ID] = @Patient_ID">
            <DeleteParameters>
                <asp:Parameter Name="Patient_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="UnitRequired" Type="Int32" />
                <asp:Parameter Name="Disease" Type="String" />
                <asp:Parameter Name="Patient_ID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="user" Type="String" />
                <asp:SessionParameter Name="Password" SessionField="pass" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="UnitRequired" Type="Int32" />
                <asp:Parameter Name="Disease" Type="String" />
                <asp:Parameter Name="Patient_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" CssClass="datashow" DataKeyNames="Patient_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Height="50px" Width="50%">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" 
                    SortExpression="BloodGroup" />
                <asp:BoundField DataField="UnitRequired" HeaderText="UnitRequired" 
                    SortExpression="UnitRequired" />
                <asp:BoundField DataField="Disease" HeaderText="Disease" 
                    SortExpression="Disease" />
                <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" ReadOnly="True" 
                    SortExpression="Patient_ID" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </h4>
    <h4 class="style5"><b>You can edit your detail by clicking on "edit"</b></h4>
    </div>
</div>
</asp:Content>

