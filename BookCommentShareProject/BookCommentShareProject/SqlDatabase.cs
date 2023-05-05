using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BookCommandShareProject
{
    public class SqlDatabase
    {
        public SqlConnection Connection()
        {
            SqlConnection connect = new SqlConnection(@"Data Source=OOZTURK;Initial Catalog=BooksDB;Integrated Security=True");
            connect.Open();
            return connect;
        }
    }
}
