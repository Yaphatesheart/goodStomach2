<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Kind" %>
<%@page import="com.kai.bean.Food" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myresponsee.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <title>欢迎来到点餐界面</title>

    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
       
    <link href="vendor/bootstrap-datepicker/css/datepicker.min.css" rel="stylesheet">
           
    <script src="js/ie-emulation-modes-warning.js"></script>

	
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="vendor/prettyPhoto/prettyPhoto.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">

   
     
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
                    	<p>品尝美味的食物</p>
                        <h1>我们的菜单</h1>
                    </div>        
                </div>
            </div>
        </div>
    </header>
    
    
    <!-- main Section -->
    
    <div class="section">
	
    <!-- products -->
	<!-- <div class="line">
		<div class="margin"> -->
		    <section id="ourmenu" class="ourmenu"><!-- Section id-->
        <div class="container">
            <div class="row">
		    <c:forEach var="c" items="${foodList}">

           
           <div class="col-md-4 col-sm-4 col-xs-12">				
               <div class="hover ehover">
                   <img class="img-responsive" src="${c.url }" alt="">
                   <div class="overlay">
                       <a href="shopCarAdd.action?id=${c.id }" class="info btn btn-gold">加入餐盘</a>
                       <a href="foodDetail.action?id=${c.id}" class="info btn btn-gold">查看详情</a>
                   </div>	
               </div>
            <div class="fullwidth">
            	<br>
				<h5 style="color: white">${c.name}</h5>
				<p class="text-center"><span class="text-primary">￥：${c.price}</span></p>
			</div>			
           </div>
		    </c:forEach>
		    </div>			
           </div>
		   </section> 
		    
		</div>
	</div>
</div>
<!-- PAGE CONTENT END -->
    

	<!-- Footer Section -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- <footer id="footer" class="footer">Section id
        <div class="container">
            <div class="row">
            	<div class="col-md-12" style="height:74px;">
                	<div class="section-title">
                    	<h1>时事通讯</h1>
                    
                    </div>
                </div>
            </div>
            
            <div class="row">
            	<div class="col-md-12">
                	<div class="newsletter">
                    	<form class="form-inline">
                          <div class="form-group">
                            <a href="index.action">搜狗搜索</a> | 
                            <a href="index.action">凯戈餐厅</a> | 
                            <a href="index.action">好胃口官网</a> | 
                            <a href="index.action">美食餐厅</a> | 
                            <a href="index.action">百度搜索</a>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright clearfix">
            <div class="">
                <p class="copy">Copyright &copy; 2017.Company name All rights reserved.好胃口点餐系统</p>
            </div>
        </div>
    </footer> -->
    
   
    
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
    
    <!-- prettyPhoto -->
    <script src="vendor/prettyPhoto/jquery.prettyPhoto.js"></script>
    
   </body>
</html> 

