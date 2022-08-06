package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddSellController", value = "/addsell")
public class AddSellController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        String image =request.getParameter("image");
        String price =request.getParameter("price");
        String decription =request.getParameter("decription");
        String category =request.getParameter("category");
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("userlogin");
        String sid = u.getIsSell();
        AllProductDAO.getInstance().addSellProduct(name,image,price,decription,sid);
        response.sendRedirect("sellproduct");
    }
}
