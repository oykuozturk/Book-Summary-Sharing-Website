using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class CategoryEdit : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["CategoryID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("select * from Tbl_Categories where CategoryID=@t1", con.Connection());
                command.Parameters.AddWithValue("@t1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBox1.Text = read[1].ToString();
                    TextBox2.Text = read[2].ToString();
                }
                con.Connection().Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update Tbl_Categories set CategoryName=@p1, NumberOfCategories=@p2 where CategoryID=@p3", con.Connection());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();
            con.Connection().Close();
        }
    }
}
