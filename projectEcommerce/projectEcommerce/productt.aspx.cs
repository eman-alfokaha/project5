using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    class MyClass2
    {
        public static string img = "Image\\";
    };
    public partial class productt : System.Web.UI.Page
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

                string id = Request.QueryString["customer_id"];
                string id2 = Request.QueryString["productId"];
                //string id = "2";
                Label4.Text = $"<a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"cart.aspx?customer_id='+{id}\"><i class=\"fa-sharp fa-solid fa-cart-shopping\"></i></a>";


                SqlConnection c = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                c.Open();
                SqlCommand comm = new SqlCommand($"Select * from Product Where product_ID={id2}", c);
                SqlDataReader r = comm.ExecuteReader();

                if (r.Read())
                   {
                    if (r[2].ToString() == "4") { Label1.Text = $"                    <div id=\"cardd\">\r\n                        <img src='{MyClass2.img + r[6]}' style=\"width: 45%; height: 80%; border-radius:10px;\"  />\r\n                        <div style=\"width: 40%\" >\r\n                        <p style=\"font-size:30px;\">{r[1]}</p>\r\n                            <br />\r\n                        <p style=\"font-size:20px;\">{r[3]}</p>\r\n                        <p style=\"font-size:20px;\">{r[7]} JD</p>\r\n                        </div>\r\n                    </div>"; }
                    else {
                        Label1.Text = $"                    <div id=\"cardd\">\r\n                        <img src='{MyClass2.img + r[6]}' style=\"width: 45%; height: 80%; border-radius:10px;\"  />\r\n                        <div style=\"width: 40%\" >\r\n                        <p style=\"font-size:30px;\">{r[1]}</p>\r\n                            <br />\r\n                        <p style=\"font-size:20px;\">{r[3]}</p>\r\n                        <p style=\"font-size:20px;\">{r[4]} JD</p>\r\n                        </div>\r\n                    </div>";
                    }
                }
                c.Close();

                //SqlConnection connectt = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");
                //connectt.Open();
                //SqlCommand command = new SqlCommand($"Select * from Customer Where customer_ID={id}", connectt);
                //SqlDataReader rd = command.ExecuteReader();
                //if (rd.Read())
                //{
                //    image.Src = $"{MyClass2.img + rd[1]}";
                //}

                //connectt.Close();
                if (!IsPostBack)
                {
                    SqlConnection connect2 = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                    connect2.Open();
                    SqlCommand command2 = new SqlCommand($"select * from comment  where product_ID={id2}", connect2);
                    SqlDataReader rd2 = command2.ExecuteReader();

                    while (rd2.Read())
                    {

                        Label2.Text += $"                 <div class=\"addcomment\">\r\n                        <label id=\"lbl\">{rd2[2]}</label>\r\n\r\n                </div>";

                    }
                    connect2.Close();

                }
                //SqlConnection connect3 = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5; integrated security=SSPI");
                //connect3.Open();
                //SqlCommand command5 = new SqlCommand($"select * from Customer Where customer_ID={id}", connect3);
                //SqlDataReader rd5 = command5.ExecuteReader();
                //while (rd5.Read())
                //{
                //    Label2.Text += "<img src=\"Image/p.png \" style=\"width: 50px; height: 50px; border-radius: 50%; position: relative; left:7.2%; top:10%;\"   />";
                //}

                if (!IsPostBack)
                {
                    Label3.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='profile.aspx?customer_id='+{id}\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-user\"></i></a></div>\r\n                        </li>";
                }
                if (!IsPostBack)
                {
                    Label4.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='cart.aspx?customer_id='+{id}\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-sharp fa-solid fa-cart-shopping\"></i></a></div>\r\n                        </li>";
                }

            }

            catch (SqlException a) { Response.Write(a.Message); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string customerId = Request.QueryString["customer_id"];
                string productId = Request.QueryString["productId"];
                //string id = "2";

                SqlConnection connect = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                connect.Open();

                string comment = input.Value;

                string query = "insert into comment (product_ID,comment,customer_ID)" + " values ('" + productId + "','" + comment + "','" + customerId + "')";

                SqlCommand command = new SqlCommand(query, connect);
                command.ExecuteNonQuery();
                connect.Close();

                input.Value = "";

                    SqlConnection connect2 = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                    connect2.Open();
                    SqlCommand command2 = new SqlCommand($"select * from comment where product_ID={productId} ", connect2);
                    SqlDataReader rd2 = command2.ExecuteReader();
                    while (rd2.Read())
                    {


                        Label2.Text += $"                 <div class=\"addcomment\">\r\n                        <label id=\"lbl\">{rd2[2]}</label>\r\n\r\n                </div>";

                    }

                    connect2.Close();
                
                
            }
            catch (SqlException a) { Response.Write(a.Message); }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                string idc = Request.QueryString["customer_Id"];
                string idp = Request.QueryString["productId"];
                string idca = Request.QueryString["categoryId"];
                string count = county.Value;

                int x = Convert.ToInt32(idc);
                int y = Convert.ToInt32(idp);
                int z = Convert.ToInt32(idca);
                int coun = Convert.ToInt32(count);

                SqlConnection connect = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                connect.Open();


                string query = "insert into test(product_ID,Category_ID,customer_ID,quan)" + " values ('" + y + "','" + z + "','" + x + "', '" + coun + "')";

                SqlCommand command = new SqlCommand(query, connect);
                command.ExecuteNonQuery();
                connect.Close();

                Response.Redirect($"cart.aspx?productId={y}&customer_Id={x}&categoryId={z}");
            }
            catch (SqlException a) { Response.Write(a.Message); }
        }


        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("home.aspx");
        }
    }

    //    SqlConnection connect2 = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = test ; integrated security=SSPI");
    //    connect2.Open();
    //            SqlCommand command2 = new SqlCommand("SELECT  Customerz.image_url ,Customerz.Name,comments.comment\r\nFROM Customerz\r\n JOIN comments ON Customerz.customer_ID  = comments.customer_ID", connect2);
    //    SqlDataReader rd2 = command2.ExecuteReader();
    //            while (rd2.Read())
    //            {

    //                Label2.Text += $"                <div class=\"addcomment\">\r\n                        <img src=\"{rd2[0]}\"  style=\"width: 50px; height: 50px; border-radius: 50%\"  />&nbsp;&nbsp;<label id=\"lbll\">{rd2[1]}</label><br />\r\n                        <label id=\"lbl\">{rd2[2]}</label>\r\n                </div>";

    //            }

    //connect2.Close();

}