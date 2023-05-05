using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BookCommandShareProject
{
    public partial class CategoryDetails : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        string CategoryID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryID = Request.QueryString["CategoryID"];
            SqlCommand com = new SqlCommand("Select * From Tbl_Books Where CategoryID=@p1", con.Connection());
            com.Parameters.AddWithValue("@p1", CategoryID);
            SqlDataReader read = com.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();

        }
    }
}