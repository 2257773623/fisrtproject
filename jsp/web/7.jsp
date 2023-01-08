<%@ page import="com.javaweb.jsp.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%
    //数组对象
    String[] username={"zhangsan","lisi","wangwu"};

    //向域中存储数组
    request.setAttribute("nameArray",username);

    User u1=new User();
    u1.setUsername("zhangsan");

    User u2=new User();
    u2.setUsername("lisi");

    User[] users={u1,u2};
    request.setAttribute("userArray",users);

    List<String> list=new ArrayList<>();
    list.add("abc");
    list.add("det");

    request.setAttribute("myList",list);

    Set<String> set=new HashSet<>();
    set.add("a");
    set.add("b");

    request.setAttribute("set",set);
%>
<%--取出set集合--%>
set集合：${set}
<%--无法获取,${set[0]},${set[1]}--%>


<%--取出list集合--%>
<%--list集合也是通过下标方法取数据的--%>
list集合：${myList}
${myList[0]}
${myList[1]}
<hr>

<%--取出数组中第二个用户的用户名--%>
${userArray[1].username}
<hr>

<%--使用EL表达式取出数组的元素--%>
数组元素：${nameArray}
${nameArray[0]}
${nameArray[1]}
${nameArray[2]}

<%--取不出数据，在浏览器上直接显示的就是空白，不会出现数据下表越界--%>
${nameArray[100]}