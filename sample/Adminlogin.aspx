<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            text-align: center;
            color: #2E538C;
            font-weight: bold;
            padding:5px;
        }
        .style6
        {
            color: #386BB7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style=" margin:5%; padding:5%; border-radius:15px; 
      box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19) !important; background-color:white;">
  <div style=" background-color:#8f9bc7; padding:0; border-top-left-radius: 5px; border-top-right-radius: 5px; ">
  <h2 class="style5">Admin Login </h2>
  </div>
  <div style=" background-color:#abb9ec; align-content:center; text-align: center; padding:10px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;" align="center">
    
     <h2 class="style6">Username</h2>
      <asp:TextBox ID="TextBox1" runat="server" Width="150px" style="border-radius:5px;"></asp:TextBox>
    <h2 class="style6">Password</h2>
     <asp:TextBox ID="TextBox2" runat="server" Width="150px" style="border-radius:5px;"></asp:TextBox>

      <br />
      <br />
      <asp:Button ID="Button1" runat="server" Text="Log In" 
          style=" padding:3px; font-size:20px; color:#585b8b; 
          background-color:#c5c8f3; border-radius:5px;" Width="150px" 
          onclick="Button1_Click"/>

      <br />
      <asp:Label ID="Label1" runat="server"></asp:Label>

  </div>
  </div>
</asp:Content>

