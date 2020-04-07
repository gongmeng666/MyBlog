<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div id="blogHead">
                <div id="blogHead-info">
                    <h1 id="blogHead-info-signName">${bloger.signature}</h1>
                    <a id="blogHeader-info-link" href="/myBlog/blog/articles?userId=${bloger.id}">http://localhost:8080/myBlog/blog/articles?userId=${bloger.id}</a>
                    <ul id="blogHead-info-nav">
                        <li><a href="${pageContext.request.contextPath }/index">首页</a></li>
                        <li>|</li>
                        <li><a href="/MyBlog/blog/articles?userId=${bloger.id}">博文目录</a></li>
                        <li>|</li>
                        <li><a href="#">图片</a></li>
                        <li>|</li>
                        <li><a href="#">关于我</a></li>
                    </ul>
                    <div class="clearBoth"></div>
                </div>
            </div>