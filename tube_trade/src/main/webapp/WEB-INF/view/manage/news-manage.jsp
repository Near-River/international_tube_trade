<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/main.css"/>
    <script type="text/javascript" src="${ctx}/manage/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${ctx}/script/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/script/common.js"></script>
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
        <span class="topbar-info"><a href="${ctx}/manage/logout">退出</a></span>
        <span class="topbar-info">欢迎登录 <font color="red">${sessionScope.globalUser.username}</font></span>
    </div>
</div>
<div class="container clearfix">

    <%@include file="menu.jsp" %>

    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${ctx}/manage">首页</a><span
                    class="crumb-step">&gt;</span><span class="crumb-name">分类管理</span>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <thead>
                        <tr>
                            <th class="tc" width="5%"></th>
                            <th>标签ID</th>
                            <th>新闻名称</th>
                            <th>新闻内容</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <script type="text/javascript">
                            function delete_news(news_id) {
                                if (news_id == '') {
                                    return false;
                                }
                                if (!window.confirm('确认要删除该新闻吗？')) {
                                    return false;
                                }
                                console.info('enter');
                                $('#a_' + news_id).attr('href', '${ctx}/manage/news/delete/' + news_id);
                                <%--${ctx}/manage/news/delete/${news.uuid}--%>
                            }
                        </script>
                        <c:if test="${! empty requestScope.pageBean}">
                            <c:forEach var="news" items="${requestScope.pageBean.recordList}" varStatus="s">
                                <tr>
                                    <td class="tc"><input name="id[]" type="checkbox"></td>
                                    <td>${s.count}</td>
                                    <td>${news.title}</td>
                                    <td class="news_content">${news.content}</td>
                                    <td>
                                        <a class="link-update" href="javascript:void(0)"
                                           onclick="openWindowWithName('${ctx}/manage/news/edit/${news.uuid}', '1200', '600', '编辑新闻')">修改</a>
                                        <a class="link-del" href="javascript:void(0)"
                                           onclick="delete_news('${news.uuid}')" id="a_${news.uuid}">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty requestScope.pageBean.recordList}">
                            没有新闻信息
                        </c:if>
                        </tbody>
                    </table>
                    <div class="list-page">
                        <a href="${ctx}/manage/news/1" class="btn"> << </a>
                        <c:if test="${pageBean.currentPage<pageBean.pageCount}">
                            <a href="${ctx}/manage/news/${pageBean.currentPage-1}" class="btn">上一页</a>
                        </c:if>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <c:if test="${pageBean.currentPage>1}">
                            <a href="${ctx}/manage/news/${pageBean.currentPage+1}" class="btn">下一页</a>
                        </c:if>
                        <a href="${ctx}/manage/news/1" class="btn"> >> </a>
                        &nbsp;&nbsp;&nbsp;&nbsp; ${pageBean.currentPage} / ${pageBean.pageCount}
                        页
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>