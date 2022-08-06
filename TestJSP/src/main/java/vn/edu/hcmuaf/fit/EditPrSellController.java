package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.dao.AllProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditPrSellController", value = "/editproduct")
public class EditPrSellController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id =request.getParameter("id");
        String name =request.getParameter("name");
        String image =request.getParameter("image");
        String price =request.getParameter("price");
        String decription =request.getParameter("decription");
        String category =request.getParameter("categoryse");

        AllProductDAO.getInstance().editSellProduct(name,decription,price,image,category,id);
        request.getRequestDispatcher("sellproduct").forward(request,response);
    }
}
