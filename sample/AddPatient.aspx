<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddPatient.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 97%;
            height: 116px;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            width: 160px;
            height: 21px;
            font-weight: 700;
        }
        .style5
        {
            height: 10px;
        }
        .style6
        {
            height: 10px;
        }
        .style7
        {
            height: 10px;
            width: 147px;
        }
        .style8
        {
            height: 21px;
            width: 147px;
        }
        .style9
        {
            height: 52px;
            width: 147px;
        }
        .style10
        {
            height: 52px;
        }
        .style11
        {
            height: 52px;
        }
        .style12
        {
            height: 21px;
            width: 34px;
        }
        .style13
        {
            height: 10px;
            width: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style9">
            </td>
            <td class="style10" colspan="2">
            <h1>New Patient Registration</h1>
            <h2>Enter patient details</h2>
            <br />
            </td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Text="Patient ID"></asp:Label>
            </td>
            <td class="style12">
                <asp:Label ID="LabelID" runat="server" Text="Patient ID" 
                    style="font-weight: 700; color: #FF3300" Width="100px"></asp:Label>
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            </td>
            <td class="style12">
            <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="220px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox3" runat="server" Width="220px" ></asp:TextBox>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
         <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox6" runat="server" Width="220px" ></asp:TextBox>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
         <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox7" runat="server" Width="220px" ></asp:TextBox>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>

         <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Text="Mobile no"></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox4" runat="server" Width="220px">+91 </asp:TextBox>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="Blood group"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList6" runat="server" Width="220px">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
       
        <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label8" runat="server" Text="Unit required"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="220px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Text="Patient Disease"></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox5" runat="server" Width="220px" Height="39px"></asp:TextBox>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style6">
            </td>
            <td class="style13">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style6">
            </td>
            <td class="style13">
                <asp:Label ID="Label10" runat="server" Text="Label" Visible="False" 
                    style="font-weight: 700; color: #FF0000"></asp:Label>
                <br />
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style6" colspan="2">
            <center>
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" 
                    onclick="Button1_Click" CssClass="subbutton" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="subbutton" 
                    onclick="Button2_Click" Text="Reset" />
                    </center>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
    </table>

    <div  class="divmid" style="padding:5%;">

      

        <asp:GridView ID="GridView1" runat="server" CssClass="datashow" Width="90%" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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

      

    </div>
</asp:Content>

