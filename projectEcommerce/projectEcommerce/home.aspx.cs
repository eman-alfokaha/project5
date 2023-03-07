using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{

    class MyClass
    {
        public static string img = "Image\\";
    };
    public partial class home : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                logOut.Visible = false;

                if (Session["customer_id"] != null)
                {
                    //mydiv.InnerHtml = "logout";
                    logIn.Visible = false;
                    logOut.Visible = true;
                    reg.Visible = false;


                }


                string c_id = Request.QueryString["customer_id"];
                if (c_id == null)
                {
                    c_id = "1008";
                }
                if (!IsPostBack)
                {

                    SqlConnection connect = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                    connect.Open();
                    SqlCommand command = new SqlCommand("Select * from Category", connect);
                    SqlDataReader rd = command.ExecuteReader();

                    while (rd.Read())
                    {
                        if (rd[0].ToString() != "4")
                        {
                            Label1.Text += $"            <div class=\"card\" style=\"width: 18rem; cursor: pointer;\" onclick=\"location.href='sameCategory.aspx?categoryId='+{rd[0]}+'&customer_id='+{c_id}\">\r\n     <div  class=\"overlay\">\r\n                    <div class=\"tt\">{rd[3]}</div>\r\n                </div>           <img src='{MyClass.img + rd[2]}' class=\"card-img-top\" alt=\"...\" />\r\n                <div class=\"card-body\">\r\n                    <p class=\"card-text\">{rd[1]}</p>\r\n                </div>\r\n            </div>";
                        }
                    }
                    connect.Close();

                    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                    conn.Open();
                    SqlCommand command2 = new SqlCommand("Select * from Product where Category_ID=4", conn);
                    SqlDataReader rd2 = command2.ExecuteReader();
                    while (rd2.Read())
                    {
                        Label2.Text += $"            <div class=\"card\" style=\"width: 18rem; cursor: pointer; \" onclick=\"location.href='productt.aspx?productId='+{rd2[0]}+'&customer_id='+{c_id}\">\r\n                                <img src=\"{MyClass.img + rd2[6]}\" style=\"height:180px; width:170px; margin-left:20%; margin-top:5%;\" class=\"card-img-top\" alt=\"...\" />\r\n                <div class=\"card-body\">\r\n                    <p class=\"card-text\"><span style=\"color: tomato; font-size: 18px\">{rd2[7]}JD</span>   <span style=\"text-decoration: line-through; font-size: 15px\">{rd2[4]}JD</span></p>\r\n        </div>\r\n        </div>";

                    }
                    conn.Close();
                    if (!IsPostBack)
                    {
                        Label3.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='profile.aspx?customer_id='+{c_id}\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-user\"></i></a></div>\r\n                        </li>";
                    }
                    if (!IsPostBack)
                    {
                        Label4.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='cart.aspx?customer_id='+{c_id}\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-sharp fa-solid fa-cart-shopping\"></i></a></div>\r\n                        </li>";
                    }
                }
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