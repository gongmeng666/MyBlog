<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/base.css" />
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/blogPage.css" />
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/blogPage_articles.css" />
    
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/blog-front.css"/>
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/blog-front-article.css"/>
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/blog-front-album.css"/>
    <style type="text/css">
   
    </style>
</head>
<body>
    <div id="page">
        <div id="blog">
         <c:import url="/blog/header"/>
          
          
            <div id="blogBody">
          
           <c:import url="/blog/sidebar"></c:import>
               
             <titles:insertAttribute name="main"/>  
           
            </div>
            <div class="mainCol-foot">
            			</div>
           		 </div>
            </div>
            <div id="blogFoot"></div>
</body>
</html>