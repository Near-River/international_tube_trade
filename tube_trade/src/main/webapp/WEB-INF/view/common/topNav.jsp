<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<script type="text/javascript">
    $(document).ready(function () {
        $("#menu_nav").find("li a").wrapInner('<span class="out"></span>');
        $("#menu_nav").find("li a").each(function () {
            $('<span class="over">' + $(this).text() + '</span>').appendTo(this);
        });
        $("#menu_nav").find("li a").hover(function () {
            $(".out", this).stop().animate({'top': '48px'}, 200);
            $(".over", this).stop().animate({'top': '0px'}, 200);
        }, function () {
            $(".out", this).stop().animate({'top': '0px'}, 200);
            $(".over", this).stop().animate({'top': '-48px'}, 200);
        });
    });
</script>

<!--top logo begin-->
<div class="top1" style="background: none">
    <div class="top2">
        <h1><a href="javascript:void(0)"><img src="${ctx}/images/logo.png" style="width:480px;"></a></h1>
        <form class="uk-search searchform" data-uk-search action="${ctx}/temp/index.html">
            <input class="uk-search-field searchbox" type="search" placeholder="Search...">
        </form>
    </div>
</div>
<!--top logo end-->


<!--navbar begin-->
<div id="menu_nav" class="menu">
    <ul>
        <li><a href="${ctx}/home" title="Home Page">Home Page</a></li>
        <li><a href="${ctx}/about_us">About</a></li>
        <li><a href="${ctx}/products">Products</a></li>
        <li><a href="${ctx}/news_center">News Center</a></li>
        <li><a href="${ctx}/qualification">Qualification</a></li>
        <li><a href="${ctx}/equipment">Equipment</a></li>
        <li><a href="${ctx}/contact_us">Contact</a></li>
    </ul>
    <div class="cls"></div>
</div>

<!--navbar end-->

<!--slideshow begin-->
<div class="uk-slidenav-position slideshow" data-uk-slideshow="{kenburns:true}">
    <ul class="uk-slideshow" data-uk-slideshow>
        <li><img src="${ctx}/images/index/banner01.png" width="960" height="288"/></li>
        <li><img src="${ctx}/images/index/banner02.jpg" width="960" height="288"/></li>
        <li><img src="${ctx}/images/index/banner03.jpg" width="960" height="288"/></li>
    </ul>
    <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"
       style="color: rgba(255,255,255,0.4)"></a>
    <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"
       style="color: rgba(255,255,255,0.4)"></a>
    <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
        <li data-uk-slideshow-item="0"><a href="javascript:void(0);">Item 1</a></li>
        <li data-uk-slideshow-item="1"><a href="javascript:void(0);">Item 2</a></li>
        <li data-uk-slideshow-item="2"><a href="javascript:void(0);">Item 3</a></li>
    </ul>
</div>
<!--slideshow end-->