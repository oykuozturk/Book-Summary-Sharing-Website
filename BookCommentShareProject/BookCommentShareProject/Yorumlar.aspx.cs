using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlDatabase con = new SqlDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("SELECT [UserName], [CommandText], [CommandDate] FROM [Tbl_Commands] where CommandApproval=1", con.Connection());
            SqlDataReader read = command.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();
        }
    }
}