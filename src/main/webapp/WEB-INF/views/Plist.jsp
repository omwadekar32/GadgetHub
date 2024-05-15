<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Catalog</title>
    <link rel="stylesheet" th:href="@{/style.css}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <style>
        /* Styling for Product Cards */
        .product-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 10px;
            width: 300px;
            height:320px;
            display: inline-block;
        }
        .product-image {
            width: 100%;
            height: 150%;
        }
        .product-name {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }
        .product-description {
            margin-top: 5px;
        }
        .product-price {
            font-size: 16px;
            font-weight: bold;
            margin-top: 5px;
            color:green;
            
        }
    </style>
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
            </div>
     </nav>
    <div id="product-container">
        <!-- Product details will be dynamically added here -->
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



    <script>
        // Fetch products from the backend
        fetch('/api/pro')
            .then(response => response.json())
            .then(products => {
                const productContainer = document.getElementById('product-container');
                products.forEach(product => {
                    const productCard = document.createElement('div');
                    productCard.classList.add('product-card');

                    const productImage = document.createElement('img');
                    productImage.src = product.image;
                    productImage.alt = product.name;
                    productImage.classList.add('product-image');
                    productCard.appendChild(productImage);

                    const productName = document.createElement('div');
                    productName.textContent = product.name;
                    productName.classList.add('product-name');
                    productCard.appendChild(productName);

                    const productDescription = document.createElement('div');
                    productDescription.textContent = product.description;
                    productDescription.classList.add('product-description');
                    productCard.appendChild(productDescription);

                    const productPrice = document.createElement('div');
                    productPrice.textContent = 'Rs: ' + product.prise;
                    productPrice.classList.add('product-price');
                    productCard.appendChild(productPrice);

                    productContainer.appendChild(productCard);
                });
            })
            .catch(error => console.error('Error fetching products:', error));
    </script>
</body>
</html>
