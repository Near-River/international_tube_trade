<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            height: 40px;
            white-space: nowrap;
        }
        .product_image{
            width:80px;
            height:80px;
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
                <a href="${ctx}/manage">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">产品查询</span>
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
                            <th width="20%">产品名称</th>
                            <th width="20%">产品类型</th>
                            <th width="30%">产品简介</th>
                            <th width="20%">产品图片</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${! empty requestScope.pageBean}">
                            <c:forEach var="product" items="${requestScope.pageBean.recordList}" varStatus="s">
                                <tr>
                                    <td>${s.count}</td>
                                    <td>${product.pname}</td>
                                    <td>${product.pcategory}</td>
                                    <td class="news_content">${product.pdesc}</td>
                                    <td><img src="${ctx}${product.pimage}" class="product_image"/></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty requestScope.pageBean}">
                            没有产品信息
                        </c:if>
                        </tbody>
                    </table>

                    <div class="list-page">
                        <a href="${ctx}/manage/product/search/1" class="btn"> << </a>
                        <c:if test="${pageBean.currentPage<pageBean.pageCount}">
                            <a href="${ctx}/manage/product/search/${pageBean.currentPage-1}" class="btn">上一页</a>
                        </c:if>
                        <c:if test="${pageBean.currentPage>=pageBean.pageCount}">
                            <a href="javascript:void(0)" class="btn">上一页</a>
                        </c:if>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <c:if test="${pageBean.currentPage>1}">
                            <a href="${ctx}/manage/product/search/${pageBean.currentPage+1}" class="btn">下一页</a>
                        </c:if>
                        <c:if test="${pageBean.currentPage<=1}">
                            <a href="javascript:void(0)" class="btn">下一页</a>
                        </c:if>
                        <a href="${ctx}/manage/product/search/1" class="btn"> >> </a>
                        &nbsp;&nbsp;&nbsp;&nbsp; ${pageBean.currentPage} / ${pageBean.pageCount} 页
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>