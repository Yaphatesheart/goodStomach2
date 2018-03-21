<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kai.bean.Food" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>欢迎来到餐品详细介绍界面</title>

    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
       
    <link href="vendor/bootstrap-datepicker/css/datepicker.min.css" rel="stylesheet">
           
    <script src="js/ie-emulation-modes-warning.js"></script>

	
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="vendor/prettyPhoto/prettyPhoto.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style3.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myresponsee.css">
	<link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
     
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
                        <h1>我们的菜品介绍</h1>
                    </div>        
                </div>
            </div>
        </div>
    </header>
    
    
    <section id="mealoftheday" class="mealoftheday"><!-- Section id-->
        <div class="container">
            <div class="row">
            	<div class="col-md-12">
                	<div class="section-title">
                	<br>
                    	<h1>餐品介绍界面</h1>
                       
                    </div>
                </div>
                
                <div class="col-md-7 col-sm-6">
					
                	<div class="meal-img">
                    	<img src="${foodDetail.url }" class="img-responsive" alt="图片错误" />
                    </div>
                </div>
                <div class="col-md-5 col-sm-6">
                
                	<div class="meal-details">
                    	<h3 style="color: white">${foodDetail.name}</h3><br>
                        <p>食物简介：${foodDetail.foodMessage}</p>
                        
                        <div class="row chaf-qut">
                        	<ul>
								<li>餐品  ID:&nbsp;&nbsp;${foodDetail.id}</li>
								<li>餐品价格:&nbsp;&nbsp;${foodDetail.price}</li>
							</ul>
							<div class="numbers-row">
							</div>
							
                        </div>
                        <br>
						<div class="s-12 m-6 l-4">
							<a href="shopCarAdd.action?id=${foodDetail.id }" class="info btn btn-gold" style="color:white;">加入餐盘</a>
						</div>
						<br>
                    </div>
                	
                </div>                                
                
            </div>
        </div>
    </section> 
    

<section id="about" class="about"><!-- Section id-->
        <div class="container">
            <div class="row">
            	<div class="col-md-6 col-sm-12 left-side">
                	<div class="section-title">
                    	<h1>关于${foodDetail.name}</h1>
                        
                    </div>
                    <div class="about-content">
                    	<p class="text-uppercase fw-700">配料介绍：&nbsp;&nbsp;&nbsp;&nbsp;${foodDetail.burdenMessage }</p>
                        <p>餐品介绍：&nbsp;&nbsp;&nbsp;&nbsp;${foodDetail.foodMessage}</p>
                    </div>
                    <div class="about-chef">
                        <p>"最好的创造为唯一的<br>你."</p>
                    </div>
                </div>
                
                <div class="col-md-6 col-sm-12 right-side">
                	<div class="row about-img">
                    	<div class="col-sm-6 col-xs-12">
                        	<figure><img src="${foodDetail.url }" class="img-responsive" alt="图片"></figure>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                        	<figure><img src="${foodDetail.url }" class="img-responsive" alt="图片"></figure>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                        	<figure><img src="${foodDetail.url }" class="img-responsive" alt="图片"></figure>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                        	<figure><img src="${foodDetail.url }" class="img-responsive" alt="图片"></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<br><br>
<!-- PRODUCT TAB END -->
    

    <!-- Footer Section -->
    
    <footer id="footer" class="footer"><!-- Section id-->
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
    </footer>
    
   
    
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

