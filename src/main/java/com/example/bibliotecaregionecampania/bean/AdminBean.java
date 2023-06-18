package com.example.bibliotecaregionecampania.bean;

public class AdminBean {

    private String username;
    private String password;

    public AdminBean(){

    }

    public AdminBean(String username, String password) {
        this.username= username;
        this.password= password;
    }

    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }
    public void setUsername(String username) {
        this.username=username;
    }
    public void setPassword(String password) {
        this.password=password;
    }

    @Override
    public String toString() {
        return "AdminBean{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}



