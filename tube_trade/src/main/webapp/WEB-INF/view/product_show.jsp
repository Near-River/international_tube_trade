<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li><a href="${ctx}/products">Products</a></li>
                    <li class="uk-active"><span>   </span></li>
                </ul>
                <!--products show begin-->
                <div class="mid1">
                    <span class="span1 span2"><i class="uk-icon-product-hunt uk-icon-small"></i>
                     <c:if test="${requestScope.type == 1}">
                         Titanium and titanium alloy tubes
                     </c:if>
                    <c:if test="${requestScope.type == 2}">
                        Nickel and nickel-copper alloy tubes
                    </c:if>
                    <c:if test="${requestScope.type == 3}">
                        Zirconium and zirconium alloy tubes
                    </c:if>
                    </span>
                </div>
                <div id="products_show">
                    <%--钛及钛合金管--%>
                    <c:if test="${requestScope.type == 1}">
                        <img src="${ctx}/images/tube/display_01.png" />
                    </c:if>

                    <%--镍及镍铜合金管--%>
                    <c:if test="${requestScope.type == 2}">
                        <img src="${ctx}/images/tube/display_02.png" />
                    </c:if>

                    <%--锆及锆合金管--%>
                    <c:if test="${requestScope.type == 3}">
                        <img src="${ctx}/images/tube/display_03.png" />
                    </c:if>
                </div>

            </div>
            <!--products show end-->
        </div>
    </div>

    <!--left list end-->

    <hr class="uk-news-divider">

    <%@include file="common/bottom.jsp" %>

</div>
</body>
</html>