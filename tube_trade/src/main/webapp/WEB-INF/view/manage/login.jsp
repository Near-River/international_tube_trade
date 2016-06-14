<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎登录后台管理系统</title>
    <link href="${ctx}/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="main-login">
    <div class="login-content">
        <h2>用户登录</h2>
        <form action="${ctx}/manage/login" method="post" id="login-form" name="login-form">
            <div class="login-info">
                <span class="user">&nbsp;</span>
                <input name="username" id="username" type="text" class="login-input" placeholder="User"/>
            </div>
            <div class="login-info">
                <span class="pwd">&nbsp;</span>
                <input name="password" id="password" type="password" class="login-input" placeholder="Password"/>
            </div>
            <div class="login-oper">
                <input style="margin:1px 10px 0 2px; float:left;" name="rememberMe" type="checkbox" checked="checked"/>
                <span>记住密码</span>
            </div>
            <div class="login-oper">
                <input type="submit" value="登 录" class="login-btn"/>
                <input type="reset" value="重 置" class="login-reset"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>
