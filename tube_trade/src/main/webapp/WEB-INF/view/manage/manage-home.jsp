<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/main.css"/>
    <script type="text/javascript" src="${ctx}/manage/js/libs/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo">管理员中心</h1>
        </div>
        <span class="topbar-info"><a href="${ctx}/manage/logout">退出</a></span>
        <span class="topbar-info">欢迎登录 <font color="red">Admin</font></span>
    </div>
</div>
<div class="container clearfix">

    <%@include file="menu.jsp"%>

    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${ctx}/manage">首页</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>