using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicalLabs
{
    public partial class AppointmentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fname = string.Empty;
            string lname = string.Empty;
            string mail = string.Empty;
            string phone = string.Empty;
            string time = string.Empty;
            string amountpaid = string.Empty;
            string appid = string.Empty;
            string date = string.Empty;

            fname = Application["n_fname"].ToString();
            lname = Application["n_lname"].ToString();
            mail = Application["n_mail"].ToString();
            phone = Application["n_phone"].ToString();
            time = Application["n_time"].ToString();
            date = Application["n_date"].ToString();
            amountpaid = Application["n_amountpaid"].ToString();
            appid = Application["n_appid"].ToString();

            Label9.Text = "Clinical Laboratory";
            Label10.Text = fname; 
            Label11.Text = lname;
            Label12.Text = mail;
            Label13.Text = phone;
            Label14.Text = time;
            Label1.Text = amountpaid;
            Label15.Text = date;
            Label16.Text = appid;
            Label2.Text = "<br/>" + "Date: " + DateTime.Now.ToShortDateString() + "  " + DateTime.Now.ToShortTimeString() + "<br/>";
            Label3.Text = "<br/>" + "Appointment Booking Details" + "<br/>";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Appointment.aspx");
        }
    }
}