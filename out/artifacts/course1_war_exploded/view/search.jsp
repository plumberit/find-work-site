<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Advertisement" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Search results</title>
    <style>
        body {
            background-attachment: fixed;
        }

        .ad {
            width: 500px;
            border: 2px solid black; /* Чёрная рамка */
            border-radius: 10px; /* Радиус скругления */
            padding: 5px;
            font: 10pt sans-serif;
            background-color: white;
        }

        .heading {
            font: 24pt sans-serif;
            font-weight: 900;
        }

        .anyResults {
            width: 400px;
            font: 17pt sans-serif;
            background-color: white;
        }

        .distance {
            border-spacing: 5px;
        }
    </style>
</head>
<body background="images/background.png">
<div class="heading">
    <h2><b>Search results:</b></h2>
</div>
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
        out.println("<div class=\"anyResults\"><p>No results...</p><div>");
    }
%>
</body>
</html>
