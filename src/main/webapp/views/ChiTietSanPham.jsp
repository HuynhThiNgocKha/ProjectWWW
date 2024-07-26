<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style type="text/css">
		body {
		    font-family: Arial, sans-serif;
		    background-color: #f0f0f0;
		    margin: 0;
		    padding: 0;
		    color: #333;
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
		
		.header button {
		    padding: 10px;
		    border: none;
		    background-color: #8f8b5e;
		    color: white;
		    border-radius: 4px;
		    cursor: pointer;
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
		.header p {
			padding: 10px;
		    border: none;
		    cursor: pointer;
		    margin-top: -40px;
		    margin-left: 700px;
		}
		.container {
		    margin: 0 auto;
		    padding: 20px;
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
		
		.product-detail {
		    margin-top: 20px;
		    border-top: 1px solid #ccc;
		    padding-top: 10px;
		}
		
		.product-detail h1 {
		    margin: 0;
		    font-size: 24px;
		    color: #7c7c45;
		}
		
		.product-detail-content {
		    display: flex;
		    align-items: flex-start;
		    padding-top: 20px;
		}
		
		.product-image {
		    width: 300px;
		    height: 300px;
		    background-color: #ddd;
		    margin-right: 20px;
		}
		
		.product-info {
		    flex: 1;
		}
		
		.product-info p {
		    font-size: 18px;
		    color: #333;
		}
		
		.actions {
		    margin-top: 20px;
		}
		
		button {
		    background-color: #b53b3b;
			 height: 40px;
		    color: white;
		    border: none;
		    padding: 10px 20px;
		    cursor: pointer;
		    margin-right: 10px;
		}
		
		button:hover {
		    background-color: #a13030;
		}
    	
    </style>
</head>
<body>
    <div class="container">
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
        
        <section class="product-detail">
            <h1>Chi tiết sản phẩm</h1>
            <div class="product-detail-content">
                <div class="product-image"></div>
                <div class="product-info">
                    <p>Tên sản phẩm: ${product.name}</p>
                	<p>Giá: ${product.price}</p>
                    <div class="actions">
                        <button class="add-to-cart">Thêm vào 🛒</button>
                        <button class="buy-now">Mua hàng</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
