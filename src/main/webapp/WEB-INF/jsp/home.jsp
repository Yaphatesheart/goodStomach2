<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Kind" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="kai">
    <link rel="icon" href="images/favicon.ico">

    <title>欢迎来到凯戈餐厅</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
       
    <!-- Bootstrap Datepicker CSS -->
    <link href="vendor/bootstrap-datepicker/css/datepicker.min.css" rel="stylesheet">
           
    <script src="js/ie-emulation-modes-warning.js"></script>
	
    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- PrettyPhoto CSS -->
    <link href="vendor/prettyPhoto/prettyPhoto.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">

   
     
  </head>

  <body id="page-top">
    
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
    
    <!-- Full Page Image Background Carousel Header -->
    <header id="myCarousel" class="carousel slide carousel-fade header">
    
        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url(images/banner-1.jpg);"></div>
                <div class="carousel-caption">
                    <img src="images/slide-wave.jpg" class="img-responsive" alt="Slide">
                    <h2>美味的食物</h2> 
                    <h3>Come Hungry. Leave Happy.</h3> 
                </div>
            </div>
            <div class="item">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url(images/banner-2.jpg);"></div>
                <div class="carousel-caption">
                    <img src="images/slide-wave.jpg" class="img-responsive" alt="Slide">
                    <h2>美味的食物</h2> 
                    <h3>Come Hungry. Leave Happy.</h3>
                </div>
            </div>
            <div class="item">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url(images/banner-3.jpg);"></div>
                <div class="carousel-caption">
                    <img src="images/slide-wave.jpg" class="img-responsive" alt="Slide">
                    <h2>美味的食物</h2> 
                    <h3>Come Hungry. Leave Happy.</h3> 
                </div>
            </div>
        </div>
        
    </header>	
    
    
    <!-- About Section -->
    
    <section id="about" class="about"><!-- Section id-->
        <div class="container">
            <div class="row">
            	<div class="col-md-6 col-sm-12 left-side">
                	<div class="section-title">
                    	<h1>关于我们</h1>
                        <img src="images/sep-1.jpg" alt="Underline" />
                    </div>
                    <div class="about-content">
                    	<p class="text-uppercase fw-700">我们创造美味的记忆</p>
                        <p>酸甜苦辣咸，调出人生百味；油盐酱醋，烹出世间百态；煎炒烹炸，制作出万千美食。厨师，让我们享受着视觉的盛宴，品味着人间美味。</p>
                    </div>
                    <div class="about-chef">
                    	<h3>主厨</h3>
                        <img src="images/avtar-about.jpg" class="img-responsive" alt="谢霆锋" />
                        <p>"唯一的创造为唯一的<br>你."</p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 right-side">
                	<div class="row about-img">
                    	<div class="col-sm-6 col-xs-12">
                        	<figure><img src="images/about-img-1.jpg" class="img-responsive" alt="图片"></figure>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                        	<figure><img src="images/about-img-2.jpg" class="img-responsive" alt="图片"></figure>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                        	<figure><img src="images/about-img-3.jpg" class="img-responsive" alt="图片"></figure>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                        	<figure><img src="images/about-img-4.jpg" class="img-responsive" alt="图片"></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <!-- Our Menu Section -->
    
    <section id="ourmenu" class="ourmenu"><!-- Section id-->
        <div class="container">
            <div class="row">
            	<div class="col-md-12">
                	<div class="section-title">
                    	<h1>我们的菜单</h1>
                        <img src="images/sep-1.jpg" alt="Underline" />
                    </div>
                </div>
                
                <div class="col-md-4 col-sm-4 col-xs-12">				
                    <div class="hover ehover">
                        <img class="img-responsive" src="images/food-1.jpg" alt="">
                        <div class="overlay">
                            <a href="foodList.action?id=1" class="info btn btn-gold">更多。。。 </a>
                        </div>	
                        <h3>荤菜</h3>			
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">				
                    <div class="hover ehover">
                        <img class="img-responsive" src="images/food-2.jpg" alt="">
                        <div class="overlay">
                            <a href="foodList.action?id=2" class="info btn btn-gold">更多。。。 </a>
                        </div>	
                        <h3>素菜</h3>			
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">				
                    <div class="hover ehover">
                        <img class="img-responsive" src="images/food-3.jpg" alt="">
                        <div class="overlay">
                            <a href="foodList.action?id=4" class="info btn btn-gold">更多。。。 </a>
                        </div>
                        <h3>点心</h3>			
                    </div>
                </div>
                
                <div class="col-md-12 col-sm-12 col-xs-12 call-to-btn">
                	<a href="foodList.action?id=3" class="btn btn-white">更多。。。</a>
                </div>
                
            </div>
        </div>
    </section>
    

    <!-- Meal of the Day Section -->
    
    <section id="mealoftheday" class="mealoftheday"><!-- Section id-->
        <div class="container">
            <div class="row">
            	<div class="col-md-12">
                	<div class="section-title">
                    	<h1>美味的 一天</h1>
                        <img src="images/sep-1.jpg" alt="Underline" />
                    </div>
                </div>
                
                <div class="col-md-7 col-sm-6">
                	<div class="meal-img">
                    	<img src="images/Meal-of-the-Day.jpg" class="img-responsive" alt="一天的食物" />
                    </div>
                </div>
                <div class="col-md-5 col-sm-6">
                	<div class="meal-details">
                    	<h3>黄渤</h3>
                        <p>油炸了一份开心美味果，慢炖了一锅幸福快乐汤，翻炒了一盘吉祥如意丝，凉伴了一盆好运富贵菜，摆了一桌美好人生大餐。</p>
                        
                        <div class="row chaf-qut">
                        	<div class="col-sm-3 col-xs-5">
                            	<img src="images/avtar.jpg" class="img-circle img-responsive" alt="黄渤" />
                            </div>
                            <div class="col-sm-9 col-xs-7">
                            	<p>“用心做最好的食物.<br> 好好享受!’’</p>
                            </div>
                        </div>
                    </div>	
                </div>                                
                
            </div>
        </div>
    </section> 

    <!-- Book a Table Section -->
    
    <section id="bookatable" class="bookatable"><!-- Section id-->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                </div>
            </div>
        </div>
    </section>
       

	<!-- Testimonials Section -->
    
    <section id="testimonials" class="testimonials"><!-- Section id-->
        <div class="container-fluid">
            <div class="row">
            	<div class="col-md-12">
                	<div class="section-title">
                    	<h1>行政人员</h1>
                        <img src="images/sep-1.jpg" alt="Underline" />
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="col-md-12">
                    <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
                      <!-- Carousel items -->
                      <div class="container">
                      <div class="carousel-inner">
                        <div class="item">
                            <div class="profile-circle"><img src="images/avatar-1.jpg" alt="avtar" /></div>
                            <blockquote>
                                <p class="fs-16">担任总经理期间，秉承我们餐厅以往的精神，在新的岗位上，积极努力工作，认真履行总经理的职责,认真学习餐饮专业知识让管理走上规范化的轨道,建立能有效按公司要求完成好工作和达成目标的团队,做好产品研发，丰富产品讲话致辞把我们“自然、健康、快乐”的全上品更大的服务于大众。 </p>
                                <p class="person">杨幂</p>
                                <p class="per-den"> 总经理 </p>
                            </blockquote>
                        </div>
                        <div class="active item">
                            <div class="profile-circle"><img src="images/avatar-2.jpg" alt="avtar" /></div>
                            <blockquote>
                                <p class="fs-16">担任副总经理期间，管理创新，继续以五常管理为基础，做到所有物品有家、有主人，工具用具有使用期限，每项工作细节有标准，有责任人，有奖罚制度。引用数字化管理，例如把全年经营指标、费用指标细化到月，再到部门，用数字进网行管理规范，杜绝笼统管理、口号管理带来的不可控因素 </p>
                                <p class="person">刘诗诗</p>
                                <p class="per-den">副总经理</p>
                            </blockquote>
                        </div>
                      </div>
                      </div>
                       <!-- Controls -->
                          <a class="left carousel-control" href="#fade-quote-carousel" role="button" data-slide="prev">
                            <!-- <span class="fa fa-long-arrow-left" aria-hidden="true"></span> -->
                            <span class="sr-only">前一个</span>
                          </a>
                          <a class="right carousel-control" href="#fade-quote-carousel" role="button" data-slide="next">
                            <!-- <span class="fa fa-long-arrow-right" aria-hidden="true"></span> -->
                            <span class="sr-only">后一个</span>
                          </a>
                      
                    </div>
                    </div>
                </div>							
            </div>
    </section>

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