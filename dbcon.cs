using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public class dbcon
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public dbcon()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con =new SqlConnection(constr);
            cmd =new SqlCommand();

        }
    }
}