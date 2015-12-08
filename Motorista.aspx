<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Motorista.aspx.cs" Inherits="Cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Cadastrar Motorista</h3>
    <div>
        Nome :<asp:TextBox id="txtNome" runat="server"/><br />
        CNH :<asp:TextBox id="txtCNH" runat="server"/><br />
        <asp:Button id="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
    </div>
    <br /><br />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Motorista" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="rua" HeaderText="rua" SortExpression="rua" />
            <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
            <asp:BoundField DataField="cep" HeaderText="cep" SortExpression="cep" />
            <asp:BoundField DataField="cnh" HeaderText="cnh" SortExpression="cnh" />
            <asp:ButtonField Text="Detalhes" CommandName="Detalhes"/>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        <asp:SqlDataSource ID="Motorista" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Motorista]"></asp:SqlDataSource>
     </form>
    </body>
</html>
