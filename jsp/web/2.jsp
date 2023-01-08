<%@ page import="com.javaweb.jsp.User" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%
    //创建user对象
    User user=new User();
    user.setName("jsp");
    user.setPassword("123");
    user.setAge(20);
    //将user对象储存到request域中，
    request.setAttribute("userobj",user);
%>

<%--使用EL表达式，从request域中，取出user对象，并将其输入到浏览器中--%>
<%--1.EL表达式--%>