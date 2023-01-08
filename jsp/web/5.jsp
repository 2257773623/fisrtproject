<%@ page import="com.javaweb.jsp.User" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%
    //创建user对象
    User user=new User();
    user.setUsername("zhangsan");

    //存储到request域当中
    request.setAttribute("fasa",user);

    //向request域中储存数据
    request.setAttribute("abc.def","hello jsp el");
%>

<%--使用EL表达式取出，并且输出到浏览器--%>
<%--从域中取User--%>
${fasa}<br>

<%--取user的username--%>
${fasa.username}<br>

<%--取user的username，注意[]当中的需要添加双引号--%>
<%--[]里面没有加双引号的话，会将其看做变量，如果是带有双引号，"username"，则去找user对象的username属性--%>
${fasa["username"]}<br>

<%--将数据取出，并输出到浏览器--%>
${requestScope.abc.def}
之前是空白，
${requestScope["abc.def"]}