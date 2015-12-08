using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Carro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Captura o valor armazenado na Sessão (Na tela de cadastro de motorista)
        //e insere no TextBox da página de cadastro de carro
        txtNome.Text = Session["idMotorista"].ToString() + " - ";
        txtNome.Text += Session["nomeMotorista"].ToString();

    }
}