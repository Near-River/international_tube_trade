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

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">

                <%@include file="common/left_list.jsp" %>

            </div>
            <div class="col-md-9">
                <ul class="uk-breadcrumb">
                    <li><span>Location</span></li>
                    <li><a href="${ctx}/home">Home Page</a></li>
                    <li class="uk-active"><span>About Us</span></li>
                </ul>

                <!--about us begin-->
                <div class="mid1">
                    <span class="span1 span2"><i class="uk-icon-home uk-icon-small"></i> About us</span>
                </div>
                <news class="uk-news articlebox">
                    <h2>Kunlun International trade Limited</h2>
                    <p class="introduce">
                        Kunlun International trade Limited is a reliable Manufacturer and Exporter of Titanium Tubes,
                        Bars, Plates. Founded in Suzhou 2015, It is 100km away from Shanghai.
                    </p>
                    <p class="introduce">
                        Kunlun Covers 13 thousand Square meters of it's building are.Total asset values 50 million RMB
                        for the first stage investment, Has introduced a couple of international advanced production
                        lines and test lines, such as Cold Pilger machines, Cold Precision Pilger Machines, Vacuum
                        furnaces, Impact Test, Machanical Properties test, Eddy Current Test, Ultrasonic Test,
                        Hydrostatic Test, Metallurgical Microscope Test and So on.
                    </p>
                    <p class="introduce">
                        Kunlun trade is committed to providing safe and reliable titanium metal for the global
                        industrial equipment with unremitting efforts. Manufacturer have got certificates like DNV, ISO
                        9001:2008, Freedom Adapts An Integrate Production System Which Includes Melting, Titanium
                        Forging, Rolling, Drawing, Fabricating And Testing, Which Enable Us Supply Various Range Of
                        Sizes, Covering All Grades Of CP Titanium And Most Titanium Alloys. Our Main Milling Products
                        Are Titanium Seamless Tubes, Pipes, Rod & Bars, Profiles, Sheets And Nickel Alloy Tubes.
                    </p>
                    <br>
                    <img src="${ctx}/images/co.jpg" style="width:100%"/>
                </news>
                <!--about us end-->
            </div>
        </div>
    </div>

    <hr class="uk-news-divider">

    <%@include file="common/bottom.jsp" %>

</div>
</body>
</html>