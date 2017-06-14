<!-- 本文档作为html注释而存在，里面介绍一个jsp文件的各个组成部分，这比text格式的读书笔记好不少 -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>

<!-- 下面是声明的语法 -->
<%!
	Date t_dt = new Date(); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tutorial_1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    <!-- 下面是表达式，表达式的格式是< % = -->
    今天是：<%= t_dt.toLocaleString() %>
    <%-- 这个是jsp注释--%>
    
    <ol>
    <% for (int i = 0;i<7;i++){ %>
    <li>message
 	<%} %>
 	</ol> 
 	<%
 		String t_userName = request.getParameter("userName");
 		if((null == t_userName)||
 			(0 == t_userName.length()))
 			out.print("no user comes");
 		else
 			out.print("welcome:" + t_userName);
 	 %>
 	
 	<form method="POST" action="tutorial/tutorial_1.jsp">
 	姓名：<input type="text" name="userName" ></input>
 	<input type="submit" name="提交">
 	</form>  
  </body>
</html>
