<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login & Signup</title>
  <style type="text/css">
  
  /* Reset default styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: Arial, sans-serif;
}

/* Center container */
body {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #6a11cb, #2575fc);
}

/* Box styling */
.container {
  background: #fff;
  padding: 2rem;
  border-radius: 15px;
  box-shadow: 0 8px 25px rgba(0,0,0,0.2);
  width: 350px;
}

.form-box h2 {
  text-align: center;
  margin-bottom: 1.5rem;
  color: #333;
}

.form {
  display: none;
}

.form.active {
  display: block;
}

.input-box {
  position: relative;
  margin: 20px 0;
}

.input-box input {
  width: 100%;
  padding: 10px;
  border: none;
  border-bottom: 2px solid #aaa;
  outline: none;
  font-size: 16px;
  background: transparent;
}

.input-box label {
  position: absolute;
  top: 50%;
  left: 0;
  transform: translateY(-50%);
  color: #666;
  pointer-events: none;
  transition: 0.3s;
}

.input-box input:focus ~ label,
.input-box input:valid ~ label {
  top: -5px;
  font-size: 12px;
  color: #2575fc;
}

.btn {
  width: 100%;
  padding: 10px;
  background: #2575fc;
  border: none;
  color: white;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  transition: 0.3s;
}

.btn:hover {
  background: #1a5edb;
}

.switch {
  text-align: center;
  margin-top: 15px;
  font-size: 14px;
}

.switch a {
  color: #2575fc;
  text-decoration: none;
  font-weight: bold;
}

.switch a:hover {
  text-decoration: underline;
}
  
  
  </style>
</head>
<body>
  <div class="container">
    <div class="form-box">
      <h2 id="form-title">Login</h2>
      
      <!-- Login Form -->
      <form id="login-form" class="form active" method="post" action="">
        <div class="input-box">
          <input type="email" required>
          <label>Email</label>
        </div>
        <div class="input-box">
          <input type="password" required>
          <label>Password</label>
        </div>
        <button type="submit" class="btn">Login</button>
        <p class="switch">Don't have an account? <a href="#" id="signup-link">Sign up</a></p>
      </form>

      <!-- Signup Form -->
      <form id="signup-form" class="form" method="post" action="SignUp">
        <div class="input-box">
          <input type="text" required>
          <label>Username</label>
        </div>
        <div class="input-box">
          <input type="email" required>
          <label>Email</label>
        </div>
        <div class="input-box">
          <input type="password" required>
          <label>Password</label>
        </div>
        <button type="submit" class="btn">Sign up</button>
        <p class="switch">Already have an account? <a href="#" id="login-link">Login</a></p>
      </form>
    </div>
  </div>

  <script>
    // Toggle between login and signup
    const loginForm = document.getElementById("login-form");
    const signupForm = document.getElementById("signup-form");
    const loginLink = document.getElementById("login-link");
    const signupLink = document.getElementById("signup-link");
    const formTitle = document.getElementById("form-title");

    signupLink.addEventListener("click", () => {
      loginForm.classList.remove("active");
      signupForm.classList.add("active");
      formTitle.textContent = "Sign Up";
    });

    loginLink.addEventListener("click", () => {
      signupForm.classList.remove("active");
      loginForm.classList.add("active");
      formTitle.textContent = "Login";
    });
  </script>
</body>
</html>
