<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<!-- Site Title -->
<title>论文详细</title>

<!-- Meta Data -->
<meta charset="UTF-8" />
<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">
<link rel="shortcut icon" href="image/news_title_pic.png">
<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/show_one_thesis.css" />



<!--[if lt IE 9]>
        <script type="text/javascript" src="javascript/HTML5-Shiv.js"></script>
        <![endif] -->
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
		<div class="content">
			<s:hidden value="%{thesis.id}" />
			<center style="font-size: 24px;font-family: 微软雅黑">
				<s:property value="%{thesis.title}" escape="false" />
			</center>
			<br>
			<font face="微软雅黑"><center><s:property value="%{thesis.author}" escape="false" /></center>
			</font><br>
			<font style="line-height: 28px" face="微软雅黑"><s:property value="%{thesis.content}" escape="false" /></font>
		</div>

		<div class="pagebutton01" align="center">	
	
  <s:if test="%{thesis.id==pagebean.allRow}"><font
					size="2" face="微软雅黑" color="#ABABAB">第一篇&nbsp;&nbsp;上一篇</font></s:if>

<s:else>
				<a href="find_by_id.action?thesis.id=<s:property value="%{pagebean.allRow}" />"><font
					size="2" face="微软雅黑">第一篇</font></a> 
				<a
					href="find_by_id.action?thesis.id=<s:property value="%{thesis.id+1}" />"><font
					size="2" face="微软雅黑">上一篇</font></a>
			</s:else>
		<font
					size="2" face="微软雅黑" >当前 <font color="blue"><s:property value="%{pagebean.allRow-thesis.id+1}"/></font>/<font color="blue"><s:property value="%{pagebean.allRow}"/></font> 篇</font>
					<font
					size="2" face="微软雅黑" ><a href="client_list_Page.action">返回目录列表</a></font>
			<s:if test="%{thesis.id==1}"><font
					size="2" face="微软雅黑" color="#ABABAB">下一篇&nbsp;&nbsp;最后一篇</font></s:if>
					
			<s:else>
				<a
					href="find_by_id.action?thesis.id=<s:property value="%{thesis.id-1}" />"><font
					size="2" face="微软雅黑">下一篇</font></a>
				<a href="find_by_id.action?thesis.id=1"><font size="2"
					face="微软雅黑">最后一篇</font></a>
			</s:else>
	
	<br>
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
			 <div class="copyright">
		<font face=微软雅黑 size=2px>Copyright@梦之站 | 湖南省长沙市(雨花区)万家丽南路2段960号
			电话：0731-2309047 邮箱：dreamstationx.@sina.com
			</font>
		</div> 
		</div>
		

	</body>
	</html>