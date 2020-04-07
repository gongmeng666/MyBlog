<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div id="articles">
        <h3>我的博文</h3>
        <div id="articles-add">
        	<a href="edit">发表文章>></a>
        </div>
        <div id="article-search">
        	<form action="articleList" method="get">
       	 	博文分类：
       	 	<select name="cateId">
       	 		<option value="0">全部</option>
       	 		<c:forEach items="${cateList}" var="c">
       	 		<c:if test="${param.cateId==c.id}">
       	 			<option value="${c.id}" selected="selected">${c.name}</option>
       	 		</c:if>
       	 		
       	 		<c:if test="${param.cateId!=c.id}">
       	 			<option value="${c.id}">${c.name}</option>
       	 		</c:if>
       	 		
       	 		</c:forEach>
       	
       	 	</select>
       	 	博文标题（模糊）：
       	 	<input name="title" value="${param.title}"/>
       	 	<input type="submit" value="查询"/>
       	 	<input type="reset"/>
       	 	</form>
       	 </div>
        <hr />
        <table>
        	<tr><th>博文标题</th><th>最后更新时间</th><th>删除</th></tr>
        	<c:forEach items="${articleList}" var="a">
            <tr>
                <td class="article-title"><a href="edit?aid=${a.id}">${a.title }</a></td>
                <td class="modify-time">${a.updateTime} </td>
                <td><form action="" method="post">
                		<button type="submit" onclick="return confirm('确定删除当前记录？')">删除</button>
                	</form>
                </td>
            </tr>    
           </c:forEach>
        </table>
    </div>