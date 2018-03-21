<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Order" %>
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
       			<i class="icon-font"></i>欢迎来到订单管理界面
            </div>
        </div>
        <div class="result-content">
            <table class="result-tab" width="100%">
                <tr>
                    <th>订单ID</th>
                    <th>订单姓名</th>
                    <th>订单总价</th>
                    <th>订单状态</th>
                    <th>订单时间</th>
                    <th>操作</th>
                </tr>
                
                <c:forEach var="c" items="${orderList}">
                <tr>
                    <td>${c.id }</td>  <!--标签ID-->
                    <td>${c.name }</td> <!--标签名称-->
                    <td>${c.cost }</td>
                    <td>${c.state }</td>
                    <td>${c.orderDate }</td>
                    <td>
                        <a href="javascript:void(0);" val="${c.id }" class="link-detail">订单详细</a>
                        <a href="javascript:void(0);" val="${c.id }" class="link-update">修改订单</a>
                        <%-- <a href="javascript:void(0);" val="${c.id }" class="link-del">删除</a> --%>
                    </td>
                </tr>
                </c:forEach>
            </table>
            <div class="list-page"> 
            	<div class="page">
            	<!-- <span>上一页</span> -->
            	<c:forEach var="i" begin="1" end="${pageBean.pageCount }" step="1">
            	<a href="javascript:void(0);" val="${i}" class="link-page">${i}</a>
            	</c:forEach>
            	<!-- <span>下一页</span> -->
            	</div>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(function(){
	$(".link-detail").off();
	$(".link-detail").on("click",function(){
		var id = $(this).attr("val");
		$(".right").load("orderDetail.action",{id:id});
	});
})
$(function(){
	$(".link-update").off();
	$(".link-update").on("click",function(){
		var id = $(this).attr("val");
		$(".right").load("orderUpdate.action",{id:id});
	});
})
//deleteKind.action?id=${c.id}
$(function(){
	var url = "orderDelete.action";
	var cc = $(".baseUI li:contains('订单管理')");
	
	$(".link-del").off();
	$(".link-del").on("click",function(){
		var id = $(this).attr("val");
		var flag = confirm("是否删除?");
		if(flag){
			$.post(url,{id:id},function(){
				//trigger("click")是模拟点击，使得页面进行刷新
				cc.trigger("click");
			});
		}
	});
	
});
$(function(){
	$(".link-page").off();
	$(".link-page").on("click",function(){
		var id = $(this).attr("val");
		$(".right").load("orderManager.action",{id:id});
	});
})
</script>