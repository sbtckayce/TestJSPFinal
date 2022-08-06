package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class Category implements Serializable {

    private String cid;
    private String menu;
    private String img;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Category(String cid, String menu, String img) {
        this.cid = cid;
        this.menu = menu;
        this.img = img;
    }
    public Category(){

    }

    @Override
    public String toString() {
        return "Category{" +
                "cid='" + cid + '\'' +
                ", menu='" + menu + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
