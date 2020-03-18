<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/AdminMp.Master" AutoEventWireup="true" CodeBehind="AddEmp.aspx.cs" Inherits="WebApplication1.ADMIN.AddEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<style>
        #DivR {
            background-color: whitesmoke;
            border-bottom-left-radius: 40px;
            border-top-right-radius: 40px;
            width: 406px;
            height: 471px;
            margin-left: 435px;
            margin-top: 50px;
        }

        .Input {
            border-left: 2px inset midnightblue;
            border-right: 2px inset navy;
            border-top: 2px inset indigo;
            border-bottom: 2px inset blueviolet;
            width: 325px;
            height: 23px;
            margin-left: 21px;
            margin-top: 30px;
            margin-right: 8px;
            border-radius: 15px;
            text-align: center;
        }

        /*#Button1 {
            margin-left: 300px;
            margin-top: 30px;
            background-color: blueviolet;
            border-radius: 5px;
            font-size: medium;
            text-align: center;
            border-left-color: lime;
            border-right-color: aqua;
            width: 100px;
        }*/
        .BN {
            margin-left: 150px;
            margin-top: 30px;
            background-color: blueviolet;
            border-radius: 5px;
            font-size: medium;
            text-align: center;
            border-left-color: lime;
            border-right-color: aqua;
            width: 100px;
        }

        #ED {
            /*width: 50%;
            text-indent: 50%;*/
        }
    </style><div id="DivR" class="auto-style2">
        <asp:TextBox ID="EId" CssClass="Input" type="nuber" placeholder="Enter Emp Id" runat="server"></asp:TextBox>
        <asp:TextBox ID="Ename" CssClass="Input" type="Text" placeholder="Enter Emp Name" runat="server"></asp:TextBox>
        <%--  <asp:TextBox ID="TextBox3" CssClass="Input" type="" placeholder="Enter Emp Designation" runat="server"></asp:TextBox>--%>
        <asp:DropDownList ID="ED" CssClass="Input" runat="server" placeholder="Select Designation">


            <asp:ListItem>Maneger</asp:ListItem>
            <asp:ListItem>Guide</asp:ListItem>
            <asp:ListItem>Workers</asp:ListItem>
        </asp:DropDownList>
        <%--        <asp:TextBox ID="TextBox4" CssClass="Input" type="" placeholder="Enter Emp Branch" runat="server"></asp:TextBox>--%>
        <asp:DropDownList ID="EBranch" CssClass="Input" runat="server" DataSourceID="SqlDataSource1" DataTextField="BName" DataValueField="BId"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Branch]"></asp:SqlDataSource>
        <asp:TextBox ID="EContact" CssClass="Input" type="" placeholder="Enter Emp Contact no." runat="server"></asp:TextBox>
        <asp:TextBox ID="EAddr" CssClass="Input" type="" placeholder="Enter Emp Address " runat="server"></asp:TextBox>
        <asp:TextBox ID="ESal" CssClass="Input" type="" placeholder="Enter Emp Sal" runat="server"></asp:TextBox>





        <asp:Button ID="Button1" CssClass="BN" runat="server" Text="Submit" OnClick="Button1_Click" />



    </div>
</asp:Content>
