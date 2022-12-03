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

@WebServlet("/searchAdvert")
public class SearchAdvert extends HttpServlet {
    ArrayList<Advertisement> searchList;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Services model = new Services();
        searchList = model.searchAdvert(request.getParameter("vacancy"));
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("advertisements", searchList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/search.jsp");
        requestDispatcher.forward(request, response);
    }
}
