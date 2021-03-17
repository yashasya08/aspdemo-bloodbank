<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            height: 21px;
        }
        .style8
        {
            height: 21px;
            width: 33%;
        }
        .style10
        {
            width: 74px;
        }
        .style11
        {
            width: 51px;
        }
        .style12
        {
            width: 134px;
        }
        
        .style13
        {
            width: 86px;
        }
        
        .style14
        {
            height: 21px;
            text-align: center;
        }
                
        .style15
        {
            color: red;
        }
                
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 align="center"><b>Welcome to admin dashboard</b>
</h1>
<br>

    <table class="style5">
        <tr>
            <td class="style8">
               <div style=" padding:20px; border-radius:5px; box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19) !important; margin-right:30px;
               background-image: linear-gradient(180deg, #beedff, #90cce3 ); margin-top:30px;">
               <p>Select the lists you want to see</p>
                <a href="patientdb.aspx"><h2>Total Patient Details</h2></a>
                <a href="donordb.aspx"><h2>Total Donor Details</h2></a>
                <a href="TotalSold.aspx"><h2>Total Sold Units</h2></a>
                <a href="Stock.aspx"><h2>Total Stock</h2></a>
                <a href="AddUnit.aspx"><h2>Add Blood Units</h2></a>
                <a href="SellUnit.aspx"><h2>Sell Blood Units</h2></a>
                <a href="login.aspx"><h4 class="style15"><strong><b>Log Out</b></strong></h4>


               </div>
               </td>
            <td class="style6" width="50%">
            
                <table class="style5" style=" border:3px none Gray; height: 167px;">
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #000066;" 
                                Text="Search For -&gt;"></asp:Label>
                            </td>
                        <td class="style10">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="80px">
                                <asp:ListItem>Patient</asp:ListItem>
                                <asp:ListItem>Donor</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style11">
                            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #000066;" 
                                Text="ID -&gt;"></asp:Label>
                            </td>
                        <td class="style12">
                            <asp:TextBox ID="Textsearch" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="search" runat="server" CssClass="subbutton" Text="Search" 
                                onclick="search_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style14" colspan="5">
                        <br />
                       
                            </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            
             </td>
        </tr>
    </table>

     <center>
                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                                CellPadding="4" CssClass="datashow" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                            </center>
</asp:Content>

