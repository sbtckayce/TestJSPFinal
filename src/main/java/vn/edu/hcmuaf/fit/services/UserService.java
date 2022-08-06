package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.User;
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
    public User checkLogin(String username, String password) {

        return UserDAO.getInstance().checkLogin(username, password);
    }

    public boolean checkRegister(String username, String email, String password, String confirm, String rule) {

        return UserDAO.getInstance().checkRegister(username, password);
    }


}
