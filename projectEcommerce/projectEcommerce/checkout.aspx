<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="projectEcommerce.checkout" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>

    <title>Checkout</title>
    <style>
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

        body {
            background-image: url(Image/ggg.jpg);
            background-size: contain;
        }

        #headerout {
            font-size: 45px;
            color: black;
            text-align: center;
        }

        #divForm {
            background-color: white;
            border: solid black 2px;
            box-shadow: 5px 10px 18px #888888;
            width: 100%;
            height: auto;
            padding: 10%;
        }

        .identBox {
            font-size: 20px;
            margin-left: 15px;
            margin-top: 20px;
            margin-bottom: 5px;
        }

        .boxs {
            Width: 95%;
            height: 40px;
            margin-left: 15px;
            background-color: #fefefe;
            border: solid 1px #888888;
            border-radius: 7px;
        }

        #confirmBut {
            margin-left: 43%;
            width: 100px;
            font-weight: bold;
            color: white;
            background-color: #82B0CA;
            border-radius: 12px;
            border: solid 0px white;
            height: 50px;
        }

        #CheckBox1 {
            margin-left: 17px;
            display: inline-block;
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
                       <%-- <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="cart.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>--%><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                    </ul>

                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col">
                </div>
                <div class="col-8">
                    <br />

                    <div id="divForm">
                        <p id="headerout">CHECK OUT</p>
                        <br />
                        <p class="identBox">Country/Region</p>
                        <asp:DropDownList ID="DropDownList1" Class="boxs" runat="server"></asp:DropDownList>
                        <br />
                        <p class="identBox">Full name (First and Last name)</p>
                        <asp:TextBox ID="TextBox1" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox">Street address</p>
                        <asp:TextBox ID="TextBox2" runat="server" Class="boxs" placeholder=" Street address ,P.O box,Company Name "></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" Class="boxs" placeholder=" Apartment,building,floor,etc" Style="margin-top: 11px;"></asp:TextBox>
                        <br />

                        <p class="identBox">City</p>
                        <asp:TextBox ID="TextBox4" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox">Zip Code</p>
                        <asp:TextBox ID="TextBox5" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox">Phone number</p>
                        <asp:TextBox ID="TextBox6" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox" style="font-size: 10px;">* May be used to assist delivery</p>
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label1" class="identBox" runat="server" Text="I am ready to pay upon receipt ." Style="font-size: 12px;"></asp:Label>

                        <br />
                        <br />
                        <asp:Button ID="confirmBut" runat="server" Text="Confirm" OnClick="confirmBut_Click" />
                        <br />
                        <br />
                    </div>
                    <br />
                </div>
                <div class="col">
                </div>
            </div>


        </div>
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
