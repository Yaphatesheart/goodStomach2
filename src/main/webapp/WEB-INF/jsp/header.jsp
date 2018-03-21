<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Kind" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Nav Section -->
    
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">切换</span> 菜单 <i class="fa fa-bars"></i>
                </button>
                
                <!-- Logo Here -->
                <a class="navbar-brand page-scroll" href="indexHome.action"><p>凯戈餐厅</p></a>
            </div>            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<li class="active">
                        <a href="indexHome.action">主页</a>
                    </li>
                    <li>
                        <a href="indexAbout.action">关于</a>
                    </li>
                    
                    <c:forEach var="c" items="${kindList}">
                    <li>
                        <a href="foodList.action?id=${c.id}">${c.name}</a>
                    </li>
                    </c:forEach>
                    
                    <li>
                        <a href="shopCar.action">购物车</a>
                    </li>
                </ul>
            </div>
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
