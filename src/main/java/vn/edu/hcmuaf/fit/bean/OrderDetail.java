package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

import java.time.LocalDateTime;


public class OrderDetail implements Serializable {
    private int id;
    private int orderId;
    private int allProductId;
    private int quantity;
    private int price;
    private String name;
    private int phone;
    private String country;
    private String address;
    private String district;

    private String note;
    private LocalDateTime updateAt;

    public OrderDetail(int id, int orderId, int allProductId, int quantity, int price, String name, int phone, String country, String address, String district, String note, LocalDateTime updateAt) {
        this.id = id;
        this.orderId = orderId;
        this.allProductId = allProductId;
        this.quantity = quantity;
        this.price = price;
        this.name = name;
        this.phone = phone;
        this.country = country;
        this.address = address;
        this.district = district;
        this.note = note;
        this.updateAt = updateAt;
    }

    public OrderDetail(){

    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getAllProductId() {
        return allProductId;
    }

    public void setAllProductId(int allProductId) {
        this.allProductId = allProductId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", orderId=" + orderId +
                ", allProductId=" + allProductId +
                ", quantity=" + quantity +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", phone=" + phone +
                ", country='" + country + '\'' +
                ", address='" + address + '\'' +
                ", district='" + district + '\'' +
                ", note='" + note + '\'' +
                ", updateAt=" + updateAt +
                '}';
    }
}