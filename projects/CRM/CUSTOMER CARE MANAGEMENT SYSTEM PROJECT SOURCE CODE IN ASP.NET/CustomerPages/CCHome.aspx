<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CCHome.aspx.cs" Inherits="CustomerPages_CCHome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-color: mintcream;">
        <tr>
            <td valign="bottom">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="left: 3px; position: relative;
                    top: 0px" Text="Customer Home" Width="110px"></asp:Label></td>
            <td valign="bottom">
            </td>
            <td valign="bottom">
            </td>
        </tr>
        <tr>
            <td >
                <asp:ImageButton ID="ImageButton1" runat="server" Height="84px" ImageUrl="~/Resources/smd5.jpg"
                    OnClick="ImageButton1_Click" Style="position: relative" ToolTip="Post a Query"
                    Width="142px" /></td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="84px" ImageUrl="~/Resources/graphics.jpg"
                    OnClick="ImageButton2_Click" Style="left: 0px; position: relative; top: -2px"
                    ToolTip="Query Status" Width="142px" /></td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="84px" ImageUrl="~/Resources/pf3.jpg"
                    OnClick="ImageButton3_Click" Style="position: relative" ToolTip="Previous Solutions"
                    Width="141px" /></td>
        </tr>
        <tr>
            <td >
                <asp:LinkButton ID="lnkPostQry" runat="server" Font-Bold="False" Font-Size="Medium"
                    OnClick="lnkPostQry_Click" Style="position: relative" Width="102px">Post A Query </asp:LinkButton></td>
            <td >
                <asp:LinkButton ID="lblQrySt" runat="server" Font-Bold="False" Font-Size="Medium"
                    OnClick="lblQrySt_Click" Style="position: relative" Width="114px">Query Status</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="lblPrevSol" runat="server" Font-Bold="False" Font-Size="Medium"
                    OnClick="lblPrevSol_Click" Style="left: 2px; position: relative; top: 0px" Width="135px">Previous Solutions</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

