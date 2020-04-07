<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="mainCol-head">
	<span class="title">相册</span>
</div>
<div class="mainCol-body">
    <h3>${bloger.nickname}的相册</h3>
   <c:forEach items="${albumlist}" var="a">
        <dl class="album">
            <dt>
            <c:if test="${empty a.cover}">
           
            	<img src="/MyBlog/src/main/webapp/static/UserFiles/Albums/emptyAlbum.jpg" alt="" />
            </c:if>
				 <c:if test="${!empty a.cover}">
				 								 
            	<img src="${pageContext.request.contextPath }/static/UserFiles/Albums/${a.id}/${a.cover}" alt="" />
            </c:if>
            </dt>
            <dd>
           		<a href="${pageContext.request.contextPath }/blog/album?userId=${bloger.id}&aid=${a.id}">${a.name}</a>
            </dd>
        </dl>
        </c:forEach>
    <div class="clearBoth"></div>
</div>