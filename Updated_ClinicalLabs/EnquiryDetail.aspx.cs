using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicalLabs
{
    public partial class EnquiryDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fname = string.Empty;
            string lname = string.Empty;
            string mail = string.Empty;
            string message = string.Empty;


            Label9.Text = "Message Successfully Sent.";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Enquire.aspx");
        }
    }
}