<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRegistro.aspx.cs" Inherits="ASP_SP.Sources.Pages.FrmRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="../JavaScript/JavaScript.js"></script>
    <title>Registro de usuarios</title>
</head>
<body>
    <form id="FrmRegistro" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Registro de usuarios</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Datos personales</legend>
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Nombres:"></asp:Label>
                            <asp:TextBox ID="tbNombres" CssClass="form-control" runat="server" placeholder="ej. Anne"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Apellidos:"></asp:Label>
                            <asp:TextBox ID="tbApellidos" CssClass="form-control" runat="server" placeholder="ej. Hathaway"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
                            <asp:TextBox ID="tbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <legend class="row justify-content-center">Datos de inicio de sesión</legend>
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Usuario:"></asp:Label>
                            <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="ej. Annie"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Clave:"></asp:Label>
                            <asp:TextBox ID="tbClave" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Repetir Clave:"></asp:Label>
                            <asp:TextBox ID="tbClave2" CssClass="form-control" runat="server" placeholder="Password Again" TextMode="Password"></asp:TextBox>
                        </div>
                        <br />
                        <div class="row justify-content-center">
                            <asp:Image runat="server" CssClass="img-thumbnail" Width="150" Height="150" ImageUrl="~/Sources/Images/User.jpg"/>
                        </div>
                        <div class="row justify-content-center">
                            <asp:FileUpload runat="server" CssClass="small form-control" ID="FUImage" onchange="mostrarimagen(this)"/>
                        </div>
                    </fieldset>
                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">
                        <asp:Button runat="server" CssClass="form-control btn btn-success" text="Completar Registro" OnClick="Registrar"/>
                        <hr />
                        <asp:Button runat="server" CssClass="form-control btn btn-warning" text="Cancelar" OnClick="Cancelar"/>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
