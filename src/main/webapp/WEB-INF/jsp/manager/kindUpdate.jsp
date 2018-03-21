<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="crumb-list"><i class="icon-font"></i>首页<span class="crumb-step">&gt;</span>种类管理<span class="crumb-step">&gt;</span><span>修改种类</span></div>
</div>
<div class="result-wrap">
    <div class="result-content">
        <form action="kindUpdateSuccess.action" method="post" id="myform" name="myform">
            <table class="insert-tab" width="100%">
                <tbody>
                	<tr>
                        <th><i class="require-red"></i>id值：</th>
                        <td>
                            <input class="common-text required" id="title" name="id" size="50" value="${kind.id}" type="text">
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <th><i class="require-red">*</i>种类名称：</th>
                        <td>
                            <input class="common-text required" id="title" name="name" size="50" value="${kind.name}" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th>种类介绍：</th>
                        <td><input name="message" class="common-text required" id="content"  size="50" value="${kind.message}"></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input class="btn btn-primary btn6 mr10" value="修改" type="submit">
                            <input class="btn btn6" value="取消" type="reset">
                        </td>
                    </tr>
                </tbody></table>
        </form>
    </div>
</div>