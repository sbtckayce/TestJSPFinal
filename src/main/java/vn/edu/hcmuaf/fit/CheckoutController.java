package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.Cart;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.services.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckoutController", value = "/CheckoutController")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session  = request.getSession();
        if(session.getAttribute("userlogin")==null){
            response.sendRedirect("/Adev/signin.jsp");
            return;
        }
        if(session.getAttribute("cart")==null) {
            response.sendRedirect(("/Adev/cartproduct.jsp"));
            return;
        }
        String name = request.getParameter("name");
        int phone = Integer.parseInt(request.getParameter("phone"));
        String slct1 =request.getParameter("slct1");
        String slct2=request.getParameter("slct2");
        String address =request.getParameter("address");
        boolean re = OrderService.getInstance().createOrder((User) session.getAttribute("userlogin"),(Cart) session.getAttribute("cart"),name,phone,slct1,slct2,address);
         session.setAttribute("testValue",true);
//        if(re) response.sendRedirect("/Adev/HomeController");
//        else response.sendRedirect("/Adev/cartproduct.jsp");
        if(re){
            response.sendRedirect("/Adev/CartController");
            Cart cart =(Cart) session.getAttribute("cart");
            cart.emptyMap();
        }
        else {
            response.sendRedirect("/Adev/HomeController");
        }
    }
}
