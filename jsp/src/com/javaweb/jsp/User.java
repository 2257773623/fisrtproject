package com.javaweb.jsp;

public class User {
    private String Username;
    private String password;
    private int age;

    @Override
    public String toString() {
        return "User{" +
                "Username='" + Username + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                '}';
    }

    public User() {
    }

    public User(String Username, String password, int age) {
        this.Username = Username;
        this.password = password;
        this.age = age;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}