package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.dao.UserDAO;

import java.sql.SQLException;

public class UserService {
    private static UserService instance;

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }
    public UserService(){

    }
    public boolean checkSignIn(String username, String password) {

        UserBean user = UserDAO.getInstance().checkSignIn(username, password);
        return user != null;
    }

    public boolean checkSignUp(String username, String email, String password, String confirm, String rule) {
        return UserDAO.getInstance().checkSignUp(username, password, "");
    }


}
