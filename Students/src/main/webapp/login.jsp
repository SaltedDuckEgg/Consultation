<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>班级人员管理系统</h1>
    <form action="<%=path%>/LoginServlet" method="post">
        登录名:<input name="logname" type="text"><br>
        密码:<input name="pwd" type="password"><br>
        <input type="submit" value="登陆"> <input type="reset" value="重置">
    </form>
</center>
</body>
</html>
