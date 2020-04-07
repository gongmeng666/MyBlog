<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="mainCol">
                    <div class="mainCol-head">
                        <span class="title">博文</span>
                    </div>
                    <div class="mainCol-body">
                        <div id="articles">
                         <c:forEach items="${list}" var="li">
                           <div class="article">
                                <h2 class="article-title">
                                    <a href="/MyBlog/blog/detail?userId=${li.user.id}&aid=${li.id}">${li.title}</a>
                                </h2>
                                <div class="article-body">
                                    ${li.subContent}
                                </div>
                                <div class="article-link"><a href="/MyBlog/blog/detail?userId=${li.user.id}&aid=${li.id}">查看全文&gt;&gt;</a></div>
                                <div class="article-footer">
                                   ${li.updateTime}<br />
                                    ${li.clicks}| 评论（${li.commentTimes}）    
                                </div>
                            </div>
                            <div class="linedot"></div>
                         </c:forEach>
                       
                         <div class="pager">
                         	<c:if test="${page>1}">
                         		<a class="prevPage" href="articles?userId=${param.userId}&page=1&cateId=${param.cateId}">第一页</a>
                         		<a class="prevPage" href="articles?userId=${param.userId}&page=${page-1}&cateId=${param.cateId}">上一页</a>
                         	</c:if>
                         		<c:if test="${page<totalPages}">
                         			<a class="nextPage" href="articles?userId=${param.userId}&page=${page+1}&cateId=${param.cateId}">下一页</a>
                         			<a class="nextPage" href="articles?userId=${param.userId}&page=${totalPages}&cateId=${param.cateId}">最后一页</a>
                         	</c:if>
                         
                         <span class="pageInfo">第${page}页,共${totalPages}页</span>
                         </div>  
                    </div>
                    <div class="mainCol-foot">
                    </div>
                </div>