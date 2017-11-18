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
<body>
<center>
    <h2>欢迎来到考勤系统</h2>
    <form action="/ClassesServlet?action=list" method="post">
考勤人员查询:<select name="id">
    <option value ="0">请选择班级</option>
    <c:forEach items="${list}" var="item">
    <option value ="${item.classesid}">${item.classesname}</option>
    </c:forEach>
</select>
        <input type="submit" value="查询">
    </form>
</center>
</body>
</html>
