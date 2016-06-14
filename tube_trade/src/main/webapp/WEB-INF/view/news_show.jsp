<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Keywords" content="Kunlun International trade Limited">
    <meta name="Keywords" content="张家港昆仑国际管业贸易有限公司">
    <meta name="Description"
          content="The company specializes in the production of seamless tubes of titanium, Monel tubes, seamless tubes, zirconium, tantalum and niobium seamless pipe and other non-ferrous metal pipe industry.">
    <title>Kunlun International trade Limited</title>

    <link rel="stylesheet" type="text/css" href="${ctx}/css/nav_bar.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/index_content.css">

    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/uikit.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/components/slidenav.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/components/slidenav.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/components/slideshow.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/components/dotnav.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/components/search.min.css">

    <script src="${ctx}/script/jquery.min.js"></script>
    <script src="${ctx}/uikit/js/uikit.min.js"></script>
    <script src="${ctx}/uikit/js/components/slideshow.min.js"></script>
    <script src="${ctx}/uikit/js/components/slideshow-fx.min.js"></script>
    <script src="${ctx}/uikit/js/components/search.min.js"></script>


    <link rel="stylesheet" type="text/css" href="${ctx}/css/panel_list.css">
    <link href="${ctx}/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.js"></script>

    <link rel="stylesheet" type="text/css" href="${ctx}/css/news.css">

</head>
<body>

<%@include file="common/topNav.jsp" %>

<div class="content">
    <hr class="uk-grid-divider">

    <!--left list begin-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">

                <%@include file="common/left_list.jsp" %>

            </div>
            <div class="col-md-9">
                <ul class="uk-breadcrumb">
                    <li><span>Location</span></li>
                    <li><a href="${ctx}/home">Home Page</a></li>
                    <li><a href="${ctx}/news_center">News Center</a></li>
                    <li class="uk-active"><span>${news.title}</span></li>
                </ul>

                <!--news show begin-->
                <div class="mid1">
                    <span class="span1 span2"><i class="uk-icon-newspaper-o uk-icon-small"></i> News Center</span>
                </div>
                <news class="uk-news articlebox">
                    <h3>${news.title}</h3>
                    <p class="uk-news-meta articlemeta">published on
                        <f:formatDate type="date" value="${news.createdDate}" pattern="MM/dd/yyyy"/></p>
                    <span style="color:darkslategray">${news.content}</span>
                </news>
                <!--news show end-->
            </div>
        </div>
    </div>

    <!--left list end-->

    <hr class="uk-news-divider">

    <%@include file="common/bottom.jsp" %>

</div>
</body>
</html>