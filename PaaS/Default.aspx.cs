using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
//using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var dt = DateTime.Now;
            string sucmsg = "";

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "Insert Into NextGen_T1 values (2,2,2)";

            if ((TextBox1.Text != "") & (TextBox2.Text != "") & (TextBox3.Text != ""))
            {
                cmd.CommandText = "INSERT INTO Feedback VALUES(@param1, @param2, @param3, @param4, @param5)";

                cmd.Parameters.AddWithValue("@param1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@param2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@param3", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@param4", TextBox3.Text);
                cmd.Parameters.AddWithValue("@param5", dt.ToString());

                cmd.Connection = db;
                db.Open();
                sucmsg = "Feedback submitted on " + dt.ToString() + ". ";

                try
                {
                    //cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    Label5.Text = sucmsg;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Label5.Text = "Error writing to database.";
                    //Console.WriteLine(ex.Message.ToString(), "Error Message");

                }
                finally
                {
                    db.Close();
                }
            }
            else
            {
                Label5.Text = "Fields cannot be empty. ";
            }

        }
    }
}