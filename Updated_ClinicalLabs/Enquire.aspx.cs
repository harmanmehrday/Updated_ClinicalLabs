using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace ClinicalLabs
{
    public partial class Enquire : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=updated_clms; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " Insert into enquire(fname,lname,mail,message) values(' " + TextBox1.Text + " ',' " + TextBox2.Text + " ',' " + TextBox3.Text + " ',' " + TextArea1.Text + " ')";
            cmd.ExecuteNonQuery();
            con.Close();

            string val = string.Empty;
            TextBox1.Text = val;
            TextBox2.Text = val;
            TextBox3.Text = val;
            TextArea1.Text = val;

            Response.Redirect("EnquiryDetail.aspx");
        }
    }
}