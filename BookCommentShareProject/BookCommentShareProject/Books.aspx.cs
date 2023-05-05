using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class Books : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {


            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["BookID"];
                islem = Request.QueryString["islem"];
                SqlCommand command2 = new SqlCommand("select * from Tbl_Categories", con.Connection());
                SqlDataReader read2 = command2.ExecuteReader();
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";
                DropDownList1.DataSource = read2;
                DropDownList1.DataBind();
            }
            SqlCommand command = new SqlCommand("select * from Tbl_Books", con.Connection());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand command2 = new SqlCommand("delete from Tbl_Books where BookID=@k1", con.Connection());
                command2.Parameters.AddWithValue("@k1", id);
                command2.ExecuteNonQuery();
                con.Connection().Close();
            }
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

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Books(BookName,BookWriter,BookText,CategoryID) values (@p1,@p2,@p3,@p4)", con.Connection());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", TextBox3.Text);
            command.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            command.ExecuteNonQuery();
            con.Connection().Close();

            SqlCommand command2 = new SqlCommand("update Tbl_Categories set NumberOfCategories=NumberOfCategories+1 where CategoryID=@p1", con.Connection());
            command2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            command2.ExecuteNonQuery();
            con.Connection().Close();
        }
    }
}