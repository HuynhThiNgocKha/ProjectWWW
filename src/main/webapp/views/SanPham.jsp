<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>
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
	.product-container {
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: space-around;
	    background-color: #e6e6d8;
	    padding: 20px;
	}
	
	.product {
	    background-color: white;
	    width: 200px;
	    margin: 10px;
	    padding: 10px;
	    border-radius: 8px;
	    text-align: center;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}
	
	.product img {
	    max-width: 100%;
	    height: auto;
	    border-radius: 8px;
	}
	
	.product a {
		margin-bottom: 15px;
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
	
	button {
	    background-color: #b53b3b;
	    color: white;
	    border: none;
	    padding: 10px 20px;
	    cursor: pointer;
	}

	button:hover {
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
    <div class="product-container">
        <c:forEach var="product" items="${products}">
            <div class="product">
                <img src="${product.image}" alt="Product Image">
                <p>Tên sản phẩm: ${product.name}</p>
                <p>Giá: ${product.price}</p>
                <a href="ChiTietSanPham.jsp" >Chi tiết sản phẩm</a>
                <button>Thêm vào 🛒</button>

            </div>
        </c:forEach>
    </div>
    <div class="footer">
        <p>20020201 - Huỳnh Thị Ngọc Khá</p>
    </div>
</body>
</html>