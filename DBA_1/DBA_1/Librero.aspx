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
            <table>
                <tr>
                    <th>ID</th>
                    <th>ISBN</th>
                    <th>Título</th>
                    <th>Edición</th>
                    <th>Año de publiación</th>
                    <th>Autores</th>
                    <th>Pais de Publicación</th>
                    <th>Sinopsis</th>
                    <th>Carrera</th>
                    <th>Materia</th>
                </tr>
                <tr>
                    <td>Fila 1</td><td>Fila 1</td><td>Fila 1</td><td>Fila 1</td><td>Fila 1</td>
                    <td>Fila 1</td><td>Fila 1</td><td>Fila 1</td><td>Fila 1</td><td>Fila 1</td>
                </tr>
                <tr>
                    <td>Fila 2</td><td>Fila 2</td><td>Fila 2</td><td>Fila 2</td><td>Fila 2</td>
                    <td>Fila 2</td><td>Fila 2</td><td>Fila 2</td><td>Fila 2</td><td>Fila 2</td>
                </tr>
                <tr>
                    <td>Fila 3</td><td>Fila 3</td><td>Fila 3</td><td>Fila 3</td><td>Fila 3</td>
                    <td>Fila 3</td><td>Fila 3</td><td>Fila 3</td><td>Fila 3</td><td>Fila 3</td>
                </tr>
            </table>
        </div>
        <div class="button-container">
            <asp:Button ID="btnRedirigir" runat="server" Text="Agregar Libro" OnClick="btnRedirigir_Click" />

        </div>
    </form>
</body>
</html>
