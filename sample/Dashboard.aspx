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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h1 align="center"><b>Welcome to admin dashboard</b>
</h1>
<br>
<p>Select the lists you want to see</p>
    <table class="style5">
        <tr>
            <td class="style6" width="50%">
               <div style=" padding:20px ">
                <a href="patientdb.aspx"><h2>Total Patient Details</h2></a>
                <a href="donordb.aspx"><h2>Total Donor Details</h2></a>
                <a href="patientdb.aspx"><h2>Total Blood stock available</h2></a>


               </div>
               </td>
            <td class="style6" width="50%">
            </td>
        </tr>
    </table>
</asp:Content>

