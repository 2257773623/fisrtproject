<%@page contentType="text/html;charset=UTF-8" %>
<%
    //四个域都存储了数据，并且name相同
    session.setAttribute("data","session");
    request.setAttribute("data","request");
    pageContext.setAttribute("data","pageContext");
    application.setAttribute("data","application");
%>

<%--在没有指定范围前提下，EL表达式优先从小范围中取数据--%>
<%--pageContext < request < session < application--%>
${date}

<hr>
<%--在EL表达式中可以指定范围来读取数据--%>
<%--EL表达式中有4个隐含的隐式的范围对象--%>
<%--pageScope  requestScope  sessionScope  applicationScope--%>
<%--指定范围取--%>
${pageScope.data}<br>
${requestScope.data}<br>
${sessionScope.data}<br>
${applicationScope.data}<br>

<%--在实际开发中，因为向某个域中存储数据的时候，name都是不同的，所以，xxxScope  都是可以省略的--%>

