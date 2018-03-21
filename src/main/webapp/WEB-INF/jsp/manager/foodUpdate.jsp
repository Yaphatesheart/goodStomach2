<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kai.bean.Kind" %>
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
    <div class="crumb-list"><i class="icon-font"></i>首页<span class="crumb-step">&gt;</span>菜品管理<span class="crumb-step">&gt;</span><span>修改菜品</span></div>
</div>
<div class="result-wrap">
    <div class="result-content">
        <form action="foodUpdateSuccess.action" method="post" id="myform" name="myform" enctype="multipart/form-data">
            <table class="insert-tab" width="100%">
                <tbody>
                	<tr>
                        <th><i class="require-red"></i>id值：</th>
                        <td>
                            <input class="common-text required" id="title" name="id" size="50" value="${food.id}" type="text">
                        </td>
                    </tr>
                	<tr>
                        <th width="120"><i class="require-red">*</i>分类：</th>
                        <td>
                            <select name="colId" id="catid" class="required">
                                <c:forEach var="c" items="${kindList }">
                                	<option value="${c.id }">${c.name}</option>
                                </c:forEach>
                                
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>菜品名称：</th>
                        <td>
                            <input class="common-text required" id="title" name="name" size="50" value="${food.name}" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>菜品价格：</th>
                        <td>
                            <input class="common-text required" id="title" name="price" size="50" value="${food.price }" type="text">
                        </td>
                    </tr>
                    <tr>
                       <th><i class="require-red">*</i>图片：</th>
                       <td><input name="file" id="" type="file" value="${food.url}"><!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>--></td>
                   </tr>
                   <tr>
                        <th>配料介绍：</th>
                        <td><textarea name="burdenMessage" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10">${food.burdenMessage }</textarea></td>
                    </tr>
                    <tr>
                        <th>菜品介绍：</th>
                        <td><textarea name="foodMessage" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10">${food.foodMessage}</textarea></td>
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