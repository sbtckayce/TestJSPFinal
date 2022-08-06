package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUp", value = "/doSignUp")
public class SignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        String rule = request.getParameter("rules");

        if (UserService.getInstance().checkSignUp(username, email, password, confirm, rule)  &&
                password.equals(confirm)) {
            response.sendRedirect("/Adev/signin.jsp");
        }
        else if (UserService.getInstance().checkSignUp(username, email, password, confirm, rule) &&
                !password.equals(confirm)) {
            request.setAttribute("duplicate", "Password and Confirm not equals");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
        }
        else {
            request.setAttribute("error", "Username exists");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
        }
    }
}
