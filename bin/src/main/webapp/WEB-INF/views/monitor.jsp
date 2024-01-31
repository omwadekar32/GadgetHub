<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>monitor</title>
    <link rel="stylesheet" th:href="@{/style.css}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">GadgetHub</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li> -->
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="detail-img des">
        <figure class="figure ">
            <img id="img" src="keyboard.jpg" class="figure-img img-fluid rounded detail-img-pro"
                style="margin: 1rem; height: 25rem; width: 30rem;" alt="...">

        </figure>


        <div class="product-detail">
            <div class="product-info">
                <div class="product-title" id="name">Product Title</div>
                <div class="product-price" id="amt">&#8377;999.99</div>
            </div>

            <div class="specifications">
                <h2>Specifications</h2>
                <div class="specification-item">
                    <span>Brand:</span>
                    <span>Brand Name</span>
                </div>
                <div class="specification-item">
                    <span>Model:</span>
                    <span>Model Number</span>
                </div>
                <div class="specification-item">
                    <span>Color:</span>
                    <span>Product Color</span>
                </div>
                <!-- Add more specification items as needed -->
            </div>
            </br>
            <div class="d-grid gap-2 col-6 mx-auto">


                <button class="btn btn-primary" id="rzp-button1">Pay</button>


                <!-- <button class="btn btn-light" style="border-color: darkgrey;" type="button">Button</button> -->
            </div>
            <!-- Add more sections like product description, reviews, etc., as needed -->
        </div>
        <figcaption class="figure-caption">Online shopping for Electronics from a great selection of Mobile Accessories, Smartphones & Basic Mobiles at everyday low prices.!</figcaption>
    </div>

    <footer>
        <div class="mt-5 pt-5 pb-5 footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-xs-12 about-company">
                        <h2>GadgetHub</h2>
                        <p class="pr-5 text-white-50">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac
                            ante mollis
                            quam tristique convallis </p>
                        <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i
                                    class="fa fa-linkedin-square"></i></a></p>
                    </div>
                    <div class="col-lg-3 col-xs-12 links">
                        <h4 class="mt-lg-0 mt-sm-3">Links</h4>
                        <ul class="m-0 p-0">
                            <li>- <a href="#">Lorem ipsum</a></li>
                            <li>- <a href="#">Nam mauris velit</a></li>
                            <li>- <a href="#">Etiam vitae mauris</a></li>
                            <li>- <a href="#">Fusce scelerisque</a></li>
                            <li>- <a href="#">Sed faucibus</a></li>
                            <li>- <a href="#">Mauris efficitur nulla</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-xs-12 location">
                        <h4 class="mt-lg-0 mt-sm-4">Location</h4>
                        <p>22, Lorem ipsum dolor, consectetur adipiscing</p>
                        <p class="mb-0"><i class="fa fa-phone mr-3"></i>(541) 754-3010</p>
                        <p><i class="fa fa-envelope-o mr-3"></i>info@hsdf.com</p>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col copyright">
                        <p class=""><small class="text-white-50">© 2019. All Rights Reserved.</small></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>

        const urlParams = new URLSearchParams(window.location.search);
        const name = urlParams.get('name');

        console.log('Name from URL:', name);

        var amt;

        function fetchData() {

            const apiUrl = '/api/getProduct';


            fetch(apiUrl)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                .then(data => {

                    console.log('Data received:', data);

                    let i = 0;
                    while (i < data.length) {
                        const currentItem = data[i];

                        if (currentItem.name === name) {
                            console.log(currentItem.name);
                            
                            amt=currentItem.prise;
                            console.log(amt);

                            const image = document.getElementById('img');
                            const newImageUrl = name + ".jpg";
                            image.src = newImageUrl;

                            var newamt = document.getElementById('amt');
                            newamt.innerHTML= '₹'+ currentItem.prise;
                            
                            var newname = document.getElementById('name');
                            newname.innerHTML= currentItem.name;


                            break;
                        }

                        i++;
                    }
                })
                .catch(error => {

                    console.error('Fetch error:', error);
                });
        }

        document.addEventListener('DOMContentLoaded', function () {
            fetchData();
        });


        



        document.getElementById('rzp-button1').addEventListener("click", () => {
            fetch('/api/test',{
                    method: 'POST', // Assuming your endpoint expects a POST request
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        amount: amt*100, // Replace with the actual amount you want to send
                    }),
                })
                .then(res => res.json())
                .then(data => {
                    console.log(data);
                    console.log(data.id);

                    var options = {
                        "key": "rzp_test_z2CyynhkXzIxry", // Enter the Key ID generated from the Dashboard
                        "amount": "50000", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                        "currency": "INR",
                        "name": "Acme Corp",
                        "description": "Test Transaction",
                        "image": "",
                        "order_id": data.id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                        "handler": function (response) {
                            alert(response.razorpay_payment_id);
                            alert(response.razorpay_order_id);
                            alert(response.razorpay_signature)
                        },
                        "prefill": {
                            "name": "",
                            "email": "",
                            "contact": ""
                        },
                        "notes": {
                            "address": "Razorpay Corporate Office"
                        },
                        "theme": {
                            "color": "#3399cc"
                        }
                    };
                    var rzp1 = new Razorpay(options);
                    rzp1.on('payment.failed', function (response) {
                        alert(response.error.code);
                        alert(response.error.description);
                        alert(response.error.source);
                        alert(response.error.step);
                        alert(response.error.reason);
                        alert(response.error.metadata.order_id);
                        alert(response.error.metadata.payment_id);
                    });

                    rzp1.open();



                })

                .catch(err => {
                    console.log("Error:", err);
                });
        });



    </script>
</body>

</html>