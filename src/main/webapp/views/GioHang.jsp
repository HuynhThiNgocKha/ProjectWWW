<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ Hàng</title>
<style type="text/css">
	body {
	    font-family: Arial, sans-serif;
	    background-color: #f0f0e4;
	    color: #333;
	    margin: 0;
	    padding: 0;
	}

	.header {
	    background-color: #5A571B;
	    padding: 20px;
	    text-align: center;
	}
	
	.header input[type="text"] {
	    padding: 10px;
	    width: 50%;
	    border: none;
	    border-radius: 4px;
	}
	
	.header p {
		padding: 10px;
	    border: none;
	    cursor: pointer;
	    margin-top: -40px;
	    margin-left: 700px;
	}
	
	.header .nav {
	    margin-top: 10px;
	}
	
	.header .nav a {
	    margin: 0 10px;
	    text-decoration: none;
	    color: white;
	    font-weight: bold;
	}

	.description {
	    background-color: #a09b68;
	    padding: 20px;
	    color: white;
	    display: flex;
	    justify-content: space-around;
	    align-items: center;
	}
	
	.description .image, .description .text {
	    width: 45%;
	}
	
	.search-bar {
	    width: 80%;
	    padding: 10px;
	    font-size: 18px;
	}
	
	.navigation {
	    display: inline-block;
	    margin-top: 10px;
	}
	
	.navigation a {
	    margin: 0 15px;
	    text-decoration: none;
	    color: white;
	    font-weight: bold;
	    padding: 5px 10px;
	}
	
	.navigation .cart {
	    float: right;
	    background-color: #b3b373;
	    border-radius: 5px;
	}
	
	.shopping_cart-container {
	    margin-top: 20px;
	    border-top: 1px solid #ccc;
	    padding-top: 10px;
	    margin-left: 20px;
	}
	
	.product {
	    display: flex;
	    align-items: center;
	    border-bottom: 1px solid #ccc;
	    padding: 10px 0;
	}
	
	.product-image {
	    width: 120px;
	    height: 120px;
	    background-color: #ddd;
	    margin-right: 20px;
	}
	
	.product-details {
	    flex: 1;
	}
	
	.product h3 {
	    margin: 0;
	    font-size: 18px;
	}
	
	.price {
	    font-weight: bold;
	    color: #b53b3b;
	}
	
	.buy-button {
	    background-color: #b53b3b;
	    color: white;
	    border: none;
	    padding: 10px 20px;
	    cursor: pointer;
	}
	
	.buy-button:hover {
	    background-color: #a13030;
	}
	
	.footer {
	    background-color: #5A571B;
	    text-align: center;
	    padding: 10px;
	    color: white;
	}
</style>
</head>
<body>
  <div class="header">
       <input type="text" placeholder="Bạn muốn tìm gì ?">
       <p>🔍</p>
       <div class="nav">
           <a href="Index.jsp">Home</a>
           <a href="SanPham.jsp">Sản Phẩm</a>
            <a href="ThemSanPham.jsp">Thêm Sản Phẩm</a>
           <a href="GioHang.jsp" class="cart">🛒</a>
       </div>
   </div>
   <div class="shopping_cart-container">
        <div class="product">
               <div class="product-image"></div>
               <div class="product-details">
                  	<p>Tên sản phẩm: ${product.name}</p>
               	<p>Giá: ${product.price}</p>
                   <button class="buy-button">Mua hàng</button>
               </div>
           </div>
           <!-- Lặp lại cấu trúc sản phẩm cho các sản phẩm khác -->
   </div>
   <div class="footer">
       <p>20020201 - Huỳnh Thị Ngọc Khá</p>
   </div>
</body>
</html>