<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SellUnit.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            width: 132px;
            text-align: left;
        }
        .style8
        {
            width: 253px;
        }
        .style9
        {
            text-align: center;
        }
        .style10
        {
            width: 101px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class=divmid>

<a href="Dashboard.aspx">
<h3 bgcolor="grey"><u> <- Back To Dashboard</u></h3>
</a>
<br />

<center>

    <table class="style5">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style10" style="text-align: left; font-weight: 700">
                <asp:Label ID="Label1" runat="server" Text="Sell To "></asp:Label>
                Patient</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                    Text="Blood Group"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    style="text-align: left; margin-left: 0px" Width="100px">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                 <asp:Label ID="Label3" runat="server" style="font-weight: 700" 
                    Text="No Of Units"></asp:Label></td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="100px">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label4" runat="server" Text="Cost" style="font-weight: 700"></asp:Label></td>
            <td class="style7">
                <asp:Label ID="lblcost" runat="server" style="font-weight: 700; color: #FF3300"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Check Cost" CssClass="subbutton" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Text="Sell" onclick="Button1_Click" 
                    CssClass="subbutton" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" 
                    CssClass="subbutton" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                <br />
                <asp:Label ID="lblmsg" runat="server" 
                    style="text-align: center; font-weight: 700; color: #FF0000" Text="Label" 
                    Visible="False"></asp:Label>
             </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</center>

</div>
</asp:Content>

