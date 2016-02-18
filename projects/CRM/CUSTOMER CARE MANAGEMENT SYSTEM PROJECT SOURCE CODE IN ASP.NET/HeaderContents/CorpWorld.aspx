<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CorpWorld.aspx.cs" Inherits="HeaderContents_CorpWorld" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc3" %>


<%@ Register Src="../UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >

        <table >
            <tr>
                <td colspan="3" align="left" valign="top">
                    
                   
                   
                </td>
            </tr>
            <tr>
                <td rowspan="1">
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 2px;
                        position: relative; top: 1px" Text="Corporate World" Width="184px"></asp:Label></td>
                <td >
                </td>
            </tr>
            <tr>
                <td rowspan="2" >
                </td>
                <td valign="top">
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" ForeColor="#000040" Height="13px"
                        Style="left: 0px; position: relative; top: 1px" Text="We provide the best to the employees as we do with our customers. Employees are provided with the best of pay packages in the industry, also, they are give security for their job. ............................ Apart from routine works, we often provide ample scope for recreation"
                        Width="606px"></asp:Label></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
   
</asp:Content>