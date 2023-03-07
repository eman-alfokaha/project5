using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class checkout : System.Web.UI.Page
    {
        class MyClass
        {
            public static void MessageBox(System.Web.UI.Page page, string strMsg)
            {

                ScriptManager.RegisterClientScriptBlock(page, page.GetType(), "alertMessage", "alert('" + strMsg + "')", true);

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    SqlConnection connect = new SqlConnection("Data Source =DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security = True;");
                    connect.Open();
                    SqlCommand comm = new SqlCommand("select * from city", connect);
                    SqlDataAdapter adapt = new SqlDataAdapter(comm);
                    DataTable dt = new DataTable();
                    adapt.Fill(dt);
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "Name";
                    //DropDownList1.DataValueField = "city_ID";
                    DropDownList1.DataBind();
                }
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
                    Label3.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='profile.aspx?customer_id='+{id}\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-user\"></i></a></div>\r\n                        </li>";
                }
                if (!IsPostBack)
                {
                    Label4.Text = $"                        <li class=\"nav-item\">\r\n                            <div onclick=\"location.href='cart.aspx?customer_id='+{id}\"><a class=\"navtext\" class=\"nav-link active\" aria-current=\"page\" href=\"#\"><i class=\"fa-sharp fa-solid fa-cart-shopping\"></i></a></div>\r\n                        </li>";
                }
            }
            catch (SqlException a) { Response.Write(a.Message); }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("home.aspx");
        }
        protected void confirmBut_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                string x = Request.QueryString["customer_Id"];

                SqlConnection con = new SqlConnection("Data Source =DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security = True;");
                SqlCommand command = new SqlCommand($"update test set bool=@bool where customer_ID={x}", con);
                con.Open();
                command.Parameters.AddWithValue("@bool", 1);
                command.ExecuteNonQuery();
                con.Close();
                Response.Redirect("home.aspx");
            }
            else
            {
                MyClass.MessageBox(this, "please ,Make a check if you are sure you can pay");
            }
            //Response.Redirect("rating.aspx");
        }
    }
}