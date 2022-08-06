package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class AllProduct implements Serializable {
    private int id;
    private String name;
    private String decription;
    private String compare1;
    private String compare2;

    private int oldPrice;
    private int newPrice;
    private double percent;
    private int quantity;
    private String img;
    private String cid;
    private String text;
    private int sid;
    private int sellQuantity;
    private String categoryProduct;


    public AllProduct() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public String getCompare1() {
        return compare1;
    }

    public void setCompare1(String compare1) {
        this.compare1 = compare1;
    }

    public String getCompare2() {
        return compare2;
    }

    public void setCompare2(String compare2) {
        this.compare2 = compare2;
    }

    public int getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(int oldPrice) {
        this.oldPrice = oldPrice;
    }

    public int getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(int newPrice) {
        this.newPrice = newPrice;
    }

    public double getPercent() {
        return percent;
    }

    public void setPercent(double percent) {
        this.percent = percent;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getSellQuantity() {
        return sellQuantity;
    }

    public void setSellQuantity(int sellQuantity) {
        this.sellQuantity = sellQuantity;
    }

    public String getCategoryProduct() {
        return categoryProduct;
    }

    public void setCategoryProduct(String categoryProduct) {
        this.categoryProduct = categoryProduct;
    }

    public AllProduct(int id, String name, String decription, String compare1, String compare2, int oldPrice, int newPrice, double percent, int quantity, String img, String cid, String text, int sid, int sellQuantity, String categoryProduct) {
        this.id = id;
        this.name = name;
        this.decription = decription;
        this.compare1 = compare1;
        this.compare2 = compare2;
        this.oldPrice = oldPrice;
        this.newPrice = newPrice;
        this.percent = percent;
        this.quantity = quantity;
        this.img = img;
        this.cid = cid;
        this.text = text;
        this.sid = sid;
        this.sellQuantity = sellQuantity;
        this.categoryProduct = categoryProduct;
    }

    @Override
    public String toString() {
        return "AllProduct{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", decription='" + decription + '\'' +
                ", compare1='" + compare1 + '\'' +
                ", compare2='" + compare2 + '\'' +
                ", oldPrice=" + oldPrice +
                ", newPrice=" + newPrice +
                ", percent=" + percent +
                ", quantity=" + quantity +
                ", img='" + img + '\'' +
                ", cid='" + cid + '\'' +
                ", text='" + text + '\'' +
                ", sid=" + sid +
                ", sellQuantity=" + sellQuantity +
                ", categoryProduct='" + categoryProduct + '\'' +
                '}';
    }

    public double getTotalMoney() {
        int quantity = this.quantity;
        int newPrice = this.newPrice;
        return quantity * newPrice;
    }

  
}
