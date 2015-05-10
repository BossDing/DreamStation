<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>项目详细</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="css/show_project_details.css">
<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}

a img {
	border: none;
	margin: 0 auto;
	padding: 0px;
}
</style>
</head>

<body>
<body>
	<div class="background">
		<div class="nav">
			  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target="_blank"><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target="_blank"><img src="image/border_13.gif"></a>
			<a href="list_first_four.action" target="_blank"><img src="image/border_14.gif"></a>
		</div>

		<div class="body">
			<div class="project">
				<div class="project_body">
					<s:hidden name="project.id" value="%{project.id}">
					</s:hidden>
					<div class="project_picture">
					<table style="border:15px; border-style:ridge">
					<tr><td>
						<img width="340px" height="230px"
							src="<s:property value="%{project.picsite}" escape="false"/>" />
					</td></tr></table>
					</div>
					<div class="project_name">
					
					<center><font face="微软雅黑" size="5px"><s:property value="%{project.title}" escape="false" /></font></center><br><br>
						<font face="微软雅黑" size="4px">开发人员：</font><font face="微软雅黑" size="4px"><s:property value="%{project.developers}" escape="false" /></font><p>
						<font face="微软雅黑" size="4px">项目链接：<s:property value="%{project.link}" escape="false" /></font>
					
					</div>
				</div>

				<div class="project_details">
			<font face="微软雅黑"size="3px">	项目功能及技术简介：<p><s:property value="%{project.technology}" escape="false" /></font>
				
				</div>
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
