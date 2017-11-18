<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<center>
    <h2>出勤操作</h2>
    <form action="/ClassesServlet?action=add" method="post">
    <table>
        <tr>
            <td>学员姓名</td>
        </tr>
        <c:forEach items="${stulist}" var="stu">
        <tr>
            <td>${stu.studentname}</td>
            <td>
                <c:forEach var="att" items="${attlist}">
                <input name="${stu.studentid}" type="radio" value="${att.attendanceid}"/>${att.attendancename}
            </c:forEach><input type="hidden" name="id" value="${id}"></td>
        </tr>
        </c:forEach>
    </table>
        <input type="submit" value="提交">
    </form>
</center>
</head>
<body>

</body>
</html>
