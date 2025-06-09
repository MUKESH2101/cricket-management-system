<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cricket Management - Login & Signup</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <div class="container">
        <div class="form-box">
            <h2 id="form-title">Login</h2>

            <!-- Login Form -->
            <form id="loginForm">
                <div class="input-box">
                    <input type="email" id="login-email" placeholder="Email" required>
                </div>
                <div class="input-box">
                    <input type="password" id="login-password" placeholder="Password" required>
                </div>
                <button type="submit" class="btn">Login</button>
                <p class="toggle-text">Don't have an account? <span id="showSignup">Sign up</span></p>
            </form>

            <!-- Signup Form -->
            <form id="signupForm" style="display: none;">
                <div class="input-box">
                    <input type="text" id="signup-name" placeholder="Full Name" required>
                </div>
                <div class="input-box">
                    <input type="email" id="signup-email" placeholder="Email" required>
                </div>
                <div class="input-box">
                    <input type="password" id="signup-password" placeholder="Password" required>
                </div>
                <button type="submit" class="btn">Sign Up</button>
                <p class="toggle-text">Already have an account? <span id="showLogin">Login</span></p>
            </form>

        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
/* Google Font */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: url('https://images.unsplash.com/photo-1523537469710-1ac2c56c569f') no-repeat center center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.container {
    background: rgba(0, 0, 0, 0.8);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
    width: 350px;
    text-align: center;
    color: white;
}

h2 {
    font-weight: 600;
    margin-bottom: 15px;
}

.input-box {
    margin: 10px 0;
}

.input-box input {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    outline: none;
}

.btn {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background: #28a745;
    color: white;
    cursor: pointer;
    transition: 0.3s;
    font-size: 16px;
}

.btn:hover {
    background: #218838;
}

.toggle-text {
    margin-top: 10px;
    font-size: 14px;
}

.toggle-text span {
    color: #f8c146;
    cursor: pointer;
    font-weight: bold;
}

.toggle-text span:hover {
    text-decoration: underline;
}
document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById("loginForm");
    const signupForm = document.getElementById("signupForm");
    const formTitle = document.getElementById("form-title");
    const showSignup = document.getElementById("showSignup");
    const showLogin = document.getElementById("showLogin");

    // Show Signup Form
    showSignup.addEventListener("click", function () {
        loginForm.style.display = "none";
        signupForm.style.display = "block";
        formTitle.innerText = "Sign Up";
    });

    // Show Login Form
    showLogin.addEventListener("click", function () {
        signupForm.style.display = "none";
        loginForm.style.display = "block";
        formTitle.innerText = "Login";
    });

    // Handle Login
    loginForm.addEventListener("submit", function (event) {
        event.preventDefault();
        const email = document.getElementById("login-email").value;
        const password = document.getElementById("login-password").value;

        if (email === "" || password === "") {
            alert("Please fill in all fields!");
        } else {
            alert("Login Successful!");
            // Add backend integration here
        }
    });

    // Handle Signup
    signupForm.addEventListener("submit", function (event) {
        event.preventDefault();
        const name = document.getElementById("signup-name").value;
        const email = document.getElementById("signup-email").value;
        const password = document.getElementById("signup-password").value;

        if (name === "" || email === "" || password === "") {
            alert("Please fill in all fields!");
        } else {
            alert("Signup Successful!");
            // Add backend integration here
        }
    });
});
