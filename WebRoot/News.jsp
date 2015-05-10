<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>新闻动态</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="image/news_title_pic.png">
<link rel="stylesheet" type="text/css" href="css/News.css">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}
</style>

</head>

<body>

	<div class="body">
		<div class="nav">
		  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target="_blank"><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target="_blank"><img src="image/border_13.gif"></a>
			<a href="list_first_four.action" target="_blank"><img src="image/border_14.gif"></a>
		</div>
		<div class="content">

			<div class="black"></div>
			<s:iterator value="pageBean.list_news" id="us">
				<div class="row1">
					<div class="logo"></div>
					<div class="title">
						<a href="Find_News_By_Id.action?news.id=${us.id}" target="_blank"> <font
							face="软微雅黑" color="1579E3"> <s:property value="#us.title" />
						</font> </a>
					</div>
				</div>
				<div class="row2">
					<span class="WordStyle">日期：<s:property value="#us.date" />
					</span> <span class="WordStyle">作者:<s:property value="#us.author" />
					</span> <span class="WordStyle">点击:${us.account}</span> <span
						class="detial"><a
						href="Find_News_By_Id.action?page=${pageBean.allRow}&&news.id=${us.id}"><font
							color="#ABABAB" face="楷体">[查看全文]</font> </a> </span>
				</div>
			</s:iterator>

		</div>
		<div class="paging">
			<center>
				第
				<s:property value="pageBean.currentPage" />
				页

				<s:if test="%{pageBean.currentPage == 1}">

				</s:if>
				<s:else>
					<a href="listFrontNews.action?page=1"> <font color="1579E3">首页</font>
					</a>
					<a
						href="listFrontNews.action?page=<s:property value="%{pageBean.currentPage-1}"/>"><font
						color="1579E3">上一页</font> </a>
				</s:else>
				<s:if test="%{pageBean.currentPage != pageBean.totalPage}">
					<a
						href="listFrontNews.action?page=<s:property value="%{pageBean.currentPage+1}"/>"><font
						color="1579E3">下一页</font> </a>
					<a
						href="listFrontNews.action?page=<s:property value="pageBean.totalPage"/>"><font
						color="1579E3">最后一页</font> </a>
				</s:if>
				<s:else>

				</s:else>
			</center>
		</div>
		  <div class="copyright">
		<font face=微软雅黑 size=2px>Copyright@梦之站 | 湖南省长沙市(雨花区)万家丽南路2段960号
			电话：0731-2309047 邮箱：dreamstationx.@sina.com
			</font>
		</div> 
	</div>

</body>
</html>
