<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="SignOut.aspx.cs" Inherits="SignOut" %>

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
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Purple"
                        Style="position: relative" Width="233px">You Have Successfully Signed Out</asp:Label></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" Font-Italic="False"
                        Font-Size="Smaller" ForeColor="#000040" OnClick="LinkButton1_Click" Style="left: 4px;
                        position: relative; top: 0px" Width="80px">Back To Home</asp:LinkButton></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td >
                </td>
            </tr>
        </table>
    
    </div>
    
</asp:Content>