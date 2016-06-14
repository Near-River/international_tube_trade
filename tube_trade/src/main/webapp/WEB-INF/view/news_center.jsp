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
                    <li class="uk-active"><span>News Center</span></li>
                </ul>

                <!--news center begin-->
                <div class="container-fluid">
                    <div class="row">
                        <div class="panel panel-default panel-info">
                            <div class="mid2">
                                <span class="span1"><i class="uk-icon-newspaper-o uk-icon-small"></i> News Center</span>
                            </div>
                            <table class="uk-table uk-table-hover uk-table-striped newscenter">
                                <tbody>
                                <c:if test="${! empty requestScope.pageBean}">
                                    <c:forEach var="news" items="${requestScope.pageBean.recordList}" varStatus="s">
                                        <tr>
                                            <td>
                                                <span class="news_date">
                                                    [<f:formatDate value="${news.createdDate}" pattern="yyyy-MM-dd"/>]
                                                </span>
                                                <a href="${ctx}/news/show/${news.uuid}" title="${news.title}">
                                                    <i class="uk-icon-file-text-o uk-icon-small"></i> ${news.title}</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${empty requestScope.pageBean}">
                                    没有新闻信息
                                </c:if>
                                </tbody>
                            </table>
                            <!--pagination begin-->
                            <nav class="paginationbox">
                                <ul class="pagination">
                                    <c:if test="${pageBean.currentPage<pageBean.pageCount}">
                                        <li>
                                            <a href="${ctx}/news_center?pageNo=${pageBean.currentPage-1}"
                                               aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:if test="${pageBean.currentPage>=pageBean.pageCount}">
                                        <li>
                                            <a href="javascript:void(0)" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                    </c:if>

                                    <c:forEach begin="${pageBean.startPageIndex}" end="${pageBean.endPageIndex}"
                                               varStatus="s">
                                        <li <c:if test="${pageBean.currentPage == s.current}">class="active"</c:if>>
                                            <a href="${ctx}/news_center?pageNo=${s.current}">${s.current}</a>
                                        </li>
                                    </c:forEach>

                                    <c:if test="${pageBean.currentPage>1}">
                                        <li>
                                            <a href="${ctx}/news_center?pageNo=${pageBean.currentPage+1}"
                                               aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:if test="${pageBean.currentPage<=1}">
                                        <li>
                                            <a href="javascript:void(0)" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </c:if>

                                </ul>
                                <span class="paginationInfo">Page: ${pageBean.currentPage} / ${pageBean.pageCount} &nbsp;|&nbsp; 10 records / page</span>
                            </nav>
                            <!--pagination end-->

                        </div>
                    </div>
                </div>
                <!--news center end-->

            </div>
        </div>
    </div>

    <!--left list end-->

    <hr class="uk-news-divider">

    <%@include file="common/bottom.jsp" %>

</div>
</body>
</html>