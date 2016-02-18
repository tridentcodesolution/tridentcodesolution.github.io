<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>

<%@ Register Src="UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >

        <table>
            <tr>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td  rowspan="4">
                    </td>
                <td >
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Purple"
                        Style="position: relative" Width="335px">You Have Successfully Posted A Query</asp:Label></td>
                <td >
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Underline="False" ForeColor="Blue"
                        Style="left: 4px; position: relative; top: 1px" Width="336px"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Underline="False" ForeColor="Blue"
                        Style="position: relative" Width="337px">*Please Note the Query Id For Future Reference</asp:Label></td>
                <td>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" Font-Italic="False"
                        Font-Size="Smaller" ForeColor="#000040" OnClick="LinkButton1_Click" Style="position: relative"
                        Width="130px">Back To Home</asp:LinkButton></td>
                <td >
                </td>
            </tr>
        </table>
       </div>
    </asp:Content>
