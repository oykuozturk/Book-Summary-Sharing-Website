using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class User : System.Web.UI.MasterPage
    {
        SqlDatabase con = new SqlDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("SELECT [CategoryName], [NumberOfCategories], [CategoryID] FROM [Tbl_Categories]", con.Connection());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();



        }

    }

}