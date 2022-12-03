<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin menu</title>
    <style>
        .menu {
            width: 360px;
            border: 2px solid black;
            padding: 10px;
            font: 12pt sans-serif;
            background-color: white;
        }

        .heading {
            font: 14pt sans-serif;
            background-color: white;
        }

        .backButton {
            margin-top: 10px;
            font-size: 20px;
            border: 2px solid black;
            border-radius: 7px;
            padding: 5px 10px;
        }
    </style>
</head>
<body background="../images/background.png">

<div>
    <b class="heading">Add advertisement:</b><br>
    <form action="../setAdvert" method="post">
        <div class="menu">
            <label>Vacancy:</label><br>
            <input type="text" name="vacancy" size="50" autocomplete="off"><br>
            <label>Description:</label><br>
            <input type="text" name="description" size="50" autocomplete="off"><br>
            <label>Requirements:</label><br>
            <input type="text" name="requirement" size="50" autocomplete="off"><br><br>
            <button type="submit">OK</button>
        </div>
    </form>
</div>

<div>
    <b class="heading">Delete advertisement:</b><br>
    <form action="../deleteAdvert" method="post">
        <div class="menu">
            <input type="text" name="deleted" placeholder="Enter #..." size="50"
                   autocomplete="off"><br><br>
            <button type="submit">OK</button>
        </div>
    </form>
</div>

<div>
    <b class="heading">Edit advertisement:</b><br>
    <form action="../editAdvert" method="post">
        <div class="menu">
            <label>Choose advertisement:</label><br>
            <input type="text" name="choose" placeholder="Enter #..." size="50"
                   autocomplete="off"><br>
            <label>Vacancy:</label><br>
            <input type="text" name="vacancy" size="50" autocomplete="off"><br>
            <label>Description:</label><br>
            <input type="text" name="description" size="50" autocomplete="off"><br>
            <label>Requirements:</label><br>
            <input type="text" name="requirement" size="50" autocomplete="off"><br><br>
            <button type="submit">OK</button>
        </div>
    </form>
</div>

<div>
    <form action="../index.jsp" method="get">
        <button class="backButton" type="submit">
            Back to main page
        </button>
    </form>
</div>

</body>
</html>
