<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="uk">
<head>
    <title>Результат</title>
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light text-center d-flex justify-content-center align-items-center vh-100">
<div class="card p-4 w-50">
    <h2 class="mb-3">
        <% Boolean win = (Boolean) session.getAttribute("win"); %>
        <% if (win != null && win) { %>
        Вітаємо! Ти пройшов усі випробування!
        <% } else { %>
        На жаль, ти програв. Боги не дали тобі сили.
        <% } %>
    </h2>
    <form action="quiz" method="get">
        <button type="submit" class="btn btn-danger">Почати спочатку</button>
    </form>
</div>
</body>
</html>