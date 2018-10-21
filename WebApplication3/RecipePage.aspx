<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecipePage.aspx.cs" Inherits="WebApplication3.RecipePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton runat="server" CssClass="btm btn-success" ID="addRecipe" Text="New Recipe"  OnClick="AddRecipe_Click" style="font-size: x-large"/>
            <br />
            <br />
            Your recipes are:<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="467px" Width="577px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="RecipeDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                    <asp:BoundField DataField="Ingredients" HeaderText="Ingredients" SortExpression="Ingredients" />
                    <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="RecipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RecipeConnectionString %>" DeleteCommandType="StoredProcedure" SelectCommand="SELECT [RecipeName], [Ingredients], [Instructions] FROM [Table] ORDER BY [RecipeName]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
