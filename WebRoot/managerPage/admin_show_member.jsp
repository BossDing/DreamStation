<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成员管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="image/news_title_pic.png">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/back_manage.css">
	<style type="text/css">
  body,html{
             width: 1004px;
		padding: 0px;
		margin: 0px auto; /*设置居中  */
		text-align: center; /*兼容性更好  */
        }

</style>
<script type="text/javascript">
function del()
{
if(confirm("确定要删除吗？"))
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
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
		<center><h1>成员管理</h1></center><br>
		
		
		<table cellspacing="0" align=center border="1" style="border-color: #EFF2FF">
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
                              <td height="30px"class="head1" width="50px">编号</td>
                   				<td class="head2" width="50px">名字</td>
                               <td class="head1" width="300px">介绍</td>
                               <td class="head2" width="50px">年纪专业</td>
                                 <td class="head2" width="50px">部门</td>
                                   <td class="head2" width="50px">小图片</td>
                                 <td class="head2" width="50px">大图片</td>
                               <td class="head1" width="50px">删除</td>
                               <td class="head2" width="50px">更新</td>
                              </tr>
 	 <s:iterator value="listMember" id="member" status="status">
                                 <tr>
                                 <td><s:property value="#member.id"/></td>
                                 <td><s:property value="#member.name"/>
                           		<td><s:property value="#member.introduction"/>
                           		
                           		<td><s:property value="#member.grade_major"/>
                           		<td><s:property value="#member.category"/>
                           		<td><s:property value="#member.image_small"/>
                           		<td><s:property value="#member.image_big"/>
                           	<%-- 	<td><s:property value="#member.link"/> --%>
                           		
                           		</td>
                           		
                    <td>
                             
                           <input type="button" value="删除" name="删除" onclick="window.location='RemoveMember.action?member.id=<s:property value="#member.id"/>';return del()"></input>
                               </td>
                                 <td>
                                    <input type="button" value="更新" name="更新" onclick="window.location='list_member_to_update.action?member.id=<s:property value="#member.id"/>'"></input>

                               </td>
                            
                              </tr>
                         </s:iterator>
                    
                    
                    
                    
                    
                    
                    
                     
				<s:iterator value="pagebean">

					<tr><td> <input type="button" value="添加" name="添加" onclick="window.location='addmember.jsp'"></input></td>
						<td colspan="12">共<s:property
									value="allRow" />条记录 共<s:property
									value="totalPage" />页 当前是第<s:property
									value="currentPage" />页 <s:if test="%{currentPage == 1}">
                        	　 第一页   上一页 
                        	</s:if> <s:else>
								<a href="find_black_first_four.action?page=1">第一页</a>

								<a
									href="find_black_first_four.action?page=<s:property value="%{currentPage-1}"/>">上一页</a>
							</s:else> <s:if test="%{currentPage != totalPage}">
								<a
									href="find_black_first_four.action?page=<s:property value="%{currentPage+1}"/>">下一页</a>
								<a href="find_black_first_four.action?page=<s:property value="totalPage"/>">最后一页</a>
							</s:if> <s:else>
           				下一页 最后一页
           				</s:else>
						</td>


					</tr>

				</s:iterator>
                         
                         
                         
                         
                         
                         
                         
                      <tr></tr>
                         
		</table>
            </div>
		
		
		
		
		</div>


  </body>
</html>