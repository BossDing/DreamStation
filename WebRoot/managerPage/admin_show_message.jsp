<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<!-- Site Title -->
<title>留言板</title>

<!-- Meta Data -->

<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">
<link rel="shortcut icon" href="image/news_title_pic.png">
<!-- Site Theme Styling -->
<link rel="stylesheet" type="text/css" href="css/back_manage.css">


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
<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
<script type="text/javascript">
 		
 		function del() {
 		if(confirm("你确定要删除吗?"))
 		{
 		 	return true;
 		}
 		
 		return false;
			
		}
 	</script>
</head>
<body>

	<div class="body">
		<div class="top">
			<img alt="" src="image/manager_top.jpg" />
		</div>
		<div class="left">
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
			<center>
				<h1>留言管理</h1>
			</center>
			<table cellspacing="0" border="1" style="border-color: #EFF2FF" >
				<colgroup>
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
				</colgroup>
				<tr>
					<td width=30px>序号</td>
					<td width=30px>昵称</td>
					<td width=200px>留言内容</td>
					<td width=30px>留言时间</td>
					<td width=200px>回复内容</td>
					<td width=30px>回复时间</td>
					<td width=30px>审核状态</td>
					<td width=30px>更新</td>
					<td width=30px>删除</td>
				</tr>
				<s:iterator value="list_message" id="message">
					<tr>
						<td ><s:property value="#message.id" />
						</td>
						<td style="width:80px"><s:property value="#message.nickname" />
						</td>
						<td style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;<s:property
								value="#message.comment" />
						</td>
						<td style="width:70px"><s:date name="#message.commentTime"
								format="yy-MM-dd HH:mm"></s:date>
						</td>
						<td style="width:150px;text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;<s:property
								value="#message.reply" />
						</td>
						<td style="width:70px"><s:date name="#message.replyTime"
								format="yy-MM-dd HH:mm"></s:date>
						</td>
						<td><s:if
								test="#message.state==0">0:未审核</s:if> <s:elseif
								test="#message.state==1">1:审核通过</s:elseif></td>
						<td><s:if test="#message.state==1">
								<input type="button" disabled="disabled" value="已审核" />
							</s:if>
							<s:else>
								<s:a href="reply_message.action?message.id=%{#message.id}">
									<input type="button" value="审核" />
								</s:a>
							</s:else>
						</td>
						<td><s:a
								href="delete_message.action?message.id=%{#message.id}"
								onclick="return  del()">
								<input type="button" value="删除" />
							</s:a>
						</td>
					</tr>
				</s:iterator>

				<s:iterator value="pagebean">


					<td colspan="12">共 <font color="red"><s:property
								value="allRow" />
					</font> 条记录 共 <font color="red"><s:property value="totalPage" />
					</font> 页 当前是第 <font color="red"><s:property value="currentPage" />
					</font> 页 <s:if test="%{currentPage == 1}">
							<input type="button" value="第一页" />
							<input type="button" value="上一页" />
						</s:if> <s:else>
							<a href="list_all_messages.action?page=1"><input
								type="button" value="第一页" /></a>
							

							<a
								href="list_all_messages.action?page=<s:property value="%{currentPage-1}"/>"><input
								type="button" value="上一页" /></a>
							
						</s:else> <s:if test="%{currentPage != totalPage}">
							<a
								href="list_all_messages.action?page=<s:property value="%{currentPage+1}"/>"><input
								type="button" value="下一页" /></a>
							<a
								href="list_all_messages.action?page=<s:property value="totalPage"/>"><input
								type="button" value="最后一页" /></a>
						</s:if> <s:else>
							<input type="button" value="下一页" />
							<input type="button" value="最后一页" />
						</s:else>
						
						</td>




				</s:iterator>

			</table>
		</div>
	</div>

</body>
</html>
