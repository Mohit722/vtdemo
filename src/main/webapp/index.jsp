<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Blogging Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background: #3498db;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        nav {
            margin: 20px 0;
        }
        nav a {
            margin: 0 15px;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .post {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .post h3 {
            margin: 0 0 10px;
        }
        .post p {
            line-height: 1.6;
        }
        footer {
            text-align: center;
            padding: 10px 0;
            background: #3498db;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to My Blogging Application</h1>
        <nav>
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Contact</a>
            <a href="#">Login</a>
        </nav>
    </header>
    
    <div class="container">
        <h2>Latest Blog Posts</h2>

        <div class="post">
            <h3>Post Title 1</h3>
            <p><%= "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." %></p>
        </div>

        <div class="post">
            <h3>Post Title 2</h3>
            <p><%= "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." %></p>
        </div>

        <div class="post">
            <h3>Post Title 3</h3>
            <p><%= "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." %></p>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 My Blogging Application. All Rights Reserved.</p>
    </footer>
</body>
</html>
