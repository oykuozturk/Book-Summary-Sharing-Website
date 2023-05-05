using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class CommentDetails : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["CommandID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("Select UserName,CommandText,BookName from Tbl_Commands inner join Tbl_Books on Tbl_Commands.BookID=Tbl_Books.BookID where CommandID=@p1 ", con.Connection());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBoxKullaniciAdi.Text = read[0].ToString();
                    TextBoxYorum.Text = read[1].ToString();
                    TextBoxKitapAdi.Text = read[2].ToString();
                }
                con.Connection().Close();
            }

        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update Tbl_Commands set CommandApproval=@k1 where CommandID=@k2", con.Connection());
            command.Parameters.AddWithValue("@k1", "True");
            command.Parameters.AddWithValue("@k2", id);
            command.ExecuteNonQuery();
            con.Connection().Close();
        }
    }
}