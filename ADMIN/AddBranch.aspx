<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/AdminMp.Master" AutoEventWireup="true" CodeBehind="AddBranch.aspx.cs" Inherits="WebApplication1.ADMIN.AddBranch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #DivR {
            background-color: whitesmoke;
            border-bottom-left-radius: 40px;
            border-top-right-radius: 40px;
            width: 406px;
            height: 400px;
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
            margin-top: 20px;
            margin-right: 8px;
            border-radius: 15px;
            text-align: center;
        }

        /*#Button1 {
            margin-left: 150px;
            margin-top: 30px;
            background-color: blueviolet;
            border-radius: 5px;
            font-size: medium;
            text-align: center;
            border-left-color: lime;
            border-right-color: aqua;
            width:100px;
        }*/
        h3 {
            text-align: center;
        }

        .Btn {
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
    </style>
    <div id="DivR">
        <h3>Add Employee details
        </h3>
        <asp:TextBox ID="BId" CssClass="Input" type="Number" runat="server" placeholder="Enter Branch ID"></asp:TextBox>
        <asp:TextBox ID="BName" CssClass="Input" runat="server" placeholder="Enter Branch Name"></asp:TextBox>
        <asp:TextBox ID="BAddress" CssClass="Input" runat="server" placeholder="Enter Branch Address"></asp:TextBox>
        <asp:TextBox ID="BPhone" CssClass="Input" type="tel" runat="server" placeholder="Enter Branch Contact"></asp:TextBox>
        <asp:TextBox ID="NEmp" CssClass="Input" type="number" runat="server" placeholder="Enter Number of Employees"></asp:TextBox>

        <asp:Button ID="Button1" class="Btn" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>


</asp:Content>
