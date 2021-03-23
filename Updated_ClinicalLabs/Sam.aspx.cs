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
    public partial class Sam : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=updated_clms; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {
            string dd1 = DateTime.Now.AddDays(+1).ToShortDateString();
            string dateee = "%" + dd1 + "%";
            con.Open();
            MySqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from pickup where dated LIKE '" + dateee + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd1);
            da.Fill(dt);
           //  GridView1.DataSource = dt;
           // GridView1.DataBind();
            con.Close();
            if (dt.Rows.Count > 6)
            {
                Label1.Text = "";
                Label2.Text = "Pickup booking closed for date "+dd1+ "(MM/DD/YYYY)";
                Button1.Enabled = false;
            }
            else { 
            Label2.Text = dd1;}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dd = DateTime.Now.AddDays(+1).ToShortDateString();
            Label2.Text = dd;
            string value1 = string.Empty;
            string value2 = string.Empty;
            string value3 = string.Empty;
            string value4 = string.Empty;
            string val = string.Empty;
            int amt=0;

            if (CheckBox1.Checked)
            {
                value1 = "Haematology  ";
                amt = amt+50;
            }
            else{
                value1= "";
            }
            if (CheckBox2.Checked)
            {
                value2 = "Serology  ";
                amt = amt+50;
            }
            else{
                value2="";
            }
            if (CheckBox3.Checked)
            {
                value3 = "Bio-Chemistry";
                amt = amt+50;
            }
            else {
                value3 = "";
            }

            value4 = value1+value2+value3;

            if (value4 == "")
            {
                value4 = "Haematology, Serology, Bio-Chemistry";
                amt = 150;
            }

           

            Application["fname"] = TextBox1.Text;
            Application["lname"] = TextBox2.Text;
            Application["mail"] = TextBox3.Text;
            Application["phone"] = TextBox4.Text;
            Application["test"] = value4;
            Application["amountpaid"] = amt;
          
            Application["DateOfPickup"] = dd;

            Response.Redirect("pickuppayment.aspx");
        }
    }
}