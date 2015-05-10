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

<title>团队精神管理</title>
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
<link rel="shortcut icon" href="image/news_title_pic.png">
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
		<div class="top">
			<img alt="" src="image/manager_top.jpg" />
		</div>
		<div class="left">
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
			<center>
				<h1>团队精神更新</h1>
			</center>
			<br>

			<form action="update_info.action" method="post">
				<center>
					<s:hidden name="linkus.id" rows="1" cols="10" value="%{linkus.id}"></s:hidden>
					<p>
						联系人
						<s:textarea name="linkus.phone" rows="1" cols="40"
							value="%{linkus.phone}"></s:textarea>
					<p>

						qq:
						<s:textarea name="linkus.qq" rows="1" cols="40"
							value="%{linkus.qq}"></s:textarea><p>
						邮箱：
						<s:textarea name="linkus.email" rows="1" cols="40"
							value="%{linkus.email}"></s:textarea><p>
						地址：
						<s:textarea name="linkus.address" rows="1" cols="40"
							value="%{linkus.address}"></s:textarea>
					<p>
						<input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="重置" />
				</center>
			</form>
		</div>

	</div>


</body>
</html>
