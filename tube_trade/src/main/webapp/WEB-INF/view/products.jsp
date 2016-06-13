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

    <script src="${ctx}/uikit/js/components/lightbox.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/products_show.css">

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
                    <li class="uk-active"><span>Products</span></li>
                </ul>

                <!--products show begin-->
                <div id="productsbox">
                    <div class="uk-grid uk-container-center uk-grid-width-1-3" data-uk-grid-margin>
                        <div>
                            <div class="uk-panel uk-panel-box uk-block-muted uk-animation-hover uk-animation-scale tubebox">
                                <div class="uk-panel-teaser">
                                    <a href="${ctx}/images/tube/tube_01.jpg" data-uk-lightbox="{group:'group1'}">
                                        <img src="${ctx}/images/tube/tube_01.jpg" class="gallery" alt="">
                                    </a>
                                </div>
                                <a class="uk-link" href="#">Titanium and titanium alloy tube</a>
                            </div>
                        </div>
                        <div>
                            <div class="uk-panel uk-panel-box uk-block-muted uk-animation-hover uk-animation-scale tubebox">
                                <div class="uk-panel-teaser">
                                    <a href="${ctx}/images/tube/tube_02.jpg" data-lightbox-type="image"
                                       data-uk-lightbox="{group:'group1'}">
                                        <img src="${ctx}/images/tube/tube_02.jpg" class="gallery" alt="">
                                    </a>
                                </div>
                                <a class="uk-link" href="#">Titanium and titanium alloy tube</a>
                            </div>
                        </div>
                        <div>
                            <div class="uk-panel uk-panel-box uk-block-muted uk-animation-hover uk-animation-scale tubebox">
                                <div class="uk-panel-teaser">
                                    <a href="${ctx}/images/tube/tube_03.jpg" data-lightbox-type="image"
                                       data-uk-lightbox="{group:'group1'}">
                                        <img src="${ctx}/images/tube/tube_03.jpg" class="gallery" alt="">
                                    </a>
                                </div>
                                <a class="uk-link" href="#">Titanium and titanium alloy tube</a>
                            </div>
                        </div>
                    </div>

                    <div class="uk-grid uk-container-center uk-grid-width-1-3" data-uk-grid-margin>
                        <div>
                            <div class="uk-panel uk-panel-box uk-block-muted uk-animation-hover uk-animation-scale tubebox">
                                <div class="uk-panel-teaser">
                                    <a href="${ctx}/images/tube/tube_04.jpg" data-lightbox-type="image"
                                       data-uk-lightbox="{group:'group1'}">
                                        <img src="${ctx}/images/tube/tube_04.jpg" class="gallery" alt="">
                                    </a>
                                </div>
                                <a class="uk-link" href="#">Titanium and titanium alloy tube</a>
                            </div>
                        </div>
                        <div>
                            <div class="uk-panel uk-panel-box uk-block-muted uk-animation-hover uk-animation-scale tubebox">
                                <div class="uk-panel-teaser">
                                    <a href="${ctx}/images/tube/tube_05.jpg" data-lightbox-type="image"
                                       data-uk-lightbox="{group:'group1'}">
                                        <img src="${ctx}/images/tube/tube_05.jpg" class="gallery" alt="">
                                    </a>
                                </div>
                                <a class="uk-link" href="#">Titanium and titanium alloy tube</a>
                            </div>
                        </div>
                        <div>
                            <div class="uk-panel uk-panel-box uk-block-muted uk-animation-hover uk-animation-scale tubebox">
                                <div class="uk-panel-teaser">
                                    <a href="${ctx}/images/tube/tube_06.jpg" data-lightbox-type="image"
                                       data-uk-lightbox="{group:'group1'}">
                                        <img src="${ctx}/images/tube/tube_06.jpg" class="gallery" alt="">
                                    </a>
                                </div>
                                <a class="uk-link" href="#">Titanium and titanium alloy tube</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--products show end-->

                <!--pagination begin-->
                <nav class="paginationbox">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                    <span class="paginationInfo">Page: 1 / 1 &nbsp;|&nbsp; 6 records / page</span>
                </nav>
                <!--pagination end-->

            </div>
        </div>
    </div>

    <!--left list end-->

    <hr class="uk-news-divider">

    <%@include file="common/bottom.jsp" %>

</div>
</body>
</html>