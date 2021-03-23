using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace ClinicalLabs
{
    public partial class Services : System.Web.UI.Page
    {
        //MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=MLMS; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                using (MySqlConnection con = new MySqlConnection(@" Data Source=localhost;  port=3306; Initial Catalog=updated_clms; User Id=root; password='' "))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT SNO AS 'S No', TestCategory AS 'Test Category',TestName AS 'Test Name',Specimen,Price AS 'Price (Rs.)' FROM services"))
                    {
                        using (MySqlDataAdapter da = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                GridView1.DataSource = dt;
                                GridView1.DataBind();
                            }
                        }
                    }
                }
            }  
        }
    }
}