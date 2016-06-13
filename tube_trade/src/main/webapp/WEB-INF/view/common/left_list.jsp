<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>

<!--left list begin-->
<div class="panel panel-default panel-primary list_heading">
    <!-- Default panel contents -->
    <div class="panel-heading">Product Category</div>
    <!-- List group -->
    <ul class="list-group">
        <!--
        钛及钛合金管
        镍及镍铜合金管
        锆及锆合金管
        -->
        <li class="list-group-item list-group-item-info">
            <a href="#">Titanium and titanium alloy tube</a>
        </li>
        <li class="list-group-item list-group-item-info">
            <a href="#">Nickel and nickel-copper alloy tube</a>
        </li>
        <li class="list-group-item list-group-item-info">
            <a href="#">Zirconium and zirconium alloy tube</a>
        </li>
        <li class="list-group-item contactImg" style="padding: 1px;">
            <img src="${ctx}/images/contact.jpg"/>
        </li>
        <li class="list-group-item list-group-item-info contactUs">
            <a href="#">Contact Us</a> |
            <a href="#">联系我们</a>
        </li>
    </ul>
</div>

<table class="uk-table contact_table">
    <tbody>
    <tr>
        <td colspan="2"><strong>Kunlun International trade Limited (Export Department)</strong></td>
    </tr>
    <tr>
        <td><strong>Tel: </strong></td>
        <td>
            <mark>+86-151-5158-4165</mark>
        </td>
    </tr>
    <tr>
        <td><strong>Fax: </strong></td>
        <td>
            <mark>0512-58489880</mark>
        </td>
    </tr>
    <tr>
        <td><strong>E-mail: </strong></td>
        <td>
            <mark>XXX@XXXX.com</mark>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <strong>Address: </strong>
            <span style="margin-left: 10px;">Developing Zone, FengHuang Town, Zhangjiagang City,Jiangwu,China 215600</span>
        </td>
    </tr>
    </tbody>
</table>
<!--left list end-->