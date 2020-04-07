<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="mainCol">
	<div class="mainCol-head">
		<span class="title">博文</span>
	</div>
	<div class="mainCol-body">
		<div id="articles">

			<div class="article">
				<h2 class="article-title">
					<a href="#">${a.title}</a>
				</h2>
				<div class="article-body">${a.content}</div>

				<div class="article-footer">
					${a.updateTime}<br /> ${a.clicks}| 评论（${a.commentTimes}）
				</div>
			</div>
			<div class="linedot"></div>



			<div class="comments-title">
				<h3>评论</h3>
			</div>
			<c:if test="${empty commentList}">
				<p style="padding: 10px 20px;">暂时还没有评论......</p>
			</c:if>


			<c:forEach items="${commentList}" var="c">
				<dl class="comment">
					<dt class="comment-authorName">${c.user.nickname}</dt>
					<dd class="comment-time">${c.commentTime}</dd>
					<dd class="clearBoth"></dd>
					<dd class="comment-authorImage">
						<img
							src="${pageContext.request.contextPath }/static/UserFiles/UserHeads/${c.user.id}.jpg"
							alt="" />
					</dd>
					<dd class="comment-content">${c.content}</dd>
					<dd class="clearBoth"></dd>
					<dd class="linedot"></dd>
				</dl>
			</c:forEach>
			
			<div class="clearBoth"></div>
			<c:if test="${loginUser!=null}">
				<div class="comments-title">
					<h3>发表评论</h3>
				</div>
				<form id="addComment" action="saveComment" method="post">
					<input type="hidden" name="articleId" value="${a.id}"/>
					<input type="hidden" name="topicUserId" value="${a.user.id}"/>
					<table id="postComment">
						<tr>
							<td>评论：</td>
							<td><textarea id="commentContent" name="content" rows="6"
									cols="60"></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" id="btnPostComment"
								name="btnPostComment" value="发表评论" /></td>
						</tr>
					</table>
				</form>
			</c:if>
		</div>

		</div>
		<div class="mainCol-foot"></div>
	</div>
</div>