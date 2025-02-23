<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FORM_1.aspx.cs" Inherits="DBA_1.FORM_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agregar Libro</title>
    <style type="text/css">


        
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
            width: 400px;
            text-align: center;
        }

        
        div {
            margin-bottom: 15px;
        }

        
        label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        
        input {
            width: 90%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.1);
            font-size: 14px;
            outline: none;
            transition: 0.3s;
        }

        
        input.error {
            border: 2px solid red;
            background-color: #ffe5e5;
        }

        
        button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        
        button:hover {
            background-color: #218838;
        }

        
        input[type="date"] {
            border-radius: 5px;
            padding: 10px;
            width: 90%;
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="ISBN"></asp:Label>
                   <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label4" runat="server" Text="Titulo"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label5" runat="server" Text="Numero de Edición"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label6" runat="server" Text="Año de Publicación"></asp:Label>
                   <br />
                   <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </div>
            <center>
               <div>
                    <asp:Label ID="Label7" runat="server" Text="Nombre de los autores"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label8" runat="server" Text="País de publicación"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label9" runat="server" Text="Sinopsis"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label10" runat="server" Text="Carrrera"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
               </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label11" runat="server" Text="Matería"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
               </div>
            </center>
            <div></div>
            <center>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />

                    <asp:Label ID="Label12" runat="server" Text=" "></asp:Label>
                </div>
            </center>
        </div>
    </form>
</body>
</html>