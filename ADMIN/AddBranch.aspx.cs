using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1.ADMIN
{
    public partial class AddBranch : System.Web.UI.Page
    {
        dbcon db = new dbcon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            
            db.con.Open();
            string insert = @"insert into Branch values(@Bid,@Bname,@BAddress,@BPhone,@NEmp)";
            db.cmd = new SqlCommand(insert, db.con);
            db.cmd.Parameters.AddWithValue("@BId", BId.Text);
            db.cmd.Parameters.AddWithValue("@BName", BName.Text);
            db.cmd.Parameters.AddWithValue("@BAddress", BAddress.Text);
            db.cmd.Parameters.AddWithValue("@BPhone", BPhone.Text);
            db.cmd.Parameters.AddWithValue("@NEmp", NEmp.Text);
            db.cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Branch Added Succusfully') </script>");

        }
    }
}