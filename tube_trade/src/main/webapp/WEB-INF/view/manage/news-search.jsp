<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员中心</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/main.css"/>
    <script type="text/javascript" src="${ctx}/manage/js/libs/modernizr.min.js"></script>

    <style type="text/css">
        .news_content {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 500px;
        }
    </style>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo">管理员中心</h1>
        </div>
        <span class="topbar-info"><a href="#">退出</a></span>
        <span class="topbar-info">欢迎登录 <font color="red">${sessionScope.globalUser.username}</font></span>
    </div>
</div>
<div class="container clearfix">

    <%@include file="menu.jsp" %>

    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i>
                <a href="${ctx}/manage">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">新闻查询</span>
            </div>
        </div>

        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <thead>
                        <tr>
                            <th>标签ID</th>
                            <th>新闻名称</th>
                            <th>新闻内容</th>
                            <th>发布时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${! empty requestScope.pageBean}">
                            <c:forEach var="news" items="${requestScope.pageBean.recordList}" varStatus="s">
                                <tr>
                                    <td>${s.count}</td>
                                    <td>${news.title}</td>
                                    <td class="news_content">${news.content}</td>
                                    <td><f:formatDate value="${news.createdDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty requestScope.pageBean}">
                            没有新闻信息
                        </c:if>
                        </tbody>
                    </table>

                    <div class="list-page">
                        <a href="${ctx}/manage/news/search/1" class="btn"> << </a>
                        <c:if test="${pageBean.currentPage<pageBean.pageCount}">
                            <a href="${ctx}/manage/news/search/${pageBean.currentPage-1}" class="btn">上一页</a>
                        </c:if>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <c:if test="${pageBean.currentPage>1}">
                            <a href="${ctx}/manage/news/search/${pageBean.currentPage+1}" class="btn">下一页</a>
                        </c:if>
                        <a href="${ctx}/manage/news/search/1" class="btn"> >> </a>
                        &nbsp;&nbsp;&nbsp;&nbsp; ${pageBean.currentPage} / ${pageBean.pageCount} 页
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>