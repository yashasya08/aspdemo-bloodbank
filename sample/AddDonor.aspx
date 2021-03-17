<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddDonor.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style4
        {
            width: 175px;
        }
        .style5
        {
            width: 117px;
        }
        .style6
        {
        }
        .style7
        {
            font-style: bold;
            width: 175px;
            height: 20px;
        }
        .style8
        {
            width: 140px;
            height: 20px;
        }
        .style9
        {
            width: 117px;
            height: 20px;
        }
        .style10
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6" colspan="2">
                <h1>New Donor Registration</h1>
            <h2>Enter Donor details</h2>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label10" runat="server" Text="Donor ID" style="font-weight: 700"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="labelID" runat="server" style="font-weight: 700; color: #FF3300" 
                    Text="Label" Width="200px"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" Text="Full Name" style="font-weight: 700"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="Textname" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="City" style="font-weight: 700"></asp:Label>
                </td>
            <td class="style5">
               <asp:TextBox ID="Textadd" runat="server" Width="200px" ></asp:TextBox>
               </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
            <asp:Label ID="Label8" runat="server" Text="Email" style="font-weight: 700"></asp:Label>
                &nbsp;</td>
            <td class="style9">
            <asp:TextBox ID="Textmail" runat="server" Width="200px"  ></asp:TextBox>
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label9" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
                </td>
            <td class="style5">
               <asp:TextBox ID="Textpass" runat="server" Width="200px" ></asp:TextBox>
               </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text="Age" style="font-weight: 700"></asp:Label> 
                </td>
            <td class="style5">
                <asp:TextBox ID="Textage" runat="server" Width="200px"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
               <asp:Label ID="Label4" runat="server" Text="Gender" style="font-weight: 700"></asp:Label> 
               </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label5" runat="server" Text="Blood group" style="font-weight: 700"></asp:Label> 
                </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label6" runat="server" Text="Mobile no" style="font-weight: 700"></asp:Label> 
                </td>
            <td class="style5">
                <asp:TextBox ID="Textmob" runat="server" Width="200px">+91 </asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2" colspan="2">
                <asp:Label ID="Label7" runat="server" 
                    style="color: #FF3300; margin:auto; font-weight: 700;" Text="Label" 
                    Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6" colspan="2">
            <center>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    CssClass="subbutton" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="subbutton" 
                    onclick="Button2_Click" Text="Reset" />
           </center>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>
    
    
</asp:Content>

