<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Order" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("basePath", basePath);  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<script>
/*
 * 对代码进行制空，使得界面刷新
 */
 $(function(){
		var form = $("#myform");
		form.off();
		form.on("submit",function(){
			form.ajaxSubmit(function(){
				alert("修改成功");
			});
			return false;
		})
	})
</script>

<div class="crumb-wrap">
    <div class="crumb-list"><i class="icon-font"></i>首页<span class="crumb-step">&gt;</span>订单管理<span class="crumb-step">&gt;</span><span>修改状态</span></div>
</div>
<div class="result-wrap">
    <div class="result-content">
        <form action="orderUpdateSuccess.action" method="post" id="myform" name="myform" enctype="multipart/form-data">
            <table class="insert-tab" width="100%">
                <tbody>
                	<tr>
                        <th><i class="require-red"></i>订单id值：</th>
                        <td>
                            <input class="common-text required" id="title" name="id" size="50" value="${order.id}" type="text">
                        </td>
                    </tr>
                	
                    <tr>
                        <th><i class="require-red">*</i>订单总价值：</th>
                        <td>
                            <input class="common-text required" id="title" name="cost" size="50" value="${order.cost}" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>订单人名称：</th>
                        <td>
                            <input class="common-text required" id="title" name="name" size="50" value="${order.name }" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>订单时间：</th>
                        <td>
                            <input class="common-text required" id="title" name="orderDate" size="50" value="${order.orderDate }" type="text">
                        </td>
                    </tr>
                   <tr>
                        <th width="120"><i class="require-red">*</i>订单状态：</th>
                        <td>
                            <select name="state" id="catid" class="required">
                               
                               	<option value="未完成">未完成</option>
                                <option value="已完成">已完成</option>
                            </select>
                        </td>
                    </tr>
                   
                    <tr>
                        <th></th>
                        <td>
                            <input class="btn btn-primary btn6 mr10" value="发布" type="submit">
                            <input class="btn btn6" value="取消" type="reset">
                        </td>
                    </tr>
                </tbody></table>
        </form>
    </div>
</div>