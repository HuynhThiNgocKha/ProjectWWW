<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Sản Phẩm</title>

<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
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
        display: inline;
        margin-left: 10px;
        cursor: pointer;
        font-size: 20px;
    }
    
    .main-content {
        display: flex;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 100px);
    }
    
    .addProduct-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: left;
    }
    
    .addProduct-container h1 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
    }
    
    .form-group label {
        width: 150px;
        margin-right: 10px;
        font-weight: bold;
    }
    
    .form-group input[type="text"], 
    .form-group input[type="file"],
    .form-group input[type="number"] {
        width: calc(100% - 160px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    
    button {
        background-color: #b53b3b;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    
    button:hover {
        background-color: #a13030;
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
    
    <div class="main-content">
        <div class="addProduct-container">
            <h1>Thêm Sản Phẩm</h1>
            <form action="addProductServlet" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="nameProduct">Tên Sản Phẩm</label>
                    <input type="text" id="nameProduct" name="nameProduct" required>
                </div>

                <div class="form-group">
                    <label for="price">Giá</label>
                    <input type="text" id="price" name="price" required>
                </div>
                
                <div class="form-group">
                    <label for="image">Hình ảnh</label>
                    <input type="file" id="image" name="image" accept="image/*" required>
                </div>
                
                <button type="submit">Thêm</button>
            </form>
        </div>
    </div>
</body>
</html>
