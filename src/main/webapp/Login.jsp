<!DOCTYPE html>
<html>
<head>
    <title>Halaman Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="login-container">
    <h1>Login</h1>
    <form id="login-form" method="post" action="LoginServlet">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
    <p id="error-msg" style="color: red;"></p>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $("#login-form").submit(function (event) {
            event.preventDefault();
            $.post("LoginServlet", $(this).serialize(), function (data) {
                if (data === "success") {
                    window.location.href = "welcome.jsp";
                } else {
                    $("#error-msg").text("Login failed. Please check your credentials.");
                }
            });
        });
    });
</script>
</body>
</html>
