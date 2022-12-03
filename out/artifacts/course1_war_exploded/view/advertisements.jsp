<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Advertisement" %>
<html>
<head>
    <title>Advertisements</title>
    <style>
        body {
            background-attachment: fixed;
        }

        .ad {
            width: 500px;
            border: 2px solid black; /* Чёрная рамка */
            border-radius: 10px; /* Радиус скругления */
            padding: 5px;
            font: 13pt sans-serif;
            background-color: white;
            line-height: 27px;
        }

        .heading {
            font: 24pt sans-serif;
            font-weight: 800;
        }

        .anyResults {
            width: 400px;
            font: 17pt sans-serif;
            background-color: white;
        }

        .searchMenu {
            border: 2px solid black; /* Чёрная рамка */
            padding: 10px;
            background-color: white;
            width: 370px;
            font: 14pt sans-serif;
        }

        .distance {
            border-spacing: 5px;
        }
    </style>
</head>
<body background="images/background.png">

<form action="searchAdvert" method="post">
    <div class="searchMenu">
        <label><b> Search:</b></label><br>
        <input type="text" name="vacancy" size="50" autocomplete="off"><br>
        <button type="submit"> OK</button>
    </div>
</form>

<h2 class="heading">Advertisements:</h2>
<div>
    <%
        ArrayList<Advertisement> advertisements = (ArrayList<Advertisement>) request.getAttribute("advertisements");
        if (!advertisements.isEmpty()) {
            for (int i = 0; i < advertisements.size(); i++) {
                out.println("<div class=\"ad\">");
                out.println("<table class=\"distance\" width=\"500\">");
                out.println("<tr><td><b>" + advertisements.get(i).getVacancy() + "</b>");
                out.println("<td align=\"right\">" + advertisements.get(i).getSerialNumber() + "</td></tr>");
                out.println("<tr><td><b>Description: </b>" + advertisements.get(i).getDescription() + "</td></tr>");
                out.println("<tr><td><b>Requirements: </b>" + advertisements.get(i).getRequirements() + "</td></tr>");
                out.println("</table></div>");
                out.println("<br>");
            }
        } else {
            out.println("<div class=\"anyResults\"><p>No advertisements...</p><div>");
        }
    %>
</div>
</body>
</html>
