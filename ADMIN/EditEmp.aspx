<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/AdminMp.Master" AutoEventWireup="true" CodeBehind="EditEmp.aspx.cs" Inherits="WebApplication1.ADMIN.EditEmp" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EId" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="EId" HeaderText="EId" ReadOnly="True" SortExpression="EId" />
            <asp:BoundField DataField="EName" HeaderText="EName" SortExpression="EName" />
            <asp:BoundField DataField="EDesignation" HeaderText="EDesignation" SortExpression="EDesignation" />
            <asp:BoundField DataField="EBranch" HeaderText="EBranch" SortExpression="EBranch" />
            <asp:BoundField DataField="EContact" HeaderText="EContact" SortExpression="EContact" />
            <asp:BoundField DataField="EAddr" HeaderText="EAddr" SortExpression="EAddr" />
            <asp:BoundField DataField="ESal" HeaderText="ESal" SortExpression="ESal" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Emp] WHERE [EId] = @EId" InsertCommand="INSERT INTO [Emp] ([EId], [EName], [EDesignation], [EBranch], [EContact], [EAddr], [ESal]) VALUES (@EId, @EName, @EDesignation, @EBranch, @EContact, @EAddr, @ESal)" SelectCommand="SELECT * FROM [Emp]" UpdateCommand="UPDATE [Emp] SET [EName] = @EName, [EDesignation] = @EDesignation, [EBranch] = @EBranch, [EContact] = @EContact, [EAddr] = @EAddr, [ESal] = @ESal WHERE [EId] = @EId">
        <DeleteParameters>
            <asp:Parameter Name="EId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EId" Type="Int32" />
            <asp:Parameter Name="EName" Type="String" />
            <asp:Parameter Name="EDesignation" Type="String" />
            <asp:Parameter Name="EBranch" Type="Int32" />
            <asp:Parameter Name="EContact" Type="Int64" />
            <asp:Parameter Name="EAddr" Type="String" />
            <asp:Parameter Name="ESal" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EName" Type="String" />
            <asp:Parameter Name="EDesignation" Type="String" />
            <asp:Parameter Name="EBranch" Type="Int32" />
            <asp:Parameter Name="EContact" Type="Int64" />
            <asp:Parameter Name="EAddr" Type="String" />
            <asp:Parameter Name="ESal" Type="Single" />
            <asp:Parameter Name="EId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
