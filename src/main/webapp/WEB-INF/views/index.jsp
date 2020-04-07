<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>欢迎来到 GZGL Blog.</title>
    <link rel="Stylesheet" type="text/css" href='static/Content/base.css' />
    <link rel="Stylesheet" type="text/css" href='static/Content/index.css' />
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <img id="header-logo" src="static/Content/images/logo.jpg" alt="blog-logo" />
        </div>
        <div id="content">
            <div id="sideBar">
                <div id="sideBar-login">
                <c:if test="${loginUser==null}">
                <form action="login" method="post">
                        <fieldset>
                            <div>
                                <label class="title">用户名：</label><input class="txt" type="text" id="username" name="username" />
                            </div>
                            <div class="clearBoth">
                                <label class="title">密码：</label><input  class="txt" type="password" id="password" name="pwd" />
                            </div>
                            <div class="clearBoth">
                                <input type="submit" id="btnLogin" name="btnLogin" value="" />
                                <a href="#" id="btnRegister"></a>
                            </div>
                        </fieldset>
                        </form>
                        <label class="login-error">${error}</label>
                        </c:if>
					<c:if test="${loginUser!=null}">
                        <div id="function-panel">
                            <h3>欢迎回来，${loginUser.nickname}</h3>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/manage/index">去维护我的博客和相册</a></li>
                                <li><a href="#">维护个人资料</a></li>
                                <li><a href="logout">注销登录</a></li>
                            </ul>
                        </div>
                   </c:if>
                </div>
                <div class="sideBar-block">
                    <h3 class="sideBar-block-title">
                        最新博文                    
                    </h3>
                    <div id="newArticles" class="sideBar-block-body">
                        <ul>
                            <c:forEach var="a" items="${newActricles}">
                            <li><a href="/MyBlog/blog/detail?userId=${a.user.id}&aid=${a.id}">${a.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div> 
                </div>
                <div class="sideBar-block">
                    <h3 class="sideBar-block-title">
                        热门博主
                    </h3>
                    <div id="hotAuthors" class="sideBar-block-body">
                        <ul>
							<c:forEach var="u" items="${hotUsers}">
							<li><a href="blog/articles?userId=${u.id}">${u.nickname}</a></li>
							</c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="main">
                <div>
                    <img src="static/Content/images/index-ad.gif" alt="" />
                </div>
                <div id="hotArticles">
                    <h3>  
                       热门博文
                    </h3>
                    <c:forEach var="a" items="${hotArticles}">
                    <div class="linedot"></div>
                    <table class="article">
                        <tr>
                            <td rowspan="3" class="article-author">
                                <img src="static/UserFiles/UserHeads/${a.user.id}.jpg" alt="" />
                            </td>
                            <td class="article-title">
                                ${a.title}
                            </td>
                        </tr>
                        <tr>
                            <td class="article-body">${a.subContent}</td>
                        </tr>
                        <tr>
                            <td class="article-link"><a href="/MyBlog/blog/detail?userId=${a.user.id}&aid=${a.id}">查看全文>></a></td>
                        </tr>
                    </table>
                    </c:forEach>
                    
                    
                   
                    <div class="linedot"></div>
                </div>
            </div>
            <div class="clearBoth"></div>
        </div>
        <div id="footer">
            <p> 媒体报道 | 关于我们 | 工作机会 | 相关法律 | 广告服务 | Bus小店 | 申请博客 | 网站地图 | 合作伙伴  </p>
            <p>© 2002 - 2011 SamsBlog.com, All Rights Reserved. Sams Blog 版权所有 粤ICP B2-20080056号 </p>
        </div>
    </div>
</body>
</html>
