<%@page contentType="text/html;charset=utf-8" %>

<%--引入标签库--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--核心标签的if标签--%>
<%--test属性是必须的，test属性支持EL表达式，test属性只能是Boolean类型--%>
<c:if test="${empty param.username}">
    <h1>用户不能为空</h1>
</c:if>

<%--没有else标签的话，可以搞两个if出来。--%>
<%--if标签还有var属性，不是必须的。--%>
<%--if标签还有scope属性，用来指定var的存储域。也不是必须的。--%>
<%--scope有四个值可选：page(pageContext域)、request(request域)、session(session域)、application(application域)--%>
<%--将var中的v存储到request域。--%>
<c:if test="${not empty param.username}" var="v" scope="request">
    <h1>欢迎你${param.username}</h1>
</c:if>

<%--通过EL表达式得request域当中的v取出--%>
<%--v变量存储的是test属性的值--%>
<hr>