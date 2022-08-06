package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateCartController", value = "/UpdateCartController")
public class UpdateCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id =Integer.parseInt(request.getParameter("id"));
        String quantity =request.getParameter("quantity");
        Cart cart =(Cart) session.getAttribute("cart");
        if(cart==null) cart=Cart.getInstance();
        AllProduct p = cart.get(id);
        if(p==null){
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        p.setSellQuantity(Integer.parseInt(quantity));
        session.setAttribute("cart", cart);

        if(p.getSellQuantity() != Integer.parseInt(quantity)) response.setStatus(405);
    }
}
