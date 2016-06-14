<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/manage/css/main.css"/>
    <script type="text/javascript" src="${ctx}/manage/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${ctx}/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="${ctx}/script/jquery.min.js"></script>
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
        <script type="text/javascript">
            editor = null;
            window.onload = function () {
                editor = CKEDITOR.replace(
                        'content',
                        {
                            uiColor: '#f5f5f5',
                            width: 980,
                            height: 420,
                            on: {
                                instanceReady: function (ev) {
                                    this.dataProcessor.writer.setRules('p', {
                                        indent: false,
                                        breakBeforeOpen: false,   //<p>之前不加换行
                                        breakAfterOpen: false,    //<p>之后不加换行
                                        breakBeforeClose: false,  //</p>之前不加换行
                                        breakAfterClose: false    //</p>之后不加换行
                                    });
                                }
                            },
                            toolbar: [
                                //加粗     斜体，     下划线      穿过线      下标字        上标字
                                ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'],
                                //数字列表          实体列表            减小缩进    增大缩进
                                ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'],
                                //左对齐             居中对齐          右对齐          两端对齐
                                ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
                                //超链接 取消超链接 锚点
                                ['Link', 'Unlink', 'Anchor'],
                                //图片   flash    表格       水平线            表情       特殊字符        分页符
                                ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'],
                                //样式       格式      字体    字体大小
                                ['Styles', 'Format', 'Font', 'FontSize'],
                                //文本颜色     背景颜色
                                ['TextColor', 'BGColor'],
                                //全屏           显示区块
                                ['Maximize', 'ShowBlocks', '-']
                            ]
                        }
                );

                $(function () {
                    $('#deploy').click(function () {
                        var title = $('#title').val();
                        console.info(title);
                        if (title == '' || content == '') {
                            alert('新闻标题不能为空.');
                            return false;
                        }
                        $('#myform').submit();
                    })
                })
            };
        </script>
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${ctx}/manage">首页</a><span class="crumb-step">&gt;</span><span>新闻发布</span>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="${ctx}/manage/news/save" method="post" id="myform" name="myform"
                      enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        <tr>
                            <th><i class="require-red">*</i>新闻标题：</th>
                            <td>
                                <input class="common-text required" id="title" name="title" size="50" type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>新闻内容：</th>
                            <td><textarea name="content" id="content" cols="30"></textarea></td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                                <input class="btn btn-primary btn6 mr10" value="发布" type="button" id="deploy">
                                <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>