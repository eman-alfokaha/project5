using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class deletProduct : System.Web.UI.Page
    {
            
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try {
                    string id = Request.QueryString["productId"];
                    SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                    SqlCommand command = new SqlCommand($"select * from Product WHERE product_ID = '{id}'", connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Label1.Text = reader[1].ToString();
                        Label7.Text = reader[2].ToString();
                        Label3.Text = reader[3].ToString();
                        Label5.Text = reader[4].ToString();
                        Label6.Text = reader[5].ToString();
                        Image2.ImageUrl = $"Image/{reader[6]}";
                    }
                    connection.Close();
                }
                catch (SqlException x) { Response.Write(x.Message); }
                
            }
        }

        protected void singlebutton_Click(object sender, EventArgs e)
        {
            string id2 = Request.QueryString["productId"];
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;"))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE product_ID = @id", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@id", id2);
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    Response.Redirect("Product-page.aspx");


                }
                catch (SqlException aa)
                {
                    //  Response.Write(   aa.Number.ToString());
                    switch (aa.Number)
                    {
                        case 547:
                            Response.Write("you cant delete product that has been byed");
                            break;
                        //default:
                        //    Response.Write("contact admini");
                        //    break;
                    }

                }
            }
           
        }

        protected void product_weight_TextChanged(object sender, EventArgs e)
        {

        }
    }
}