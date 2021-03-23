using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicalLabs
{
    public partial class PickupDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fname = string.Empty;
            string lname = string.Empty;
            string mail = string.Empty;
            string phone = string.Empty;
            string test = string.Empty;
            string amountpaid = string.Empty;
            string pid = string.Empty;
            string amt = string.Empty;

           
            fname = Application["fname"].ToString();
            lname = Application["lname"].ToString();
            mail = Application["mail"].ToString();
            phone = Application["phone"].ToString();
            test = Application["test"].ToString();
            amountpaid = Application["amountpaid"].ToString();
            amt = "Rs. " + amountpaid;
            pid = Application["pid"].ToString();

            
            Label9.Text = "Sample Pickup Booking Details";
            Label10.Text = fname;
            Label11.Text = lname;
            Label12.Text = mail;
            Label13.Text = phone;
            Label14.Text = test;
            Label15.Text = amt;
            Label16.Text = pid;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sam.aspx");
        }
    }
}