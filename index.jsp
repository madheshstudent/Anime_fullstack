<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anime SIGNUP</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('anime1.jpg');
        background-size: cover;
        background-position: center;
        height: 100vh;
    }

    .header {
        background-color: #333;
        color: white;
        padding: 10px 20px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        background-image: url('j5.png');
        background-size: cover;
    }

    .open-btn {
        font-size: 30px;
        cursor: pointer;
        background-color: #333;
        color: white;
        padding: 10px 15px;
        border: none;
    }

    .search-bar {
        position: relative;
        display: flex;
        align-items: center;
    }

    .search-bar input[type="text"] {
        padding: 8px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 200px;
    }

    .search-bar button {
        background-color: #333;
        color: white;
        padding: 8px 12px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-left: 5px;
    }

    .sidebar {
        height: 100vh;
        width: 0;
        background-color: #333;
        padding-top: 20px;
        position: fixed;
        top: 0;
        left: 0;
        overflow-x: hidden;
        transition: 0.3s;
        z-index: 2;
    }

    .sidebar a {
        display: block;
        color: #f2f2f2;
        padding: 14px 16px;
        text-decoration: none;
        opacity: 0;
        transition: opacity 0.3s;
    }

    .sidebar a:hover {
        background-color: #ddd;
        color: black;
    }

    .sidebar.open {
        width: 250px;
    }

    .sidebar.open a {
        opacity: 1;
    }

    .content {
        margin-left: 0;
        padding: 20px;
        transition: margin-left 0.3s;
        margin-top: 60px;
    }

    .signup-form {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(255, 255, 255, 0.5); 
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
        width: 300px;
    }

    .signup-form h2 {
        margin-top: 10;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"], input[type="email"], input[type="password"] {
        width: 80%; 
        height: 40px;
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
    }

    button[type="button"] {
        width: 100%;
        height: 40px;
        background-color: #4CAF50;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
    }

    button[type="button"]:hover {
        background-color: #3e8e41;
    }

    #error-msg {
        color: red;
        margin-top: 10px;
    }
</style>
<body>

    <div class="header">
        <button class="open-btn" onclick="toggleSidebar()">&#9776;</button>
        <div class="search-bar">
            <input type="text" placeholder="Search Anime...">
            <button type="button">Search</button>
        </div>
        
    </div>

    <div class="sidebar" id="sidebar">
        <a href="Home.jsp">Home</a>
        <a href="animelist.jsp">Anime List</a>
        <a href="newseason.jsp">New Season</a>
        <a href="Movies_page.jsp">Movies</a>
        <a href="popular_anime.jsp">Popular</a>
        <button class="close-btn" onclick="toggleSidebar()">close</button>
    </div>

    <div class="signup-form">
        <h2>Sign up</h2>
        <form>
            <label for="username">Username:</label>
            <input type="text" id="username" placeholder="Enter your username">
            <br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" placeholder="Enter your email">
            <br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="Enter your password">
            <br><br>
            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" placeholder="Confirm your password">
            <br><br>
            <button id="signup-btn">Sign up</button>
        </form>
        <p id="error-msg"></p>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            const content = document.getElementById("content");
            if (sidebar.classList.contains("open")) {
                sidebar.classList.remove("open");
                content.style.marginLeft = "0";
            } else {
                sidebar.classList.add("open");
                content.style.marginLeft = "250px";
            }
        }

       

        const signupForm = document.querySelector('.signup-form');
        const usernameInput = document.querySelector('#username');
        const emailInput = document.querySelector('#email');
        const passwordInput = document.querySelector('#password');
        const confirmPasswordInput = document.querySelector('#confirm-password');
        const signupBtn = document.querySelector('#signup-btn');
        const errorMsg = document.querySelector('#error-msg');

        signupBtn.addEventListener('click', (e) => {
            e.preventDefault();
            const username = usernameInput.value.trim();
            const email = emailInput.value.trim();
            const password = passwordInput.value.trim();
            const confirmPassword = confirmPasswordInput.value.trim();

            if (username === '' || email === '' || password === '' || confirmPassword === '') {
                errorMsg.textContent = 'Please fill in all fields';
                return;
            }

            if (password !== confirmPassword) {
                errorMsg.textContent = 'Passwords do not match';
                return;
            }

            console.log(`Username: ${username}, Email: ${email}, Password: ${password}`);
        });
    </script>
</body>

</html>