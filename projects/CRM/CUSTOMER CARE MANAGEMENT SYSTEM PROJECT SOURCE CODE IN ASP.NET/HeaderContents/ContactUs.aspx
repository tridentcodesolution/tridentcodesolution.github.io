<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="HeaderContents_ContactUs" %>

<%@ Register Src="../UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="background-color:#f5fffa">
        <table >
            <tr>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td rowspan="1">
                </td>
                <td >
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 2px;
                        position: relative; top: 1px" Text="Contact Us" Width="118px"></asp:Label></td>
                <td>
                </td>
            </tr>
            <tr>
                <td rowspan="2">
                   </td>
                <td valign="top">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Purple" Height="13px"
                        Style="left: 0px; position: relative; top: 0px" Text="Hyderabad Office:" Width="606px"></asp:Label>H.No
                    7-2, Road No 2,<br />
                    Banjara Hills,<br />
                    Hyderabad<br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Purple" Height="13px"
                        Style="left: -3px; position: relative; top: 0px" Text="Bangalore Office:" Width="606px"></asp:Label>
                    Flat:204,ShivalikPlaza,<br />
                    HardanaHalli Road,<br />
                    Bangalore<br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Purple" Height="13px"
                        Style="left: 0px; position: relative; top: 1px" Text="Delhi Office:" Width="606px"></asp:Label><br />
                    1-1-234,Red Fort Road,<br />
                    New Delhi<br />
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Purple" Height="13px"
                        Style="left: 0px; position: relative; top: 1px" Text="Singapore Office:" Width="606px"></asp:Label><br />
                    #45,Silver Palace Drive,<br />
                    Singapore City<br />
                    Singapore<br />
                    </td>
                <td >
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