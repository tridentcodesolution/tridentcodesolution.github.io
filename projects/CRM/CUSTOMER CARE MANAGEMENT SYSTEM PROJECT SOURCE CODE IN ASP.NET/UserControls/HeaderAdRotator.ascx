<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderAdRotator.ascx.cs" Inherits="UserControls_HeaderAdRotator" %>
<table>
    <tr>
        <td align="left"  valign="middle">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Resources/XML_Header_Rotator.xml"
                Height="60px" Style="position: relative; top: -3px" Width="468px" />
        </td>
        <td align="left"  valign="top">
        </td>
        <td align="left"  valign="middle">
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/Resources/XmlForAdRr1.xml"
                Height="62px" Style="left: -1px; position: relative; top: -4px" Width="201px" />
        </td>
    </tr>
</table>
