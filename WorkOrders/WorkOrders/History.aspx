<%@ Page Title="Work Orders History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="WorkOrders.History" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
         <h2 style="height: 40px"><%: Title %></h2>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="302px" Width="464px">
        <div class="content" >
             <h3>Filters</h3>
        <br />
        Work Order Id<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Current Order Status<br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="220px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>In-Progress</asp:ListItem>
            <asp:ListItem>Rework</asp:ListItem>
            <asp:ListItem>Cancel</asp:ListItem>
            <asp:ListItem>Completed</asp:ListItem>
        </asp:DropDownList>
                    <br />
        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn-primary" />
        </div>
    </asp:Panel>


      <br />
         <br />
      <br />
 <table style="width:1209px;" class="nav-justified">
            <tr>
                <th style="height: 20px; width: 81px;">Old Status</th>
                <th style="width: 116px; height: 20px">New Status</th>
                <th style="width: 207px; height: 20px">Modified On</th>
                <th style="width: 198px; height: 20px">Modified By</th>
                <th style="width: 181px; height: 20px">Information</th>
            </tr>
            <tr>
                <td style="height: 34px; width: 81px;">Open</td>
                <td style="height: 34px; width: 116px;">In-Progress</td>
                <td style="height: 34px; width: 207px;">04/05/2020 15:12:45</td>
                <td style="height: 34px; width: 198px;">Production1</td>
                <td style="height: 34px; width: 181px;">Requirments Filled</td>
            </tr>
            <tr>
                <td style="width: 81px" >In-Progress</td>
                <td style="width: 116px">Rework</td>
                <td style="width: 207px">04/06/2020 15:12:45</td>
                <td style="width: 198px">Production1</td>
                <td style="width: 181px">Need Info about boards</td>
            </tr>

        </table>
    <br />
    </div>
   
</asp:Content>
