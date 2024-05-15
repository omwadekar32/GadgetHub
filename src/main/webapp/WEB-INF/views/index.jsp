<!doctype html>
<html lang="en"  xmlns:th="http://www.thymeleaf.org">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>web Application</title>
  <link rel="stylesheet" th:href="@{/style.css}">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style >
	 .product-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 10px;
            width: 300px;
            display: inline-block;
        }
        .product-image {
            width: 100%;
            height: auto;
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
        
        .adjust{
        
        padding: 2rem;
  display: flex;
  flex-wrap: wrap;
  
        
        }

#product-container {
margin-top: 100px;
margin-left: 50px;
}
</style>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container-fluid">
      <a class="navbar-brand" href="#">GadgetHub</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active " aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/add">Add Product</a>
          </li>
          <!-- 
          <li class="nav-item">
            <a class="nav-link" href="#">Cart</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-pink" href="#" role="button" data-bs-toggle="dropdown"
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
  <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="banner.jpg" class="d-block w-100 slide" alt="...">
      </div>
      <div class="carousel-item">
        <img src="tablet.jpg" class="d-block w-100, slide" alt="...">
      </div>
      <div class="carousel-item">
        <img src="monitor.jpg" class="d-block w-100 slide" alt="...">
      </div>
    </div>
  </div>
  <div class="product">
    <div class="card card-main">
      <a href="/first?name=Keyboard">
        <img src="/keyboard.jpg" class="card-img-top card-h" alt="">
      </a>
        <div class="card-body card1">
          <p class="card-text">Keyboard</p>
    </div>
  </div>

  <div class="card card-main">
    <a href="/first?name=Laptop">
      <img src="/laptop.jpg" class="card-img-top card-h" alt="..."> 
    </a>
    <div class="card-body card1">
      <p class="card-text">Laptop.</p>
    </div>
  </div>

  <div class="card card-main">
    <a href="/first?name=Monitor">
    <img src="/monitor.jpg" class="card-img-top card-h" alt="...">
    </a>
    <div class="card-body card1">
      <p class="card-text">Monitor.</p>
    </div>
  </div>

  <div class="card card-main">
    <a href="/first?name=Mouse">
    <img src="/mouse.jpg" class="card-img-top card-h" alt="...">
    </a>
    <div class="card-body card1">
      <p class="card-text">Mouse</p>
    </div>
  </div>
  <div class="card card-main">
    <a href="/first?name=Tablet">
    <img src="/tablet.jpg" class="card-img-top card-h" alt="...">
    </a>
    <div class="card-body card1">
      <p class="card-text">Tablet </p>
    </div>
  </div>
  
  <div class="card card-main">
    <a href="/first?name=Mobile">
    <img src="/mobile.jpg" class="card-img-top card-h" alt="...">
    </a>
    <div class="card-body card1">
      <p class="card-text">Mobile.</p>
    </div>
  </div>

  <div class="card card-main">
    <a href="/first?name=Headphone">
    <img src="/headphone.jpg" class="card-img-top card-h" alt="...">
    </a>
    <div class="card-body card1">
      <p class="card-text">Headphone.</p>
    </div>
  </div>

  <div class="card card-main">
    <a href="/first?name=Smartwatch">
    <img src="/smartwatch.jpg" class="card-img-top card-h" alt="...">
    </a>
    <div class="card-body card1">
      <p class="card-text">Smartwatch.</p>
    </div>
  </div>

  </div>

  <div class="mid">

    <div class="card text-bg-info mb-3 card-margin" style="max-width: 18rem;">
      <div class="card-header">GadgetHuB.</div>
      <div class="card-body">
        <h5 class="card-title"></h5>
        <p class="card-text">Online shopping for Electronics from a great selection of Mobile Accessories, Smartphones & Basic Mobiles at everyday low prices.</p>
      </div>
    </div>

    <div class="card text-bg-info mb-3 card-margin" style="max-width: 18rem;">
      <div class="card-header">GadgetHuB.</div>
      <div class="card-body">
        <h5 class="card-title"></h5>
        <p class="card-text"> Deals In Premium Mobiles & Mobiles Accs. Shop Now. Categories. Mobile Phones.</p>
      </div>
    </div>

    <div class="card text-bg-info mb-3 card-margin" style="max-width: 18rem;">
      <div class="card-header">GadgetHuB.</div>
      <div class="card-body">
        <h5 class="card-title"></h5>
        <p class="card-text"> brings you the joy of discovery with a huge selection of original products from mobiles,  electronics appliances, </p>
      </div>
    </div>

    <div class="card text-bg-info mb-3 card-margin" style="max-width: 18rem;">
      <div class="card-header">GadgetHuB.</div>
      <div class="card-body">
        <h5 class="card-title"></h5>
        <p class="card-text">Find highly customizable electronic Iem to make your lifestyle easier</p>
      </div>
    </div>
  </div>
  <div class="bgimage">

    <div class="card text-bg-dark">
      <img src="ban2.jpg" class="card-img " style="height: 20rem;" alt="...">
      <div class="card-img-overlay">
        <h5 class="card-title">Mobile</h5>
        <p class="card-text">Buy mobile phones at best prices. GadgetHuB. is the right platform for you to look for a mobile phone that fits your budget, technical and design requirements</p>
        <p class="card-text"><small>Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
  
  <div id="adjust">
  <div id="product-container">
        <!-- Product details will be dynamically added here -->
    </div>
  </div>
  
  
  
  
  
  
  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
    <footer>
      <div class="mt-5 pt-5 pb-5 footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 col-xs-12 about-company">
          <h2>GadgetHub</h2>
          <p class="pr-5 text-white-50">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac ante mollis
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
          })
          .catch(error => {
              
              console.error('Fetch error:', error);
          });
  }

  document.addEventListener('DOMContentLoaded', function () {
  fetchData();
  });
  
  
  const maxCards = 12;
  let cardCount = 0;

  // Fetch products from the backend
  fetch('/api/pro')
      .then(response => response.json())
      .then(products => {
          const productContainer = document.getElementById('product-container');
          products.forEach(product => {
              // Check if the maximum card limit has been reached
              if (cardCount < maxCards) {
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

                  // Increment card count
                  cardCount++;
              } else {
                  // Break out of the loop if the maximum card limit is reached
                  return;
              }
          });
      })
      .catch(error => console.error('Error fetching products:', error));
  
</script>
</body>
</html>