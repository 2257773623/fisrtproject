<%@page contentType="text/html;charset=UTF-8" %>
<%--%@page contentType="text/html;charset=UTF-8" isELIgnored="true" %--%>
<%--isELIgnored="true" 表示忽略EL表达式,
    isELIgnored="false" 表示不忽略EL表达式。（这是默认值）--%>
<%
    request.setAttribute("username", "zhangsan");
%>
<%-- isELIgnored="true" 表示忽略JSP中整个页面的所有EL表达式。如果想忽略其中某个，可以使用以下反斜杠。 --%>
\${username}
${username}
${username}