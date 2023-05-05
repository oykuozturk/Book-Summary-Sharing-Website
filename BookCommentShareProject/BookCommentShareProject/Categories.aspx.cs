using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class Categories : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["CategoryID"];
                islem = Request.QueryString["islem"];

            }
            SqlCommand command = new SqlCommand("SELECT * from Tbl_Categories", con.Connection());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            if (islem == "sil")
            {
                SqlCommand commandDelete = new SqlCommand("delete from Tbl_Categories where CategoryID=@p1", con.Connection());
                commandDelete.Parameters.AddWithValue("@p1", id);
                commandDelete.ExecuteNonQuery();
                con.Connection().Close();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Categories (CategoryName) values (@p1)", con.Connection());
            command.Parameters.AddWithValue("p1", TextBox1.Text);
            command.ExecuteNonQuery();
            con.Connection().Close();
        }
    }
}