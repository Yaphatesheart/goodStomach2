<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>好胃口订餐系统后台管理</title>
<link rel="stylesheet" type="text/css" href="theme/1/css/common.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/style.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/table.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/icon.css">
<link rel="stylesheet" type="text/css" href="theme/1/jquery-easyui-themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/easyui-tabs.css">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript"  src="theme/1/js/base.js"></script>

<script type="text/javascript">
$(function(){
	$(".baseUI li").on("click",function(){
		var url = $(this).attr("url");
		$(".right").load(url);		
	});
});

$(function(){
	var cc = $(".baseUI li:contains('会员管理')");
	cc.trigger("click");
});
</script>

</head>

<body>
<div class="main">
	<div id="top">
    	<div class="top">
        	<div class="t_logo"></div>
            <div class="t_sign">
            	<span>你好，管理员</span><a href="index.action" class="t_exit">退出</a>
            </div>
        </div>
    </div>
    <div id="cont">
    	<div class="centent">
        	<div class="left">
            	<ul class="baseUI">
                    <li url="userManager.action"><a href="#">
                    <em class="base_userset"></em><span>会员管理</span></a></li>
                    
                    <li url="foodAdd.action"><a href="#">
                    <em class="base_roll"></em><span>添加菜品</span></a></li>
                    
                    <li url="foodManager.action"><a href="#">
                    <em class="base_roll"></em><span>菜品管理</span></a></li>
                    
                    <li url="kindAdd.action"><a href="#">
                	<em class="base_basicset"></em><span>添加种类</span></a>
                    </li>
                    
                	<li url="kindManager.action"><a href="#">
                	<em class="base_basicset"></em><span>种类管理</span></a>
                    </li>
                    
                    <li url="orderManager.action"><a href="#">
                    <em class="base_roll"></em><span>订单管理</span></a></li>
                </ul>
            </div>
            <div class="right">
            <!-- 这是内容区域 -->
            
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div id="foot"><a href="#">Copyright &copy; 2017.Company name All rights reserved.好胃口点餐系统</a></div>
</div>
</body>
</html>
