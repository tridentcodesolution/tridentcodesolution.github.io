<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Headerl.ascx.cs" Inherits="UserControls_Headerl" %>
<table style="background-color: #c0c0ff">
    <tr>
        <td rowspan="2" >
            <asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/Resources/IOXNSUN.JPG"
                Width="183px" style="position: relative" /></td>
        <td align="left" >
            <asp:Label ID="Label3" runat="server" BackColor="#C0C0FF" Font-Bold="True"
                Font-Size="X-Large" ForeColor="Black" Height="25px" Style="left: 0px; position: relative;
                top: 0px" Width="91px">ESPEE......</asp:Label></td>
    </tr>
    <tr>
        <td align="left" >
            <asp:Label ID="Label2" runat="server" BackColor="Lavender" Font-Size="Large" ForeColor="Black"
                Height="12px" Style="left: 0px; position: relative; top: 0px" Width="566px">Welcome To The World of Quick Response</asp:Label></td>
    </tr>
</table>
        
            <asp:DataList ID="DataList1" runat="server"
                Height="1px" OnItemCommand="getdata" RepeatColumns="10" RepeatDirection="Horizontal"
                Style="left: 0px; position: relative; top: -1px" Width="764px" BackColor="Lavender">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkText" runat="server" CausesValidation="False" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Operations")%>'>
						<%#DataBinder.Eval(Container.DataItem, "Name")%>
					</asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
