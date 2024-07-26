<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
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
	
	.product-container {
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: space-around;
	    background-color: #e6e6d8;
	    padding: 20px;
	}
	
	.product-container img{
		width: 100%;
        max-width: 800px;
        height: 160px;
        border-radius: 10px;
       resize-mode: contain;
	}
	
	.product {
	    background-color: white;
	    width: 200px;
	    margin: 10px;
	    padding: 10px;
	    border-radius: 8px;
	    text-align: center;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    margin-top: 200px;
	    margin-left: -1000px;
	}
	
	.product img {
	    max-width: 100%;
	    height: auto;
	    border-radius: 8px;
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
	    <img alt="Banner" src="../images/banner2.webp">
    	
        <c:forEach var="product" items="${products}">
            <div class="product">
                <img src="${product.image}" alt="Product Image">
                <p>Tên sản phẩm: ${product.name}</p>
                <p>Giá: Liên hệ</p>
            </div>
        </c:forEach>
    </div>
    <div class="footer">
        <p>20020201 - Huỳnh Thị Ngọc Khá</p>
    </div>
</body>
</html>