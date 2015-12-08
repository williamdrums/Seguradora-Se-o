using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //Verifica a ação na GridView no link Detalhes
        if (e.CommandName.Equals("Detalhes"))
        {
            //Captura a linha em que foi acionado o link Detalhe
            int linha = int.Parse((string)e.CommandArgument);

            //Captura o valor do ID na primeira coluna da linha selecionada
            int id = int.Parse(GridView1.Rows[linha].Cells[0].Text);

            //Captura o valor do NOME na segunda coluna da linha selecionada
            string nome = GridView1.Rows[linha].Cells[1].Text;

            //Armazena na sessão o id e nome selecionados
            Session["idMotorista"] = id;
            Session["NomeMotorista"] = nome;

            //redireciona para a tela de Cadastro de Carros
            Response.Redirect("Carro.aspx");
        }
    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        //método para salvar no banco (Motorista)

        //Se salvou correto então atualizar GridView
        GridView1.DataBind();
    }
}