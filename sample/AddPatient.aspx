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
        }
        .style5
        {
            height: 10px;
        }
        .style6
        {
            width: 160px;
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
                <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label>
            </td>
            <td class="style3">
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
            <td class="style3">
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
            <td class="style5">
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
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style5">
            <asp:TextBox ID="TextBox3" runat="server" Width="220px" Height="50px"></asp:TextBox>
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
                <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
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
            <td class="style6">
            </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Text="Button" Width="100px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
    </table>

    <div  class="divmid" style="padding:5%;">

      

        <asp:GridView ID="GridView1" runat="server" CssClass="datashow" Width="90%">
        </asp:GridView>

      

    </div>
</asp:Content>

