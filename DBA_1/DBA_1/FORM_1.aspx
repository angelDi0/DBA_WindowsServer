<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FORM_1.aspx.cs" Inherits="DBA_1.FORM_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 338px;
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
                    <asp:Label ID="Label5" runat="server" Text="Numero de Edicion"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </center>
            <center>
               <div>
                    <asp:Label ID="Label6" runat="server" Text="Anio de Publicacion"></asp:Label>
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
                    <asp:Label ID="Label8" runat="server" Text="Pais de publicacion"></asp:Label>
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
                    <asp:Label ID="Label11" runat="server" Text="Materia"></asp:Label>
                   <br />
                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
               </div>
            </center>
            <div></div>
            <center>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />

                    <asp:Label ID="Label12" runat="server" Text=" "></asp:Label>
                </div>
            </center>
        </div>
    </form>
</body>
</html>