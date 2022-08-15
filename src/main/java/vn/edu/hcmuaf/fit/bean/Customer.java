package vn.edu.hcmuaf.fit.bean;

public class Customer {
    private String maKH;
    private String tenKH;
    private String email;
    private String phone;

    public Customer(String maKH, String tenKH, String email, String phone) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.email = email;
        this.phone = phone;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
