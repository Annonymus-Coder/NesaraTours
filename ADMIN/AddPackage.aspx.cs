using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace WebApplication1.ADMIN
{
    public partial class AddPackage : System.Web.UI.Page
    {
        dbcon db = new dbcon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
          
                string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
                string fileName = Name.Text;

                if (FileUpload1.HasFile)
                {


                    if (ext == ".jpg" || ext == ".png")
                    {
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + fileName + ext));
                        string path = "C:\\Users\\Parikshith Hegde\\source\\repos\\Img store\\Images\\" + fileName + ext;
                        db.con.Open();
                        string insert = @"insert into package values (@id,@Pname,@PFrom,@PTo,@EFood,@EAcco,@ETrain,@EFlight,@Ethree,
             @EFive,@EMini,@ESuv,@ELuxury,@NDays,@NNight,@path)";

                        db.cmd = new SqlCommand(insert, db.con);
                        db.cmd.Parameters.AddWithValue("@id", id.Text);
                        db.cmd.Parameters.AddWithValue("@PName", Name.Text);
                        db.cmd.Parameters.AddWithValue("@PFrom", from.Text);
                        db.cmd.Parameters.AddWithValue("@PTo", to.Text);
                        db.cmd.Parameters.AddWithValue("@EFood", food.Text);
                        db.cmd.Parameters.AddWithValue("@EAcco", acco.Text);
                        db.cmd.Parameters.AddWithValue("@ETrain", train.Text);
                        db.cmd.Parameters.AddWithValue("@EFlight", flight.Text);
                        db.cmd.Parameters.AddWithValue("@Ethree", three.Text);
                        db.cmd.Parameters.AddWithValue("@EFive", five.Text);
                        db.cmd.Parameters.AddWithValue("@EMini", mini.Text);
                        db.cmd.Parameters.AddWithValue("@ESuv", suv.Text);
                        db.cmd.Parameters.AddWithValue("@ELuxury", luxury.Text);
                        db.cmd.Parameters.AddWithValue("@NDays", Days.SelectedValue);
                        db.cmd.Parameters.AddWithValue("@NNight", night.SelectedValue);
                        db.cmd.Parameters.AddWithValue("@path", path);
                         db.cmd.ExecuteNonQuery();
                        db.con.Close();
                    Response.Redirect("ManagePackage.aspx");
                        Response.Write("<script> alert('Package Added Succusfully') </script>");
                      
                        

                    }
                    else
                    {
                        Response.Write("<script> alert('Incorrect Format')</script>");

                    }
                }
                else
                {
                    Response.Write("<script> alert('Choose a Image FIle')</script>");

                }
          
        }

      
    }
}