package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "AddSellController", value = "/addsell")
public class AddSellController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        String image =request.getParameter("image");
        int price =Integer.parseInt(request.getParameter("price"));
        String decription =request.getParameter("decription");
        String category =request.getParameter("categoryse");
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("userlogin");
        int sid = u.getIsSell();
        AllProductDAO.getInstance().addSellProduct(name,image,price,decription,sid);



        response.sendRedirect("sellproduct");
    }
}
