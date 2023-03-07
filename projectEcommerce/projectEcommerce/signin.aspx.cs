using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;





namespace project_5
{

    public partial class register : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string c_id = Request.QueryString["customer_id"];
                int a = 0;
                string f = "false";
                SqlConnection connection2 = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                SqlCommand command2 = new SqlCommand("select * from  Customer", connection2);
                connection2.Open();
                SqlDataReader reader2 = command2.ExecuteReader();

                while (reader2.Read())
                {
                    if (exampleFormControlInput1.Value == (string)reader2[3] && exampleInputPassword1.Value == (string)reader2[6])
                    {
                        if (Convert.ToInt32(reader2[7]) == 1)
                        {
                            a = 1;
                            Response.Redirect("Product-page.aspx");
                            a = 1;
                            break;
                        }
                        else
                        {
                            f = "True";
                            break;


                        }

                    }
                    else
                        f = "False";
                }

                if (a == 0)
                {
                    if (f == "True")
                    {
                        try
                        {
                            string str = Convert.ToString(reader2[0]);

                            Session["customer_id"] = Convert.ToString(reader2[0]);
                            string x = Request.QueryString["customer_Id"];

                            SqlConnection con = new SqlConnection("Data Source =DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security = True;");
                            SqlCommand command = new SqlCommand($"update test set customer_Id={reader2[0]}where customer_ID={1008}", con);
                            con.Open();
                            command.ExecuteNonQuery();
                            con.Close();
                            Response.Redirect("home.aspx?customer_id=" + reader2[0]);
                        }
                        catch (SqlException x) { Response.Redirect(x.Message); }

                    }
                    else
                    {
                        Label1.Text = "error";


                    }
                }
                connection2.Close();
            }

            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}