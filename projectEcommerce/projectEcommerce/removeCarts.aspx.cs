using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class removeCarts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id2 = Request.QueryString["Pid"];
            

            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM test WHERE product_ID=@id;", con))
                    {

                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@id", id2);
                        //cmd.Parameters.AddWithValue("@cc", idd);
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    string idd = Request.QueryString["customer_id"];
                    Response.Redirect($"cart.aspx?customer_id={idd}");

                }
                catch (SqlException aa)
                {
                    Response.Write(aa.ToString());
                }
            }
        }
    }
}