<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sameCategory.aspx.cs" Inherits="project_5.sameCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="sameCategor.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <title></title>
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
                        <%--<li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="cart.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>--%><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                    </ul>

                </div>
            </div>
        </nav>
        <div class="container" id="container" runat="server">
            <%--container.InnerHtml +=--%>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>


        <br />
        <br />
        <br />
        <br />

        <!-- <asp:Button runat="server" Text="Button"></asp:Button>-->

        <%--    <div class="main">
        <div class="select">
            <select name="format" id="format">
                <option selected disabled>Select Category</option>
                <option value="floor cleaner">floor cleaner</option>
                <option value="Shampoo">Shampoo</option>
                <option value="soap">soap</option>
                <option value="fb2">fb2</option>
                <option value="mobi">mobi</option>
            </select>
        </div>
    </div>--%>


        <%--  <div class="container">
        <div class="box">
            <div class="product-img">
                <img src="\pic\R.jpg" width="250" alt="" />
            </div>
            <div class="product-info">
                <h1>Shampoo</h1>
                <p class="price">$4.99</p>
                <p class="description">Powerful tablet at an incredible price.</p>
                Color:
                <select class="color">
                    <option>Black</option>
                    <option>Blue</option>
                    <option>Tangerine</option>
                    <option>Magenta</option>
                </select> Quantity:
                <select class="qty">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <br /><br />
                <button>ADD TO CART</button>
            </div>
        </div>

        <div class="box">
            <div class="product-img">
                <img src="\pic\R.jpg" width="250" alt="" />
            </div>
            <div class="product-info">
                <h1>Shampoo</h1>
                <p class="price">$4.99</p>
                <p class="description">Powerful tablet at an incredible price.</p>
                Color:
                <select class="color">
                    <option>Black</option>
                    <option>Blue</option>
                    <option>Tangerine</option>
                    <option>Magenta</option>
                </select> Quantity:
                <select class="qty">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <br /><br />
                <button>ADD TO CART</button>
            </div>
        </div>
    </div>--%>
        <!-- </div>-->

        <%-- <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>

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
