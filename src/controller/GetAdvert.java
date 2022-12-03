package controller;

import model.Advertisement;
import model.Services;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/getAdvert")
public class GetAdvert extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Services model = new Services();
        ArrayList<Advertisement> advertisements = model.getAdverts();
        request.setAttribute("advertisements", advertisements);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/advertisements.jsp");
        requestDispatcher.forward(request, response);
    }
}
