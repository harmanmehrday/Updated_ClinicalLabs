using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Updated_ClinicalLabs
{
    public partial class pickuppayment : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=updated_clms; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {
            string datee = Application["amountpaid"].ToString();
            Label1.Text = datee;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "HARMAN" || TextBox1.Text == "harman" || TextBox1.Text == "Harman")
            {
                Label4.Text = "Payment Successfull";
                string pfname = Application["fname"].ToString();
                string plname = Application["lname"].ToString();
                string pmail = Application["mail"].ToString();
                string pphone = Application["phone"].ToString();
                string ptest = Application["test"].ToString();
                string pamountpaid = Application["amountpaid"].ToString();
                //string ppid = Application["pid"].ToString();
                string dateee = Application["DateOfPickup"].ToString();

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = " Insert into pickup(fname,lname,mail,phone,testtype,dated) values(' " + pfname + " ',' " + plname + " ',' " + pmail + " ',' " + pphone + " ',' " + ptest + " ',' " + dateee + " ')";
                cmd.ExecuteNonQuery();
                long pid = cmd.LastInsertedId;
                Application["pid"] = pid;
                con.Close();
                Response.Redirect("PickupDetails.aspx");
            }
            else {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Payment Failed ";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("sam.aspx");
        }
    }
}