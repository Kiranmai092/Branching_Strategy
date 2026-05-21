<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NovaMart UI Refresh</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
*{margin:0;padding:0;box-sizing:border-box}
body{
    font-family:'Poppins',sans-serif;
    background: linear-gradient(135deg,#eef2ff,#f8fafc);
    color:#1e293b;
}

/* Header */
header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:20px 40px;
    background:rgba(255,255,255,0.7);
    backdrop-filter: blur(12px);
    position:sticky;
    top:0;
}
.logo{
    font-size:24px;
    font-weight:700;
    background:linear-gradient(45deg,#6366f1,#3b82f6);
    -webkit-background-clip:text;
    color:transparent;
}

nav a{
    margin:0 15px;
    text-decoration:none;
    color:#475569;
    font-weight:500;
}
nav a:hover{color:#3b82f6}

/* Hero */
.hero{
    text-align:center;
    padding:80px 20px;
}
.hero h1{
    font-size:48px;
    font-weight:700;
}
.hero button{
    margin-top:20px;
    padding:12px 30px;
    border:none;
    border-radius:30px;
    background:#3b82f6;
    color:white;
    cursor:pointer;
}

/* Cards */
.card-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(240px,1fr));
    gap:24px;
    padding:40px;
}

.card{
    background:rgba(255,255,255,0.75);
    backdrop-filter:blur(10px);
    border-radius:20px;
    padding:20px;
    transition:.3s;
    box-shadow:0 10px 25px rgba(0,0,0,0.05);
}

.card:hover{
    transform:translateY(-10px);
}

/* Products */
.product img{
    width:100%;
    border-radius:16px;
}
.price{
    font-weight:700;
    color:#3b82f6;
}
button.add{
    margin-top:10px;
    padding:10px;
    border:none;
    border-radius:20px;
    background:#6366f1;
    color:white;
    cursor:pointer;
}
button.add:hover{
    background:#4f46e5;
}

/* Footer */
footer{
    text-align:center;
    padding:30px;
    color:#64748b;
}
</style>
</head>

<body>

<header>
    <div class="logo">NovaMart</div>
    <nav>
        <a href="#">Home</a>
        <a href="#">Shop</a>
        <a href="#">Deals</a>
    </nav>
</header>

<section class="hero">
    <h1>Upgrade Your Lifestyle</h1>
    <p>Fresh designs. Better experience.</p>
    <button onclick="scrollToProducts()">Shop Now</button>
</section>

<div class="card-grid" id="products"></div>

<footer>
    © 2026 NovaMart
</footer>

<script>
// SAME LOGIC (simplified demo dataset)

const products = [
    {id:1,name:"Headphones",price:399,img:"https://images.unsplash.com/photo-1518444028785-8d5fb1d9a7c7"},
    {id:2,name:"Smartwatch",price:699,img:"https://images.unsplash.com/photo-1511739001486-6bfe10ce785f"},
    {id:3,name:"Gaming Laptop",price:2499,img:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8"}
];

let cart = 0;

function render(){
    document.getElementById("products").innerHTML = products.map(p=>`
        <div class="card product">
            <img src="${e">$${p.price}</p>
            <button class="add" onclick="add(${p.id})">Add to cart</button>
        </div>
    `).join("");
}

function add(id){
    cart++;
    alert("Added to cart. Total items: "+cart);
}

function scrollToProducts(){
    document.getElementById("products").scrollIntoView({behavior:'smooth'});
}

render();
</script>

</body>
</html>
          
      
        
        

      
       
   
    
   

