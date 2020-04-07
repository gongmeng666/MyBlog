<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<div class="mainCol-head">
	<span class="title">相册</span>
</div>
<div class="mainCol-body">
    <div class="currentImage">
        <h3 id="currentImage-title">${photo.title}</h3>
        <div id="currentImage-img">
            <img src="${pageContext.request.contextPath }/static/UserFiles/Albums/${photo.albumId}/${photo.filePath}" alt="" />
        </div>
        <div id="currentImage-desc">
               博主介绍：${photo.description}
        </div>
    </div>
    <div class="linedot"/></div>
</div>