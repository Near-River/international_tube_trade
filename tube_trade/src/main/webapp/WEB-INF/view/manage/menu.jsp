<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<div class="sidebar-wrap">
    <div class="sidebar-title">
        <h1>菜单</h1>
    </div>
    <div class="sidebar-content">
        <ul class="sidebar-list">
            <li>
                <a href="#"><i class="icon-font">&#xe003;</i>产品中心</a>
                <ul class="sub-menu">
                    <li><a href="${ctx}/manage/product"><i class="icon-font">&#xe008;</i>分类管理</a></li>
                    <li><a href="${ctx}/manage/product/add"><i class="icon-font">&#xe005;</i>产品发布</a></li>
                    <li><a href="${ctx}/manage/product/search"><i class="icon-font">&#xe006;</i>产品查询</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-font">&#xe003;</i>新闻中心</a>
                <ul class="sub-menu">
                    <li><a href="${ctx}/manage/news/1"><i class="icon-font">&#xe008;</i>分类管理</a></li>
                    <li><a href="${ctx}/manage/news/add"><i class="icon-font">&#xe005;</i>新闻发布</a></li>
                    <li><a href="${ctx}/manage/news/search/1"><i class="icon-font">&#xe006;</i>新闻查询</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>