package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = AllProductDAO.getInstance().login(username, password);
        if (user == null) {
            request.setAttribute("nameuser", username);
            request.setAttribute("mess", "User or Password is in correct !");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("userlogin",user);
//            session.setMaxInactiveInterval(1000);
            response.sendRedirect("/Adev/HomeController");
        }
    }
}
