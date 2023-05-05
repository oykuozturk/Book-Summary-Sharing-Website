using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class YorumYap : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        string bookid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
       

        }

        protected void BtnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Commands (UserName, CommandText, CommandDate) values (@c1, @c2, @c3)", con.Connection());
            command.Parameters.AddWithValue("@c1", TxtBxYorumYapan.Text);
            command.Parameters.AddWithValue("@c2", TxtBxYorum.Text);
            command.Parameters.AddWithValue("@c3", TxtBxYorumTarihi.Text);

            command.ExecuteNonQuery();
            con.Connection().Close();
            Response.Write("Yorumunuz Alınmıştır :) ");

        }
    }
}