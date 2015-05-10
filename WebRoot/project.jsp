<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Site Title -->
<title>项目成果</title>

<!-- Meta Data -->
<meta charset="UTF-8" />
<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/project.css" />
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
}
</style>
</head>

<body>

	<!-- jQuery and Nivo Slider -->
	<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
	<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
	<div id="background">
		<div class="nav">
			  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target="_blank"><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target="_blank"><img src="image/border_13.gif"></a>
			<a href="list_first_four.action" target="_blank"><img src="image/border_14.gif"></a>
		</div>
		<div class="body">
			<%int i=0; %>
			<s:iterator value="#request.list" id="project" status="status">
			<%i++; %>
			<%if(i==1) {%>
				<div class="image_content01">
					<div class="image00">
						<img width="336" height="226" alt=""
							src="<s:property value="#project.picsite" escape="false"/>">
					</div>
					<div class="content00">
						<font face="微软雅黑">项目名称[ <s:property value="#project.title"
								escape="false" /> ]
						</font> <br> <font face="微软雅黑">开发者{
						<s:property value="#project.developers" escape="false" /> }</font>
						<br>
						<%-- 技术：<s:property value="#project.technology" escape="false" /> <br> --%>
						<font face="微软雅黑">链接<
						<s:property value="#project.link" escape="false" /> ></font>
						<br>
					</div>
				</div>
				<%} %>
				<%if(i==2) {%>
				<div class="image_content01">
					<div class="image00">
						<img width="336" height="226" alt=""
							src="<s:property value="#project.picsite" escape="false"/>">
					</div>
					<div class="content01">
						<font face="微软雅黑">项目名称[ <s:property value="#project.title"
								escape="false" /> ]
						</font> <br> <font face="微软雅黑">开发者{
						<s:property value="#project.developers" escape="false" /> }</font>
						<br>
						<%-- 技术：<s:property value="#project.technology" escape="false" /> <br> --%>
						<font face="微软雅黑">链接<
						<s:property value="#project.link" escape="false" /> ></font>
						<br>
					</div>
				</div>
				<%} %>
				<% if(i==3) {%>
				<div class="image_content01">
					
					<div class="content00">
						<font face="微软雅黑">项目名称[ <s:property value="#project.title"
								escape="false" /> ]
						</font> <br> <font face="微软雅黑">开发者{
						<s:property value="#project.developers" escape="false" /> }</font>
						<br>
						<%-- 技术：<s:property value="#project.technology" escape="false" /> <br> --%>
						<font face="微软雅黑">链接<
						<s:property value="#project.link" escape="false" /> ></font>
						<br>
					</div>
					<div class="image00">
						<img width="336" height="226" alt=""
							src="<s:property value="#project.picsite" escape="false"/>">
					</div>
				</div>
				<%} %>
				
				<%if(i==4){%>
				<div class="image_content01">
					
					<div class="content01">
						<font face="微软雅黑">项目名称[ <s:property value="#project.title"
								escape="false" /> ]
						</font> <br> <font face="微软雅黑">开发者{
						<s:property value="#project.developers" escape="false" /> }</font>
						<br>
						<%-- 技术：<s:property value="#project.technology" escape="false" /> <br> --%>
						<font face="微软雅黑">链接<
						<s:property value="#project.link" escape="false" /> ></font>
						<br>
					</div>
					<div class="image00">
						<img width="336" height="226" alt=""
							src="<s:property value="#project.picsite" escape="false"/>">
					</div>
				</div><%} %>
				<% if(i>4){i=0;}%>
			</s:iterator>

		</div>
		<div class="link">
			<a href="client_project_page_Action.action" target="_blank"><font size="3px"
				color="#008FD1" face="微软雅黑">更多成果...</font></a>
		</div>
		<div class="content02"><font face="微软雅黑">我们一直都在努力！</font></div>
		 <div class="copyright">
		<font face=微软雅黑 size=2px>Copyright@梦之站 | 湖南省长沙市(雨花区)万家丽南路2段960号
			电话：0731-2309047 邮箱：dreamstationx.@sina.com
			</font>
		</div> 
	</div>

</body>
</html>