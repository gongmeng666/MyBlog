<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btnPost').click(function(){
			$("#txtContent").val(CKEDITOR.instances['txtContent'].getData());
			alert($("#txtContent").val());
		});
		 
		$("#articleForm").validate({
			ignore:"",	//默认忽略隐藏字段ignore:":hidden",则不会验证被ckeditor隐藏的textarea
			rules:{
				title:{required:true},
				categoryId:{required:true},
				content:{required:true}
			},
			messages:{
				title:{required:"请填写标题"},
				categoryId:{required:"请选择分类"},
				content:{required:"请填写内容"}
			}
		});
		
	});
</script>

    <div id="article">
    <h3>${article==null?"添加博文":"修改博文"}</h3>
        <form id="articleForm" action="saveArticle" method="post">
        <input type="hidden" name="id" value="${article==null?0:article.id}" />
        <table id="article-edit">
            <tr>
                <td class="title">标题：</td>
                <td class="editor"><input type="text" name="title" value="${article.title}" /></td>
            </tr>
            <tr>
                <td class="title">分类：</td>
                <td class="editor">
                	<select name="categoryId">
                		<option value="">---请选择---</option>
                	<c:forEach var="c" items="${cateList}">
                		<c:if test="${c.id==article.categoryId}">
                		<option value="${c.id}" selected="selected">${c.name}</option>
                		</c:if>
                		<c:if test="${c.id!=article.categoryId}">
                		<option value="${c.id}">${c.name}</option>
                		</c:if>
                	</c:forEach>
                	</select>
				</td>
            </tr>
            <tr>
            	<td class="title">内容：</td>
                <td>
                    <textarea id="txtContent" name="content">${article.content}</textarea>
                </td>
            </tr>
            <tr>
            	<td class="title">发表：</td>
            	<td>
            	<c:if test="${article.state==1}">
            		<input type="checkbox" name="state" checked="checked" value="1" />
            	</c:if>
            	<c:if test="${article.state!=1}">
            		<input type="checkbox" name="state" value="1" />
            	</c:if>
            	</td>
            </tr>
            <tr>
                <td colspan="2">
                    <input id="btnPost" type="submit" value="保存" />
                </td>
            </tr>
        </table>
        </form>
    </div>
    <script type="text/javascript" src="/MyBlog/static/js/ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
       	CKEDITOR.replace("txtContent");
    </script>
    