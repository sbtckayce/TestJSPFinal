package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.db.JDBIConnect;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;


public class UserDAO {
    private static UserDAO instance;

    public static UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }

    private UserDAO() {

    }

//    public UserBean checkSignIn(String username, String password) {
//        try {
//            ResultSet resultSet = DBConnect.connect().executeQuery("SELECT * FROM user WHERE username='" + username + "'AND password='" + password + "'");
//            //   ResultSet resultSet =DBConnect.connect().executeQuery("SELECT * FROM user WHERE username='"+username+"'AND password='"+password+"'");
//            UserBean user = null;
//            if (resultSet.next()) {
//                user = new UserBean();
//                user.setUsername(resultSet.getString("username"));
//                user.setFullname(resultSet.getString("name"));
//
//            }
//            if (user != null && user.getUsername().equals(username) && !resultSet.next()) {
//                return user;
//            }
//            return null;
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
public String encryptPassword(String password) {
    String encryptPassword = password;
    try {
        MessageDigest m = MessageDigest.getInstance("MD5");
        m.update(password.getBytes());
        byte[] bytes = m.digest();
        StringBuilder s = new StringBuilder();
        for(int i=0; i< bytes.length ;i++)
        {
            s.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        }
        encryptPassword = s.toString();
    } catch (NoSuchAlgorithmException e) {
        e.printStackTrace();
    }
    return encryptPassword;
}

    public User checkLogin(String username, String password) {
        List<User> users = JDBIConnect.get().withHandle(h ->
                h.createQuery("SELECT * FROM user where username =?")
                        .bind(0, username)
                        .mapToBean(User.class).stream()
                        .collect(Collectors.toList())
        );
        if (users.size() != 1) {
            return null;
        }
        User user = users.get(0);
        if (!user.getPassword().equals(hashPassword(password))
                || !user.getUsername().equals(username)) return null;
        return user;
    }

    //    public boolean checkSignUp(String username, String password, String name) {
//        try {
//            int i = DBConnect.connect().executeUpdate("INSERT INTO user(username,password,name) VALUE ('" + username + "','" + password + "','" + name + "')");
//            return i == 1;
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
    public String hashPassword(String password) {
        try {
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;

        }
    }


    public boolean checkRegister(String username, String password) {

        System.out.println(encryptPassword(password));
        System.out.println(username);
        int i = JDBIConnect.get().withHandle(h ->
            h.createUpdate("INSERT  INTO user(username,password) VALUES (?,?)")
                    .bind(0,username)
                    .bind(1,encryptPassword(password))
                    .execute()
        );

        return i == 1;


    }

    public static void main(String[] args) {
        UserDAO u = UserDAO.getInstance();
        String pass = "123";
        System.out.println(u.hashPassword(pass));
        System.out.println(u.encryptPassword(pass));
    }
}
