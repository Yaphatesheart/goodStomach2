<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kai.bean.Food"%>
<%@ page import="com.kai.bean.ShoppingCar"%>
<%@ page import="com.kai.bean.Line"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>欢迎来到我的订单界面</title>

    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
       
    <link href="vendor/bootstrap-datepicker/css/datepicker.min.css" rel="stylesheet">
           
    <script src="js/ie-emulation-modes-warning.js"></script>

	
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="vendor/prettyPhoto/prettyPhoto.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css" />
  
	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.form.js"></script>
     
  </head>

  <body id="page-top" class="ourmenu-page">
    
    <jsp:include page="header.jsp"></jsp:include>
        
    
    <!-- Page Title Header -->
    
	<header class="inner-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-mg-12">
                    <img src="images/page-banner.jpg" class="img-responsive" alt="Page Title Bg">  <!-- Page Title Image -->
                    <div class="page-title">
                    	<p>欢迎享受我们的食物</p>
                        <h1>我们的历史订单界面</h1>
                    </div>        
                </div>
            </div>
        </div>
    </header>
    
	<!-- heading and description -->
	<br><br>
	<div class="line">
	  <div class="margin">
		<div class="fullwidth">
		  <h1 class="text-center">订单界面</h1>
		  <hr class="break-small break-center">
		  
		</div>
	  </div>
	</div>
    <!-- ShoppingCar Section -->
    
    <div class="gwc" style=" margin:auto;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td3">订单ID</td>
			<td class="tb1_td3">餐品名</td>
			<td class="tb1_td3">餐品单价</td>
			<td class="tb1_td3">数量</td>
			<td class="tb1_td6">订单时间</td>
		</tr>
	</table>
		   
	
	<c:forEach var="s" items="${userLineList }">
	<table cellpadding="0" cellspacing="0" class="gwc_tb2">
		<tr>
			<!-- <td class="tb2_td2"></td> -->
			<td class="tb2_td2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${s.id}</td>
			<td class="tb2_td3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			${s.name }</td>
			<td class="tb1_td3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${s.price}</td>
			<td class="tb1_td5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input id="text_box1" name="" type="text" value="${s.num}" style=" width:30px; text-align:center; border:1px solid #ccc;"/>
			</td>
			<td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;">${s.orderDate}</label></td>
		</tr>
	</table>
	</c:forEach>

	</div>
    <br><br>


    <!-- Footer Section -->
    
    <jsp:include page="footer.jsp"></jsp:include>
    
    
   
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    
    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Bootstrap Datepicker- JavaScript -->
    <script src="vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    	
    <!-- Plugin JavaScript -->
    <script src="vendor/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/theme.js"></script>
    
    <!-- custom JavaScript -->
    <script src="js/custom.js"></script>
    
    <!-- prettyPhoto -->
    <script src="vendor/prettyPhoto/jquery.prettyPhoto.js"></script>
  </body>
</html>

