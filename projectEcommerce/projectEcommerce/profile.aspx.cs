﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    //public partial class profile : System.Web.UI.Page
    //{
    //    SqlConnection con = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");

    //    protected void Page_Load(object sender, EventArgs e)
    //    {
    //        logOut.Visible = false;

    //        if (Session["customer_id"] != null)
    //        {
    //            //mydiv.InnerHtml = "logout";
    //            logIn.Visible = false;
    //            logOut.Visible = true;
    //            reg.Visible = false;


    //        }



    //        //Input user
    //        string name = Request.QueryString["customer_id"];



    //        con.Open();
    //        //information
    //        //SqlCommand comm = new SqlCommand($"select Name, Email,PhoneNumber,City from  Customer  where Name='{firstname}'", con);
    //        SqlCommand comm = new SqlCommand($"select Name, Email,PhoneNumber,City,Image,customer_ID  from  Customer  where customer_ID='{name}'", con);
    //        SqlDataReader rd = comm.ExecuteReader();
    //        while (rd.Read())
    //        {


    //            if ($"{rd[5]}" == $"{name}")
    //            {


    //                Label1.Text = $"{rd[0]}";

    //                Label3.Text = $"{rd[0]}";
    //                Label4.Text = $"{rd[1]}";
    //                Label5.Text = $"{rd[2]}";
    //                Label6.Text = $"{rd[3]}";
    //                Image1.ImageUrl = $"Image/{rd[4]}";
    //                //Textname.Text = rd[0].ToString();
    //                //Textemail.Text = rd[1].ToString();
    //                //Textphone.Text = rd[2].ToString();
    //                //Textcity.Text = rd[3].ToString();
    //            }
    //            //Display image
    //            //Image1.Visible = true;
    //            //Image1.ImageUrl= rd[5];




    //        }
    //        con.Close();



    //        //orders
    //        con.Open();
    //        SqlCommand commo = new SqlCommand($"select Product.Name, test.quan  ,Product.price ,Product.ImageProduct from  test inner join Product ON test.product_ID=Product.product_ID where   test.customer_ID={name} and test.bool={1};", con);
    //        SqlDataReader rdo = commo.ExecuteReader();
    //        string table = "<table class='table table-striped'style='font-size:18px;width:100%; '> <tr><th>Product Name</th> <th> Orders count </th> <th>Product price</th><th>Image Product</th></tr>";
    //        while (rdo.Read())
    //        {
    //            table += $"<tr><td>{rdo[0]}</td><td>{rdo[1]}</td><td>{rdo[2]}</td><td>{rdo[3]}</td></tr>";
    //        }
    //        table += "</table>";
    //        order.Text = table;
    //        con.Close();

    //        ////offers
    //        //con.Open();
    //        //SqlCommand commf = new SqlCommand($"select Name, price,newPrice from Product where newPrice > 0 ", con);
    //        //SqlDataReader rdf = commf.ExecuteReader();
    //        //string to = "<table class='table table-striped'><tr><th>product Name</th> <th>Price</th><th>New Price</th></tr>";
    //        //while (rdf.Read())
    //        //{
    //        //    //offers.Text += $"{rdf[0]}   <del>{ rdf[1]}$</del>   {rdf[1]}$ <br>";
    //        //    to += $"<tr><td>{rdf[0]}</td><td> <del>{rdf[1]}$ </del></td><td style=\"color:Red;\"><b>{rdf[2]}$</b></td></tr>";
    //        //}
    //        //to += "</table>";
    //        //offers.Text = to;
    //        //con.Close();


    //        //basket

    //        con.Open();
    //        SqlCommand commb = new SqlCommand($"select Product.Name, Orders.count  ,Product.price from  Orders inner join Product ON Orders.product_ID=Product.product_ID where  Orders.customer_ID='{name}'", con);
    //        SqlDataReader rdb = commb.ExecuteReader();
    //        string tb = "<table class='table table-striped'><tr><th>product Name</th> <th>Orders count </th><th>price</th></tr>";

    //        while (rdb.Read())
    //        {
    //            //bask.Text += $"{rdb[0]}'   ' {rdb[1]} <br>";
    //            tb += $"<tr><td>{rdb[0]}</td><td> {rdb[1]}</td><td>{rdb[2]}</td></tr>";

    //        }
    //        tb += "</table>";
    //        bask.Text = tb;
    //        con.Close();
    //    }



    //    protected void save_Click(object sender, EventArgs e)
    //    {
    //        //SqlConnection conup = new SqlConnection("Data Source=DESKTOP-J6CEG9M\\SQLEXPRESS;Database=project5;Integrated Security=True;");
    //        //SqlCommand comup = new SqlCommand($"update Customer set Name=@name ,Email = @Email , PhoneNumber = @PhoneNumber , City = @City  WHERE customer_ID=1 ", conup);

    //        //conup.Open();
    //        //comup.Parameters.AddWithValue("@name", Textname.Text);
    //        //comup.Parameters.AddWithValue("@Email", Textemail.Text);
    //        //comup.Parameters.AddWithValue("@PhoneNumber", Textphone.Text);
    //        //comup.Parameters.AddWithValue("@City", Textcity.Text);
    //        //comup.ExecuteNonQuery();
    //        //conup.Close();

    //        SqlConnection conup = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
    //        string newname = Textname.Text;
    //        string newpass = Textpass.Text;
    //        string newemail = Textemail.Text;
    //        string newphone = Textphone.Text;
    //        string newcity = Textcity.Text;
    //        //string firstname = Request.QueryString["firstname"];
    //        string name = Request.QueryString["customer_id"];
    //        conup.Open();
    //        if (newname.Length != 0)
    //        {
    //            string ror = $"UPDATE Customer SET Name='{newname}'  where customer_ID='{name}' ";
    //            SqlCommand comm = new SqlCommand(ror, conup);
    //            comm.ExecuteNonQuery();
    //            conup.Close();
    //            Response.Redirect("profile.aspx?customer_id=" + name);

    //        }
    //    }


    //    protected void Button1_Click1(object sender, EventArgs e)
    //    {
    //        //string firstname = Request.QueryString["firstname"];
    //        string name = Request.QueryString["customer_id"];
    //        //create file
    //        string folderpath = Server.MapPath("~/Image/");
    //        string imagename = FileUpload1.FileName.ToString();


    //        if (!Directory.Exists(folderpath))
    //        {
    //            Directory.CreateDirectory(folderpath);
    //        }

    //        FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
    //        con.Open();
    //        //SqlCommand sqlCommand = new SqlCommand($"insert into Customer (Image) values ('{imagename}')", con);
    //        SqlCommand sqlCommand = new SqlCommand($"update Customer set Image='{imagename}' where customer_ID='{name}'", con);
    //        sqlCommand.ExecuteNonQuery();
    //        con.Close();
    //        Response.Redirect("profile.aspx?customer_id=" + name);
    //    }


    //    protected void logout_Click(object sender, EventArgs e)
    //    {
    //        Session.Clear();
    //        Response.Redirect("home.aspx");
    //    }
    //}
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");

        
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
            //Input user
            string name = Request.QueryString["customer_id"];

            con.Open();
            //information
            //SqlCommand comm = new SqlCommand($"select Name, Email,PhoneNumber,City from  Customer  where Name='{firstname}'", con);
            SqlCommand comm = new SqlCommand($"select Name, Email,PhoneNumber,City,Image,customer_ID  from  Customer  where customer_ID='{name}'", con);
            SqlDataReader rd = comm.ExecuteReader();
            while (rd.Read())
            {


                if ($"{rd[5]}" == $"{name}")
                {


                    Label1.Text = $"{rd[0]}";

                    Label3.Text = $"{rd[0]}";
                    Label4.Text = $"{rd[1]}";
                    Label5.Text = $"{rd[2]}";
                    Label6.Text = $"{rd[3]}";
                    Image1.ImageUrl = $"Image/{rd[4]}";
                    //Textname.Text = rd[0].ToString();
                    //Textemail.Text = rd[1].ToString();
                    //Textphone.Text = rd[2].ToString();
                    //Textcity.Text = rd[3].ToString();
                }
                //Display image
                //Image1.Visible = true;
                //Image1.ImageUrl= rd[5];




            }
            con.Close();



            //orders
            con.Open();
            SqlCommand commo = new SqlCommand($"select Product.Name, test.quan  ,Product.price ,Product.ImageProduct from  test inner join Product ON test.product_ID=Product.product_ID where   test.customer_ID='{name}' and test.bool=1", con);
            SqlDataReader rdo = commo.ExecuteReader();
            string table = "<table class='table table-striped'style='font-size:18px;width:100%; '> <tr><th>Product Name</th> <th> Orders count </th> <th>Product price</th><th>Image Product</th></tr>";
            while (rdo.Read())
            {
                table += $"<tr><td>{rdo[0]}</td><td>{rdo[1]}</td><td>{rdo[2]}</td><td>{rdo[3]}</td></tr>";
            }
            table += "</table>";
            order.Text = table;
            con.Close();

            ////offers
            //con.Open();
            //SqlCommand commf = new SqlCommand($"select Name, price,newPrice from Product where newPrice > 0 ", con);
            //SqlDataReader rdf = commf.ExecuteReader();
            //string to = "<table class='table table-striped'><tr><th>product Name</th> <th>Price</th><th>New Price</th></tr>";
            //while (rdf.Read())
            //{
            //    //offers.Text += $"{rdf[0]}   <del>{ rdf[1]}$</del>   {rdf[1]}$ <br>";
            //    to += $"<tr><td>{rdf[0]}</td><td> <del>{rdf[1]}$ </del></td><td style=\"color:Red;\"><b>{rdf[2]}$</b></td></tr>";
            //}
            //to += "</table>";
            //offers.Text = to;
            //con.Close();


            //basket

            con.Open();
            SqlCommand commb = new SqlCommand($"select Product.Name, test.quan,Product.price from  test inner join Product ON test.product_ID=Product.product_ID where  test.customer_ID='{name}'", con);
            SqlDataReader rdb = commb.ExecuteReader();
            string tb = "<table class='table table-striped'><tr><th>product Name</th> <th>Orders count </th><th>price</th></tr>";

            while (rdb.Read())
            {
                //bask.Text += $"{rdb[0]}'   ' {rdb[1]} <br>";
                tb += $"<tr><td>{rdb[0]}</td><td> {rdb[1]}</td><td>{rdb[2]}</td></tr>";

            }
            tb += "</table>";
            bask.Text = tb;
            con.Close();
        }



        protected void save_Click(object sender, EventArgs e)
        {
            //SqlConnection conup = new SqlConnection("Data Source=DESKTOP-J6CEG9M\\SQLEXPRESS;Database=project5;Integrated Security=True;");
            //SqlCommand comup = new SqlCommand($"update Customer set Name=@name ,Email = @Email , PhoneNumber = @PhoneNumber , City = @City  WHERE customer_ID=1 ", conup);

            //conup.Open();
            //comup.Parameters.AddWithValue("@name", Textname.Text);
            //comup.Parameters.AddWithValue("@Email", Textemail.Text);
            //comup.Parameters.AddWithValue("@PhoneNumber", Textphone.Text);
            //comup.Parameters.AddWithValue("@City", Textcity.Text);
            //comup.ExecuteNonQuery();
            //conup.Close();

            SqlConnection conup = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project-5;Integrated Security=True;");
            string newname = Textname.Text;
            string newpass = Textpass.Text;
            string newemail = Textemail.Text;
            string newphone = Textphone.Text;
            string newcity = Textcity.Text;
            //string firstname = Request.QueryString["firstname"];
            string name = Request.QueryString["customer_id"];
            conup.Open();
            if (newname.Length != 0)
            {
                string ror = $"UPDATE Customer SET Name='{newname}'  where customer_ID='{name}' ";
                SqlCommand comm = new SqlCommand(ror, conup);
                comm.ExecuteNonQuery();
                //conup.Close();
                //Response.Redirect("profile.aspx?customerId=" + name);

            }
            if (newpass.Length != 0)
            {
                string ror1 = $"UPDATE Customer SET Password='{newpass}'  where customer_ID='{name}' ";
                SqlCommand comm1 = new SqlCommand(ror1, conup);
                comm1.ExecuteNonQuery();
                //conup.Close();
                //Response.Redirect("profile.aspx?customerId=" + name);

            }
            if (newemail.Length != 0)
            {
                string ror2 = $"UPDATE Customer SET Email='{newemail}'  where customer_ID='{name}' ";
                SqlCommand comm2 = new SqlCommand(ror2, conup);
                comm2.ExecuteNonQuery();
                //conup.Close();
                //Response.Redirect("profile.aspx?customerId=" + name);

            }
            if (newphone.Length != 0)
            {
                string ror3 = $"UPDATE Customer SET PhoneNumber='{newphone}'  where customer_ID='{name}' ";
                SqlCommand comm3 = new SqlCommand(ror3, conup);
                comm3.ExecuteNonQuery();
                //conup.Close();
                //Response.Redirect("profile.aspx?customerId=" + name);

            }
            if (newcity.Length != 0)
            {
                string ror4 = $"UPDATE Customer SET City='{newcity}'  where customer_ID='{name}' ";
                SqlCommand comm4 = new SqlCommand(ror4, conup);
                comm4.ExecuteNonQuery();
                //conup.Close();
                //Response.Redirect("profile.aspx?customerId=" + name);

            }
            conup.Close();
            Response.Redirect("profile.aspx?customer_id=" + name);

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("home.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //string firstname = Request.QueryString["firstname"];
            string name = Request.QueryString["customer_id"];
            //create file
            string folderpath = Server.MapPath("~/Image/");
            string imagename = FileUpload1.FileName.ToString();


            if (!Directory.Exists(folderpath))
            {
                Directory.CreateDirectory(folderpath);
            }

            FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
            con.Open();
            //SqlCommand sqlCommand = new SqlCommand($"insert into Customer (Image) values ('{imagename}')", con);
            SqlCommand sqlCommand = new SqlCommand($"update Customer set Image='{imagename}' where customer_ID='{name}'", con);
            sqlCommand.ExecuteNonQuery();
            con.Close();
            Response.Redirect("profile.aspx?customer_id=" + name);
        }

    }
    
}
