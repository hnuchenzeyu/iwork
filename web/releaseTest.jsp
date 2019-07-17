<%--
  Created by IntelliJ IDEA.
  User: ncuchen
  Date: 7/17/2019
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布福利</title>
</head>
<body>
    <form action="addWelfare" method="post">
        标题：<input type="text" id="title" name="title">
        内容：<input type="text" id="content" name="content">
        <input type="submit" value="提交">
    </form>
</body>
</html>
