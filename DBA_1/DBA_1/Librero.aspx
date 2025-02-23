<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Librero.aspx.cs" Inherits="DBA_1.Librero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Librero</title>
    <style>
        @keyframes cambioColor {
            0% { background: #6a11cb; }
            25% { background: #2575fc; }
            50% { background: #ff6f61; }
            75% { background: #4caf50; }
            100% { background: #6a11cb; }
        }

        body {
            font-family: Arial, sans-serif;
            animation: cambioColor 10s infinite alternate;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 900px;
            text-align: center;
        }

        .table-container {
            max-width: 100%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            table-layout: fixed;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 16px;
            word-wrap: break-word;
        }

        th {
            background-color: #2575fc;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ff6f61;
            color: white;
        }

        .button-container {
            margin-top: 20px;
        }

        .btn {
            background-color: #2575fc;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #6a11cb;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table" ShowHeader="true">
                <HeaderStyle CssClass="encabezado" />
                <Columns>
                    <asp:TemplateField HeaderText="ISBN">
                        <ItemTemplate>
                            <%# Eval("ISBN") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Título">
                        <ItemTemplate>
                            <%# Eval("titulo") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Edición">
                        <ItemTemplate>
                            <%# Eval("numero_edicion") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Año Publicación">
                        <ItemTemplate>
                            <%# Eval("year_publicacion", "{0:yyyy}") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Autores">
                        <ItemTemplate>
                            <%# Eval("autores") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="País">
                        <ItemTemplate>
                            <%# Eval("pais_publicacion") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Sinopsis">
                        <ItemTemplate>
                            <%# Eval("sinopsis") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Carrera">
                        <ItemTemplate>
                            <%# Eval("carrera") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Materia">
                        <ItemTemplate>
                            <%# Eval("materia") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="button-container">
             <asp:Button ID="btnCargarDatos" runat="server" Text="Cargar Productos" OnClick="btnCargarDatos_Click" CssClass="btn btn-primary" />
            <asp:Button ID="btnRedirigir" runat="server" Text="Agregar Libro" OnClick="btnRedirigir_Click" CssClass="btn btn-secondary" />
        </div>
    </form>
</body>
</html>
