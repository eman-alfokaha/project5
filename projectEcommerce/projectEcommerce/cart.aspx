<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="projectEcommerce.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <title></title>
    <style>
        body {
            background-color: white;
        }

        .navbar-collapse {
            flex-grow: 0;
        }

        .navtext {
            color: white;
            font-size: 20PX;
            text-decoration: none;
            margin-left: 10px;
            margin-right: 15px;
        }

        .px-lg-5 {
            padding-right: 10.5rem !important;
        }

        .text-reset {
            text-decoration: none;
        }

        .text-muted {
            color: white !important;
        }

        .fas {
            color: white !important;
        }

        .fab {
            color: white;
        }

        #Label2 {
            margin-left: 37%;
            font-size: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg" style="background-color: #82B0CA;">
            <div class="container-fluid">
                <a class="navtext navbar-brand" href="home.aspx" style="font-family: 'Ink Free'; font-size: 28px">Shine</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                    <ul id="navUl" class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="aboutus.aspx">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="contactPage.aspx">Contact Us</a>
                        </li>

                        <li class="nav-item">
                            <a runat="server" id="logIn" href="signin.aspx" style="font-size: 20px; position: fixed; color: white; text-decoration: none;">Log in</a>
                            <a runat="server" id="logOut" onserverclick="logout_Click" style="font-size: 20px; color: white; text-decoration: none;">Log out</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a runat="server" id="reg" href="register.aspx" style="font-size: 20px; color: white; text-decoration: none;">Register</a>
                        </li>
                        &nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="cart.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

                    </ul>

                </div>
            </div>
        </nav>
        <div>

            <asp:Label Visible="false" ID="Label2" runat="server" Text=""></asp:Label>
            <div class=" rounded-top mt-5" id="zero-pad">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <%-- <div class="row  ">
                    <div class=" flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile">
                        <div class="">
                            <div class=" pt-1 text-uppercase">
                                <h4 style="text-align: center;"><b>Shine</b></h4>
                                <br />
                                <br />
                            </div>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class=" flex-column pt-4">
                            <div>
                                <h5 class="text-uppercase font-weight-normal">shopping bag</h5>
                            </div>


                        </div>


                        <%--                        <div class="d-flex flex-row px-lg-5 mx-lg-5 mobile" id="heading">
                            <div style="margin-left: 100px;" class="px-lg-5 mr-lg-5" id="produc">PRODUCTS</div>
                            <div style="margin-left: 90px;" class="px-lg-5 ml-lg-5" id="prc">PRICE</div>
                            <div style="margin-left: 30px;" class="px-lg-5 ml-lg-1" id="quantity">QUANTITY</div>
                            <div style="margin-left: 20px;" class="px-lg-5 ml-lg-3" id="total">TOTAL</div>
                        </div>
                        <div class="d-flex flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile">
                            <div class="d-flex flex-row align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60" width="150" height="150" alt="" id="image">
                                </div>
                                <div class="d-flex flex-column pl-md-3 pl-1" style="margin-left: 100px;">
                                    <div>
                                        <h6>COTTON T-SHIRT</h6>
                                    </div>
                                    <div>Art.No:<span class="pl-2">091091001</span></div>
                                    <div>Color:<span class="pl-3">White</span></div>
                                    <div>Size:<span class="pl-4"> M</span></div>
                                </div>
                            </div>
                            <div class="pl-md-0 pl-1"><b>$9.99</b></div>
                                <div class="pl-md-0 pl-2">
                                    <span class="fa fa-minus-square text-secondary"></span><span class="px-md-3 px-1">2</span><span class="fa fa-plus-square text-secondary"></span>
                                </div>
                                <div class="pl-md-0 pl-1"><b>$19.98</b></div>
                                <div class="close">&times;</div>--%>
            </div>
            <div class=" container" style="margin-left:210px">
                <asp:TextBox ID="TextBox1" runat="server" style="width:78%;height:37px;border:solid 2px #82B0CA;border-radius:5px;margin-top:1px;" placeholder="Discount Code" ></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Applay" class="btn btn-sm  border border-dark" style="background-color: #82B0CA;height:37px;" OnClick="Button3_Click" />
            </div>


            <div class="container bg-light rounded-bottom py-4" id="zero-pad1">
                 <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <asp:Button ID="Button2" runat="server" Text="GO BACK " class="btn btn-sm  border border-dark" style="background-color: #82B0CA;" OnClick="Button2_Click" />
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                                <%--<button onclick="location.href='productt.aspx'" class="btn btn-sm bg-light border border-dark">GO BACK</button>--%>
                             
                                
                            </div>
                            <div><asp:Label ID="Label4" style="margin-left: -170px;font-weight: bold;" runat="server" Text=""></asp:Label></div>
                            <div><asp:Label ID="Label5" style="margin-left: -78px;font-weight: bold;" runat="server" Text=""></asp:Label></div>
                            <%--                        <div class="px-md-0 px-1" id="footer-font">
                            <b class="pl-md-4">SUBTOTAL<span class="pl-md-4">$61.78</span></b>
                        </div>--%>
                            <div>
                                <asp:Button ID="Button1" runat="server" Text="CONTINUE " class="btn btn-sm  border border-dark" style="background-color: #82B0CA;" OnClick="Button1_Click" />
                                
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <!-- Footer -->
        <footer class="text-center text-lg-start  text-muted" style="background-color: #82B0CA;">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Get connected with us on social networks:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="https://www.facebook.com/" class="me-4 link-secondary">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://twitter.com/?lang=en" class="me-4 link-secondary">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://www.google.com/" class="me-4 link-secondary">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="https://www.instagram.com/" class="me-4 link-secondary">
                        <i class="fab fa-instagram"></i>
                    </a>


                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3 text-secondary" style="color: white;"></i>Shine
                            </h6>
                            <p>
                                Your first destination to buy cleaning supplies. Best quality with suitable prices.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Categories
                            </h6>
                            <p>
                                <a href="home.aspx" class="text-reset">Luadry cleaner</a>
                            </p>
                            <p>
                                <a href="home.aspx" class="text-reset">Dish soup</a>
                            </p>
                            <p>
                                <a href="home.aspx" class="text-reset">All-purpose cleaner</a>
                            </p>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Useful links
                            </h6>
                            <p>
                                <a href="home.aspx" class="text-reset">Home</a>
                            </p>
                            <p>
                                <a href="contactPage.aspx" class="text-reset">Message</a>
                            </p>
                            <p>
                                <a href="cart.aspx" class="text-reset">Cart</a>
                            </p>
                            <p>
                                <a href="contactPage.aspx" class="text-reset">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                            <p><i class="fas fa-home me-3 text-secondary"></i>Amman Jordan</p>
                            <p>
                                <i class="fas fa-envelope me-3 text-secondary"></i>
                                Shine@gmail.com
                            </p>
                            <p><i class="fas fa-phone me-3 text-secondary"></i>+962 776610148</p>
                            <p><i class="fas fa-print me-3 text-secondary"></i>+962 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.025);">
                © 2021 Copyright:
    <a class="text-reset fw-bold" href="home.aspx">Shine.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </form>

</body>
</html>

