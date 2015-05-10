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

<title>新闻内容</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="image/news_title_pic.png">
<link rel="stylesheet" type="text/css" href="css/news_article.css">
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
			<center>
				<div class="title">

					<div class="logo"></div>
					<div class="title_word">
						<s:property value="%{news.title}" escape="false" />
					</div>

				</div>
			</center>

			<div class="article">
				<font size="3" face="微软雅黑"><s:property
						value="%{news.content}" escape="false" /> </font>
			</div>
			<div class="paging">
				<font size="2" face="微软雅黑" color="#000000"> 当前文章：<s:property
						value="%{news.title}" /> </font><br>
				<s:if test="%{news.id < pageBean.allRow}">
					<a
						href="Find_News_By_Id.action?page=<s:property value="pageBean.totalPage"/>&&news.id=${pageBean.allRow}"><font
						size="2" face="微软雅黑" color="#000000">首页 </font>
					</a>
					<a
						href="Find_News_By_Id.action?page=<s:property value="%{pageBean.currentPage+1}"/>&&news.id=<s:property value="%{news.id+1}" />"><font
						size="2" face="微软雅黑" color="#000000">上一篇</font>
					</a>
				</s:if>
				<s:if test="%{news.id==1}"></s:if>
				<s:else>

					<a
						href="Find_News_By_Id.action?page=<s:property value="%{pageBean.currentPage-1}" />&&news.id=<s:property value="%{news.id-1}" />"><font
						size="2" face="微软雅黑" color="#000000">下一篇</font>
					</a>
					<a href="Find_News_By_Id.action?page=1&&news.id=1"><font
						size="2" face="微软雅黑" color="#000000">最后一篇</font> </a>
				</s:else><p>
<!-- Baidu Button BEGIN -->
<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
<span class="bds_more">分享到：</span>
<a class="bds_qzone"></a>
<a class="bds_tsina"></a>
<a class="bds_tqq"></a>
<a class="bds_renren"></a>
<a class="bds_t163"></a>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6663966" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END -->
			</div>

		</div>
		
		  <div class="copyright">
		<font face=微软雅黑 size=2px>Copyright@梦之站 | 湖南省长沙市(雨花区)万家丽南路2段960号
			电话：0731-2309047 邮箱：dreamstationx.@sina.com
			</font>
		</div> 
	
	</div>
</body>
</html>
