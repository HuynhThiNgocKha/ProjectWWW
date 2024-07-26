<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style type="text/css">
	body {
	  font-family: Arial, sans-serif;
	    background-color: #f0f0f0;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    height: 100vh;
	    margin: 0;
	}
	
	h1 {
	    color: #333;
	    margin-bottom: 20px;
	}
	
	.login-container {
	    background-color: #f0f0f0;
	    padding: 20px;
	    border-radius: 8px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    width: 300px;
	    text-align: center;
	}
	
	label {
	    display: block;
	    margin-bottom: 8px;
	    font-weight: bold;
	    margin-right: 50px;
		margin-left: 20px;
	}
	
	input[type="text"], input[type="password"] {
	    width: calc(100% - 10px);
	    padding: 8px;
	    margin-bottom: 15px;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    
	    
	}
	
	button {
	    background-color: #a09b68;
	    color: white;
	    padding: 10px 20px;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	}
	
	button:hover {
	    background-color: #5A571B;
	}


</style>
</head>
<body>
	<div class="login-container">
		<h1>Đăng nhập</h1>
        <form action="loginServlet" method="post">
            <label for="username">Tên đăng nhập</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required><br>

            <button type="submit">Đăng nhập</button>
        </form>
	</div>
	
</body>
</html>