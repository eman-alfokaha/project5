using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class cart : System.Web.UI.Page
    {
        class MyClass2
        {
            public static string img = "Image\\";
            public static double TB = 0.0;
            public static double item = 0.0;
            public static double discount = 0.0;

        };
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
                string id = Request.QueryString["customer_id"];
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


                    MyClass2.TB = 0.0;
                    MyClass2.item = 0.0;
                    MyClass2.discount = 0.0;
                    //string cun = Request.QueryString["count"];
                    string idd = Request.QueryString["customer_Id"];
                    string idp = Request.QueryString["productId"];
                    SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
                    SqlCommand command = new SqlCommand($"select Product.Name,Product.ImageProduct,Product.price,test.quan,Product.product_ID from Product inner join test on Product.product_ID=test.product_ID where test.customer_ID=@ID and test.bool=0", connection);
                    command.Parameters.AddWithValue("@ID", idd);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    string table = "<div class=\" d-flex flex-row px-lg-5 mx-lg-5 mobile\" id=\"heading\">\r\n                            <div style=\"margin-left: 100px; font-weight: bold;font-size:25px\" class=\" px-lg-5 mr-lg-5\" id=\"produc\">PRODUCTS</div>\r\n                            <div style=\"margin-left: 40px; font-weight: bold;font-size:25px\"  class=\"px-lg-5 ml-lg-5\" id=\"prc\">PRICE</div>\r\n                            <div style=\"margin-left: -25px;  font-weight: bold;font-size:25px\"  class=\"px-lg-5 ml-lg-1\" id=\"quantity\">QUANTITY</div>\r\n                            <div style=\"margin-left: -30px; font-weight: bold;font-size:25px\"  class=\"px-lg-5 ml-lg-3\" id=\"total\">TOTAL</div>\r\n                    </div>";
                    while (reader.Read())
                    {
                        double price = Convert.ToDouble(reader[2]);
                        double quantity = Convert.ToDouble(reader[3]);
                        double total = price * quantity;
                        table += $" <div style=\"background-color:white;\" class=\"row  \"> <div class=\"d-flex flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile\">\r\n                            <div class=\"d-flex flex-row align-items-center\">\r\n                                <div>\r\n                                    <img src=\"{MyClass2.img + reader[1]}\" width=\"150\" height=\"150\" alt=\"\" id=\"image\">\r\n                                </div>\r\n                                <div class=\"d-flex flex-column pl-md-3 pl-1\" style=\"margin-left: 100px;\">\r\n                                    <div>\r\n                                        <h6>{reader[0]}</h6>\r\n             </div>\r\n                                                   <div>Art.No:<span class=\"pl-2\">091091001</span></div>\r\n                                               </div>\r\n    </div>\r\n                        <div class=\"pl-md-0 pl-1\" style\"\"><b>{reader[2]}</b></div>\r\n                                <div class=\"pl-md-0 pl-2\">\r\n                                    <span class=\"px-md-3 px-1\"><b>{quantity}</b></span>                            </div>\r\n                                           <div class=\"pl-md-0 pl-1\"><b>{total}</b></div>                    <div style=\"color:black ;cursor:pointer\" onclick=\"location.href='removeCarts.aspx?Pid={reader[4]}&customer_id={id}'\"  class=\"close\"><i class=\"fa-solid fa-xmark\"></i></div>\r\n                                </div>\r\n\r\n                        </div>\r\n";
                        MyClass2.TB += total;
                        MyClass2.item += quantity;
                    }

                    Label1.Visible = true;
                    Label1.Text = table;
                    Label4.Text = "Total Price " + MyClass2.TB.ToString() + "$";
                    Label5.Text = "Items (" + MyClass2.item.ToString() + ")";

                    reader.Close();
                    connection.Close();
                }
            //}
            //catch (SqlException x)
            //{
            //    Response.Write(x.Message);
            //    //Label2.Visible = true;
            //    //Label2.Text = "Your Cart is Empty";
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["customer_id"];
            if (id == "1008")
            {
                Response.Redirect("signin.aspx");
            }
            else
            {
                string x = Request.QueryString["customer_Id"];

                Response.Redirect("checkout.aspx?customer_Id=" + x);
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("home.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string x = Request.QueryString["customer_Id"];
            string y = Request.QueryString["categoryId"];
            Response.Redirect($"home.aspx?customer_Id={x}");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double x = MyClass2.TB;
            if (TextBox1.Text == "Orange97")
            {
                x = (x * 15) / 100;
                x = MyClass2.TB - x;
                Label4.Text = "Total Price " + x.ToString() + "$";
            }

        }
    }
}