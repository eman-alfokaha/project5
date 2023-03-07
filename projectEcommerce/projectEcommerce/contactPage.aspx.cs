using project_5;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class contactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            logOut.Visible = false;

            if (Session["customer_id"] != null)
            {
                //mydiv.InnerHtml = "logout";
                logIn.Visible = false;
                logOut.Visible = true;
                reg.Visible = false;
            }

            if (!IsPostBack)
            {
                Label3.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='profile.aspx'\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-user\"></i></a></div>\r\n                        </li>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection connect = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                connect.Open();
                string name = formGroupExampleInput.Value;
                string email = exampleFormControlInput1.Value;
                string message = exampleFormControlTextarea1.Value;

                string query = "insert into contact(Name,Email,messagge)" + " values ('" + name + "','" + email + "','" + message + "')";

                SqlCommand command = new SqlCommand(query, connect);
                command.ExecuteNonQuery();
                connect.Close();

                formGroupExampleInput.Value = "";
                exampleFormControlInput1.Value = "";
                exampleFormControlTextarea1.Value = "";
                Response.Redirect("home.aspx");

            }
            catch (SqlException a) { Response.Write(a.Message); }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("home.aspx");
        }
    }
}