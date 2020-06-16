<%@ Page Title="Work Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkOrders.aspx.cs" Inherits="WorkOrders.WorkOrders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="content">
    <h2 style="height: 43px">Current Work Orders</h2>
        <table style="width:87%;" class="nav-justified">
            <tr>
                <th style="height: 20px; width: 170px;">Work Order</th>
                <th class="modal-sm" style="width: 159px; height: 20px">Order Number</th>
                <th style="width: 207px; height: 20px">Creation Date</th>
                <th style="width: 198px; height: 20px">Current Status</th>
                <th style="width: 181px; height: 20px">Current Station</th>
                <th style="width: 184px; height: 20px">Yield %</th>
                <th style="width: 184px; height: 20px">Lasted Time (Minutes)</th>
            </tr>
            <tr>
                <td class="link-cell" style="height: 34px; width: 170px;">#1</td>
                <td style="height: 34px; width: 159px;">1001</td>
                <td style="height: 34px; width: 207px;">04/05/2020 15:12:45</td>
                <td style="height: 34px; width: 198px;">Engineering Support</td>
                <td style="height: 34px; width: 181px;">Eng1</td>
                <td style="height: 34px; width: 184px;">95%</td>
                <td style="height: 34px">10231</td>
            </tr>
            <tr>
                <td class="link-cell" style="width: 170px" >#2</td>
                <td class="modal-sm" style="width: 159px">1002</td>
                <td style="width: 207px">04/06/2020 15:12:45</td>
                <td style="width: 198px">Validation</td>
                <td style="width: 181px">Eng2</td>
                <td style="width: 184px">100%</td>
                <td>23122</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 170px">&nbsp;</td>
                <td class="modal-sm" style="width: 159px">&nbsp;</td>
                <td style="width: 207px">&nbsp;</td>
                <td style="width: 198px">&nbsp;</td>
                <td style="width: 181px">&nbsp;</td>
                <td style="width: 184px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>
    </asp:Content>
