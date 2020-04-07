<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="mainCol-head">
	
</div>
<div class="mainCol-body">
    <h3>${album.name}</h3>
   <c:forEach items="${photos}" var="p">
        <dl class="album">
            <dt>
				 								 
            	<img src="${pageContext.request.contextPath }/static/UserFiles/Albums/${album.id}/${p.filePath}" alt="" />
            
            </dt>
            <dd>
           		<a href="photo?userId=${album.user.id}&pid=${p.id}">${p.title}</a>
            </dd>
        </dl>
        </c:forEach>
    <div class="clearBoth"></div>
</div>