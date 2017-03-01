<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'makeit.jsp' starting page</title>
    
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
  　<!--用户名返回的是一个值，用gerParameter，爱好返回的是一个字符串数组，用getParameterValues -->
　　用户名：<%=request.getParameter("username")%>
　　爱好:
<% 
	String [] favoities=request.getParameterValues("favorite");
	for ( int j=0; j<favoities.length;j++){
	out.print(favoities[j]+"&nbsp;&nbsp;");
	}
     
     %><br>
  </body>
</html>
