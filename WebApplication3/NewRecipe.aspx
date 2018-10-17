<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecipe.aspx.cs" Inherits="WebApplication3.NewRecipe" %>

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
            <div class ="container"></div>
            <div class ="row">
                <asp:LinkButton runat="server" CssClass="btn btn-default" ID="btnRecipePage" Text="Recipe Page" OnClick="btnRecipePage_Click" />
            </div>
            <asp:Label runat="server" Text="Name" />
            <asp:TextBox runat="server" ID="name" />
        </div>
        <p>
            <asp:Label runat="server" Text="Ingredients" />
            <asp:TextBox runat="server" ID="ingredients" Height="153px" Width="210px" />
            </p>
        <p>
            <asp:Label runat="server" Text="Instructions" />
            <asp:TextBox runat="server" ID="instructions" Height="209px" Width="208px" />

        </p>
            <asp:TextBox runat="server" CssClass="btn btn-success" Text="Save" ID="btnSave" />
    </form>
</body>
</html>
