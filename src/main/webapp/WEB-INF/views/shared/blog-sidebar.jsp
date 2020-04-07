<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <div id="sideCol">
                    <div id="sideCol-module-001" class="module">
                        <div class="sideCol-head">
                            <span class="title">个人资料</span>
                        </div>
                        
                        <div class="sideCol-body">
                            <img id="userHead" src="${pageContext.request.contextPath }/static/UserFiles/UserHeads/${bloger.id}.jpg" alt="" />
                            <h3 id="nickName">${bloger.nickname}</h3>
                            <div class="linedot"></div>
                            <div id="interaction">
                                <a class="linkButton">加为好友</a>
                                <a class="linkButton">发纸条</a>
                                <div class="clearBoth"></div>
                            </div>
                            <div class="linedot"></div>
                            <ul id="integration">
                                <li>博客等级：${bloger.score/10}</li>
                                <li>博客积分：${bloger.score}</li>
                                <li>博客访问：${bloger.visitTimes}</li>
                                <li>关注人气：1000</li>
                            </ul>
                        </div>
                        
                        <div class="sideCol-foot">
                        </div>
                    </div>
                    <div id="sideCol-module-002" class="module">
                        <div class="sideCol-head">
                            <span class="title">博文分类</span>
                        </div>
                        <div class="sideCol-body">
                            <ul id="postCategories">
                            <c:forEach items="${cates}" var="c">
                           
                            <li><a href="${pageContext.request.contextPath }/blog/articles?userId=${bloger.id}&cateId=${c.id}">${c.name}</a></li>
                            
                            </c:forEach>
                            </ul>
                            <div class="linedot"></div>
                            <ul id="ablums">
                                <li><a href="${pageContext.request.contextPath }/blog/albumList?userId=${bloger.id}">相册</a></li>
                            </ul>
                        </div>
                        <div class="sideCol-foot">
                        </div>
                    </div>
                    <div id="sideCol-module-003" class="module">
                        <div class="sideCol-head">
                            <span class="title">热 门博文</span>
                        </div>
                        <div class="sideCol-body">
                            <ul>
                            <c:forEach items="${hotArticles}" var="h">
                                <li><a href="/MyBlog/blog/detail?userId=${h.user.id}&aid=${h.id}">${h.title}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="sideCol-foot">
                        </div>
                    </div>
                </div>