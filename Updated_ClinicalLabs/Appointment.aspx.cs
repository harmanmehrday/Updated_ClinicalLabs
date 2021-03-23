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
    public partial class Appointment : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=updated_clms; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = Label2.Visible = Label17.Visible =false;
            Butt.Disabled = true;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate.ToShortDateString() == "1/1/0001")
            {
                Label1.Visible = true;
                Label1.Text = "Please Select Date";
                Label17.Visible = true;
                Label17.ForeColor = System.Drawing.Color.Red;
                Label17.Text = "Please Select Date";
                Butt.Disabled = true;
            }
            else
            {
                string datee = "%" + Calendar1.SelectedDate.ToShortDateString() + "%";
                string timee = "%" + DropDownList1.SelectedItem.Value + "%";
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
                    Label2.Visible = true;
                    Label2.Text = "TIME SLOT NOT AVAILABLE.";
                    Label17.Visible = true;
                    Label17.ForeColor = System.Drawing.Color.Red;
                    Label17.Text = "TIME SLOT NOT AVAILABLE.";
                }
                else
                {
                    Label17.Visible = true;
                    Label17.ForeColor = System.Drawing.Color.Green;
                    Label17.Text = "Time Slot Available";
                    Label6.Text = TextBox1.Text + " " + TextBox2.Text + " <br/>";
                    Label8.Text = TextBox3.Text + " <br/>";
                    Label10.Text = TextBox4.Text + " <br/>";
                    Label12.Text = Calendar1.SelectedDate.ToShortDateString() + " (MM/DD/YYYY)" + " <br/>";
                    Label14.Text = DropDownList1.SelectedItem.Value + " <br/>";
                    Label16.Text = "Rs. 100";
                    Butt.Disabled = false;
                }
                /* else
                 {
                     con.Open();
                     MySqlCommand cmd = con.CreateCommand();
                     cmd.CommandType = CommandType.Text;
                     cmd.CommandText = "INSERT into appointments (fname,lname,mail,phone,time,date) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "','" + Calendar1.SelectedDate.ToShortDateString() + "')";
                     cmd.ExecuteNonQuery();
                     long id = cmd.LastInsertedId;
                     con.Close();
                 }*/
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date <= DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.White;
                e.Cell.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {  
         
            Application["fname"] = TextBox1.Text;
            Application["lname"] = TextBox2.Text;
            Application["mail"] = TextBox3.Text;
            Application["phone"] = TextBox4.Text;
            Application["time"] = DropDownList1.SelectedItem.Value;
            Application["date"] = Calendar1.SelectedDate.ToShortDateString();
            Application["amountpaid"] = "Rs. 100";
            //Application["appid"] = id;
            Calendar1.SelectedDate = Convert.ToDateTime("1/1/0001");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            Response.Redirect("AppointmentPayment.aspx");
          
        }

    }
}