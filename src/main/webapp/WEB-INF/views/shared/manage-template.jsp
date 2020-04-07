<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
    <title></title>								
    <link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/Content/manage-page.css" />
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <div id="header-logo">
                <img src="${pageContext.request.contextPath }/static/Content/images/logo.jpg" alt="blog-logo" />
            </div>
            <ul id="header-nav">
                <li><a class="current" href="${pageContext.request.contextPath }/index">首页</a></li>
                <li><a href="${pageContext.request.contextPath }/blog/articles?userId=${loginUser.id}">我的主页</a></li>
            </ul>
            <div class="clearBoth"></div>
            <hr />
        </div>
        <div id="content">
            <div id="sideBar">
                <div id="sideBar-author">
                    <img src="${pageContext.request.contextPath}/static/UserFiles/UserHeads/${loginUser.id}.jpg" alt="" />
                    <h3>${loginUser.nickname}</h3>
                    <a href="#">修改个人资料</a>
                </div>
                <div class="line"></div>
                <ul id="sideBar-function">
                    <li><a href="articleList">文章</a></li>
                    <li><a href="#">相册</a></li>
                    <li><a href="${pageContext.request.contextPath }/index">首页</a></li>
                </ul>
            </div>
            <div id="main">
            	<tiles:insertAttribute name="main" />
            </div>
            <div class="clearBoth"></div>
        </div>
        <div id="footer">
            <hr />
            <p> 帮助中心 | 空间客服 | 投诉中心 | 空间协议</p>
            <p>© 2002 - 2011 SamsBlog.com, All Rights Reserved. My Blog 版权所有 粤ICP B2-20080056号 </p>
        </div>
    </div>
</body>
</html>