<%@page contentType="text/html;charset=UTF-8"%>

<%
    //向requst作用域中储存username为zhangsan
    request.setAttribute("username","zhangsan");
%>
<%--将request域中的数据取出来，并且输出到浏览器中--%>
    <%=request.getAttribute("username")%>;
<br>
<%--使用EL表达式--%>
${username}