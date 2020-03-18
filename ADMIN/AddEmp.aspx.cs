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
    public partial class AddEmp : System.Web.UI.Page
    {
        dbcon db = new dbcon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db.con.Open();
            string insert = @"insert into emp values(@EId,@EName,@EDesignation,@EBranch,@EContact,@EAddr,@Esal)";
            db.cmd=new SqlCommand(insert, db.con);
            db.cmd.Parameters.AddWithValue("@EId", EId.Text);
            db.cmd.Parameters.AddWithValue("@EName", Ename.Text);
            db.cmd.Parameters.AddWithValue("@EDesignation", ED.Text);
            db.cmd.Parameters.AddWithValue("@EBranch", EBranch.SelectedValue);
            db.cmd.Parameters.AddWithValue("@EContact", EContact.Text);
            db.cmd.Parameters.AddWithValue("@EAddr", EAddr.Text);
            db.cmd.Parameters.AddWithValue("@ESal", ESal.Text);
            db.cmd.ExecuteNonQuery();
            Response.Redirect("EditEmp.aspx");
        }
    }
}