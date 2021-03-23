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
    public partial class AppointmentPayment : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=updated_clms; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Appointment.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "HARMAN" || TextBox1.Text == "harman" || TextBox1.Text == "Harman")
            {
                Label4.Text = "Payment Successfull";

                string fname = string.Empty;
                string lname = string.Empty;
                string mail = string.Empty;
                string phone = string.Empty;
                string time = string.Empty;
                string amountpaid = string.Empty;
                string appid = string.Empty;
                string date = string.Empty;

                fname = Application["fname"].ToString();
                lname = Application["lname"].ToString();
                mail = Application["mail"].ToString();
                phone = Application["phone"].ToString();
                time = Application["time"].ToString();
                date = Application["date"].ToString();
                amountpaid = Application["amountpaid"].ToString();

                string datee = "%" + date+ "%";
                string timee = "%" +time + "%";
                con.Open();
                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "select * from appointments where date LIKE '" + datee + "' and time LIKE '" + timee + "'";
                cmd1.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd1);
                da.Fill(dt);
                // GridView1.DataSource = dt;
                //GridView1.DataBind();
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Label4.Text = "An Error occured please try again..";
                    Server.Transfer("Appointment.aspx");
                }





               con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT into appointments (fname,lname,mail,phone,time,date) values ('" + fname + "','" + lname + "','" + mail + "','" + phone + "','" + time + "','" + date + "')";
            cmd.ExecuteNonQuery();
            long id = cmd.LastInsertedId;
            con.Close();

            Application["n_fname"] = fname;
            Application["n_lname"] = lname;
            Application["n_mail"] = mail;
            Application["n_phone"] = phone;
            Application["n_time"] = time;
            Application["n_date"] = date + "(MM/DD/YYYY)";
            Application["n_amountpaid"] = "Rs. 100";
            Application["n_appid"] = id;
            Response.Redirect("AppointmentDetails.aspx");
           
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Payment Failed ";

            }
        }
    }
}