package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCartController", value = "/RemoveCartController")
public class RemoveCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
       int id = Integer.parseInt(request.getParameter("id"));
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart==null) cart= Cart.getInstance();
        AllProduct remove = cart.remove(id);
        response.sendRedirect("CartController");
        if(remove==null) response.setStatus(HttpServletResponse.SC_NOT_FOUND);
    }
}
