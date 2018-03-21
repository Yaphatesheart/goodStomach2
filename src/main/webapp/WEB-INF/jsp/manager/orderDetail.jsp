<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Line" %>
<%@page import="com.kai.bean.PageBean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript"  src="theme/1/js/base.js"></script>

<div class="crumb-wrap">
    <div class="crumb-list"><i class="icon-font"></i>首页<span class="crumb-step">&gt;</span><span class="crumb-name">订单管理</span></div>
</div>
<div class="search-wrap">
    <div class="search-content">
        
    </div>
</div>
<div class="result-wrap">
    <form name="myform" id="myform" method="post">
        <div class="result-title">
            <div class="result-list">
       			<i class="icon-font"></i>欢迎来到订单详细界面
            </div>
        </div>
        <div class="result-content">
            <table class="result-tab" width="100%">
                <tr>
                    <th>详细ID</th>
                    <th>餐品名</th>
                    <th>餐品单价</th>
                    <th>数量</th>
                    <th>订单时间</th>
                </tr>
                
                <c:forEach var="c" items="${lineList}">
                <tr>
                    <td>${c.id }</td>  <!--标签ID-->
                    <td>${c.name }</td> <!--标签名称-->
                    <td>${c.price }</td>
                    <td>${c.num }</td>
                    <td>${c.orderDate }</td>
                   
                </tr>
                </c:forEach>
            </table>
            <div class="list-page"> 
            	
            </div>
        </div>
    </form>
</div>
