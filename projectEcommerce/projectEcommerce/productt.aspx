<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productt.aspx.cs" Inherits="projectEcommerce.productt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="productPage.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>

    <meta name="viewport" content="width=device-width, scale=1.0" />
    <style>
        .counter {
            width: 150px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            left: 10%;
            bottom: 12.2%;
        }


            .counter input {
                width: 50px;
                border: 0;
                line-height: 30px;
                font-size: 20px;
                text-align: center;
                background: #82B0CA;
                color: #fff;
                appearance: none;
                outline: 0;
            }

            .counter span {
                display: block;
                font-size: 25px;
                padding: 0 10px;
                cursor: pointer;
                color: #82B0CA;
                user-select: none;
            }

        #Button2 {
            border: 2px solid #82B0CA;
            background-color: white;
            color: #82B0CA;
            padding: 6px 24px;
            font-size: 20px;
            cursor: pointer;
            border-radius: 10px;
            height: 46px;
            position: relative;
            left: 75%;
            bottom: 16%;
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
        <div id="con1">
            <div id="con2">
                <asp:Label ID="Label1" runat="server" Text="">

<%--                    <div id="cardd">
                        <img src="Image/kkkk.png" style="width: 45%; height: 80%; border-radius:10px;"  />
                        <div style="width: 40%" >
                        <p style="font-size:30px;">name</p>
                            <br />
                        <p style="font-size:20px;">description  </p>
                        <p style="font-size:18px;">price: 1.99$</p>
                        </div>
                    </div>--%>
<%--                    <img src="Image/kkkk.png" style="width: 50%; height: 80%; margin: 5% 0 5% 0; border-radius: 10px" />
                    <div id="text">
                        <p>name</p>
                        <p>description</p>
                        <br />

                        <p>price: 1.99$</p>
                        <br />

                    </div>--%>

                </asp:Label>
                <div class="counter">
                    <span class="down" onclick='decreaseCount(event, this)'>-</span>
                    <input id="county" type="text" value="1" runat="server" />
                    <span class="up" onclick='increaseCount(event, this)'>+</span>
                </div>
                <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" />



                <div id="text2">Comments on this product</div>
                <div class="addcomment">
                    <img src="Image/prof.png" id="image" style="width: 55px; height: 50px; border-radius: 50%" runat="server" />
                    <input type="text" id="input" placeholder="  Add comment" runat="server" />&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                </div>

                <asp:Label ID="Label2" runat="server" Text="">
                     <%--<img src="Image/strawberry.jpg " style="width: 50px; height: 50px; border-radius: 50%; position: relative; left:7.2%; top:12.5%;"   />--%>
<%--                <div class="addcomment">
                        <img src="Image/strawberry.jpg " style="width: 50px; height: 50px; border-radius: 50%"  /><label id="lbl">hhhhhh jjj jj ijhh ggg ff fff dd</label>


                </div>--%>
               <%-- <br />--%>
                </asp:Label>
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
    <script>
        function increaseCount(a, b) {
            var input = b.previousElementSibling;
            var value = parseInt(input.value, 10);
            value = isNaN(value) ? 0 : value;
            value++;
            input.value = value;
        }

        function decreaseCount(a, b) {
            var input = b.nextElementSibling;
            var value = parseInt(input.value, 10);
            if (value > 1) {
                value = isNaN(value) ? 0 : value;
                value--;
                input.value = value;
            }
        }
    </script>
</body>
</html>
