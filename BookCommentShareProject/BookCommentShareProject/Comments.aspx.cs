using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class Comments : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel6.Visible = false;

            //onaylı yorum listesi
            SqlCommand command = new SqlCommand("select * from Tbl_Commands where CommandApproval=1", con.Connection());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();

            //onaylı olmayan yorum listesi
            SqlCommand command2 = new SqlCommand("select * from Tbl_Commands where CommandApproval=0", con.Connection());
            SqlDataReader read2 = command2.ExecuteReader();
            DataList2.DataSource = read2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel6.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel6.Visible = false;
        }
    }
}