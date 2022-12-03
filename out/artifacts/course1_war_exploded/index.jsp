<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find a job</title>
    <style>
        .banner {
            margin-top: 200px;
            margin-left: auto;
            margin-right: auto;
            background: yellow;
            height: 75px;
            width: 1100px;
        }

        .bannerText {
            padding-top: 5px;
            font: 40pt sans-serif;
            text-align: center;
        }

        .divButton {
            margin-top: 10px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        .button {
            margin-top: 5px;
            border: 2px solid black;
            border-radius: 7px;
            padding: 5px 10px;
            font: 15pt sans-serif;
        }

        .admin {
            margin-top: 200px;
            font: 15pt sans-serif;
        }
    </style>
</head>
<body background="images/background.png">
<div class="banner mBanner">
    <p class="bannerText">Find a Job Site</p>
</div>

<div class="divButton">
    <form action="getAdvert" method="get">
        <button class="button" type="submit">
            Look at advertisements
        </button>
    </form>
</div>

<br><br>

<div class="divButton admin">
    <form action="view/userInterface.jsp" method="get">
        <label><b>Administrator panel:</b></label><br>
        <button class="button" type="submit">I am administrator</button>
    </form>
</div>

</body>
</html>

