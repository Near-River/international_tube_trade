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
    <link rel="stylesheet" type="text/css" href="${ctx}/uikit/css/components/slider.min.css">

    <script src="${ctx}/script/jquery.min.js"></script>
    <script src="${ctx}/uikit/js/uikit.min.js"></script>
    <script src="${ctx}/uikit/js/components/slideshow.min.js"></script>
    <script src="${ctx}/uikit/js/components/slideshow-fx.min.js"></script>
    <script src="${ctx}/uikit/js/components/search.min.js"></script>
    <script src="${ctx}/uikit/js/components/slider.min.js"></script>

    <link href="${ctx}/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.js"></script>

</head>
<body>

<%@include file="common/topNav.jsp" %>

<div class="content">
    <hr class="uk-grid-divider">

    <!--about us begin-->
    <div class="uk-grid uk-container-center uk-grid-width-1-1">
        <div class="mid1">
            <span class="span3"><i>Unity and spirit, pragmatic innovation, excellence, casting quality</i></span>
        </div>
    </div>
    <div class="uk-grid uk-container-center" data-uk-grid-margin style="margin-top:20px;">
        <div class="uk-width-medium-1-4 uk-row-first">
            <img src="${ctx}/images/about.jpg" alt="" height="163" width="176">
        </div>
        <div class="uk-width-medium-3-4">
            <h2>Kunlun International trade Limited</h2>
            <p class="introduce">Kunlun International trade Limited，As one of Chinese leading supplier of Titanium
                Materials, Nickel Alloys , Specialized in Titanium Tubes, Bars, Sheets and Seamless Nickel Alloy Tubes,
                Certified to ISO9001 and DNV ...<br/>
                <span style="text-indent:2em;display:block;">The third party inspection, such as TUV, SGS, LRS, ITS, DNV, BV as well as customers stage-wise inspection will be always welcome.</span>
            </p>
        </div>
    </div>
    <!--about us end-->

    <hr class="uk-grid-divider">

    <!--news begin-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading panelHeading"><i class="uk-icon-newspaper-o uk-icon-small"></i> News
                        Center
                    </div>
                    <!-- List group -->
                    <ul class="list-group com_news_lst">
                        <li class="list-group-item"><span class="news_date">[2015-08-30]</span>
                            <a href="#"
                               title="China circlip pliers industry analysis and market forecast report 2017 --2013">
                                <i class="uk-icon-angle-double-right uk-icon-small"></i> China circlip pliers industry
                                analysis and market forecast report 2017 --2013</a>
                        </li>
                        <li class="list-group-item"><span class="news_date">[2015-08-30]</span>
                            <a href="#" title="China circlip pliers industry market advisory report in 2020 --2015">
                                <i class="uk-icon-angle-double-right uk-icon-small"></i> China circlip pliers industry
                                market advisory report in 2020 --2015</a></li>
                        <li class="list-group-item"><span class="news_date">[2015-10-28]</span>
                            <a href="#" title="Fixture design standards of trainers">
                                <i class="uk-icon-angle-double-right uk-icon-small"></i> Fixture design standards of
                                trainers</a>
                        </li>
                        <li class="list-group-item"><span class="news_date">[2015-10-28]</span>
                            <a href="#" title="Circlip pliers distinction">
                                <i class="uk-icon-angle-double-right uk-icon-small"></i> Circlip pliers distinction</a>
                        </li>
                        <li class="list-group-item"><span class="news_date">[2015-10-28]</span>
                            <a href="#"
                               title="Clamps to press the use of features can be divided into several categories?">
                                <i class="uk-icon-angle-double-right uk-icon-small"></i> Clamps to press the use of
                                features can be divided into several categories?</a></li>
                        <li class="list-group-item"><span class="news_date">[2015-10-28]</span>
                            <a href="#"
                               title="Fixture in the purchase process should pay attention to what the problem?">
                                <i class="uk-icon-angle-double-right uk-icon-small"></i> Fixture in the purchase process
                                should pay attention to what the problem?</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-md-8">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading panelHeading"><i class="uk-icon-navicon uk-icon-small"></i> Industry
                        Introduce
                    </div>
                    <!-- List group -->
                    <ul class="list-group">
                        <li class="list-group-item" style="height:250px;">
                            <ul class="uk-tab uk-tab-left uk-width-medium-1-4 tablist" data-uk-tab>
                                <li id="product_link" class="uk-active"><a href="#" style="color:darkslategray">
                                    <i class="uk-icon-product-hunt uk-icon-small"></i>
                                    Products</a></li>
                                <li id="qualification_link"><a href="#" style="color:darkslategray">
                                    <i class="uk-icon-star uk-icon-small"></i> Qualification</a></li>
                                <li id="equipment_link"><a href="#" style="color:darkslategray">
                                    <i class="uk-icon-steam uk-icon-small"></i> Equipment</a></li>
                            </ul>

                            <div id="product_display">
                                <div class="uk-grid uk-width-medium-3-4 uk-slidenav-position"
                                     data-uk-slider="{autoplay:true, autoplayInterval:2000}">
                                    <div class="uk-slider-container contentbox">
                                        <h3>Product Display<span class="moreproduct"><a href="${ctx}/products">More<i
                                                class="uk-icon-angle-double-right uk-icon-small"></i></a></span>
                                        </h3>
                                        <ul class="uk-grid uk-slider uk-grid-width-medium-1-2" about="">
                                            <%--钛及钛合金管--%>
                                            <li><img src="${ctx}/images/tube/tube_01.jpg" width="200" height="200" alt="">
                            <span class="tubelink"><a class="uk-link" href="${ctx}/products/show/1">Titanium and titanium alloy tube</a></span>
                                            </li>
                                            <li><img src="${ctx}/images/tube/tube_02.jpg" width="200" height="200" alt="">
                            <span class="tubelink"><a class="uk-link" href="${ctx}/products/show/1">Titanium and titanium alloy tube</a></span>
                                            </li>
                                            <li><img src="${ctx}/images/tube/tube_03.jpg" width="200" height="200" alt="">
                            <span class="tubelink"><a class="uk-link" href="${ctx}/products/show/1">Titanium and titanium alloy tube</a></span>
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous"
                                       data-uk-slider-item="previous" style="margin-top:100px"></a>
                                    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next"
                                       data-uk-slider-item="next" style="margin-top:100px"></a>
                                </div>
                            </div>

                            <div id="qualification_display">
                                <div class="uk-grid uk-width-medium-3-4 uk-slidenav-position"
                                     data-uk-slider="{autoplay:true, autoplayInterval:2000}">
                                    <div class="uk-slider-container contentbox qualificationbox">
                                        <h3>Qualification Display<span class="moreproduct"><a href="${ctx}/qualification">More<i
                                                class="uk-icon-angle-double-right uk-icon-small"></i></a></span>
                                        </h3>
                                        <ul class="uk-grid uk-slider uk-grid-width-medium-1-2" about="">
                                            <li><img src="${ctx}/images/qualifiication/001.JPG" width="200" height="200" alt="">
                                            </li>
                                            <li><img src="${ctx}/images/qualifiication/002.JPG" width="200" height="200" alt="">
                                            </li>
                                            <li><img src="${ctx}/images/qualifiication/003.JPG" width="200" height="200" alt="">
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous"
                                       data-uk-slider-item="previous" style="margin-top:110px"></a>
                                    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next"
                                       data-uk-slider-item="next" style="margin-top:110px"></a>
                                </div>
                            </div>

                            <div id="equipment_display">
                                <div class="uk-grid uk-width-medium-3-4 uk-slidenav-position"
                                     data-uk-slider="{autoplay:true, autoplayInterval:2000}">
                                    <div class="uk-slider-container contentbox qualificationbox">
                                        <h3>Equipment Display<span class="moreproduct"><a href="${ctx}/equipment">More<i
                                                class="uk-icon-angle-double-right uk-icon-small"></i></a></span>
                                        </h3>
                                        <ul class="uk-grid uk-slider uk-grid-width-medium-1-2" about="">
                                            <li><img src="${ctx}/images/equipment/001.JPG" width="200" height="200" alt="">
                                            </li>
                                            <li><img src="${ctx}/images/equipment/002.JPG" width="200" height="200" alt="">
                                            </li>
                                            <li><img src="${ctx}/images/equipment/003.JPG" width="200" height="200" alt="">
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous"
                                       data-uk-slider-item="previous" style="margin-top:110px"></a>
                                    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next"
                                       data-uk-slider-item="next" style="margin-top:110px"></a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(function () {
            $('#qualification_display').css('visibility', 'hidden');
            $('#equipment_display').css('visibility', 'hidden');

            $('#product_link').click(function () {
                $('#qualification_display').hide();
                $('#equipment_display').hide();
                $('#product_display').show();

                $('#qualification_display').css('visibility', 'visible');
                $('#equipment_display').css('visibility', 'visible');
            });
            $('#qualification_link').click(function () {
                $('#product_display').hide();
                $('#equipment_display').hide();
                $('#qualification_display').show();

                $('#qualification_display').css('visibility', 'visible');
                $('#equipment_display').css('visibility', 'visible');
            });
            $('#equipment_link').click(function () {
                $('#product_display').hide();
                $('#qualification_display').hide();
                $('#equipment_display').show();

                $('#qualification_display').css('visibility', 'visible');
                $('#equipment_display').css('visibility', 'visible');
            });
        })
    </script>

    <%@include file="common/bottom.jsp" %>

</div>
</body>
</html>