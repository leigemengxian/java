<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>response 对象的学习</title>
    <%
    /*     response对象
       response对象事实上就是对客户端的响应，主要有3个用处
       
       1. 利用response 对象进行重定向
       2. 利用response 设置Http头
       3.利用response存储cookie
       
       1.利用response 进行重定向
       
       response.sendRedirect(目标页面路径);
       这个很好理解， 我们可以这样认为：
redirect 相当于告诉了客户端，使客户端知道接下来要去请求哪一个地址，相当于客户端重新请求一次，因此，地址显示栏会改变的。
    
    如果需要传递参数，可以通过在目标路径的url中添加；  
    
       2.利用response 设置Http 头
       以上代码都是表示在客户端缓存中不保存页面的拷贝
response.setHeader("Cache-Control", "no-cache"); 
         2. 每格5秒自动刷新
     response.setIntHeader("Refresh", 2); 
    
    
    
    
    */
    
     %>
	

  </head>
  
  <body>
   


 <%  
response.setHeader("Pragma","No - cache");  
response.setHeader("Cache - Control","no - cache");  
response.setDateHeader("Expires",0) ;  
%>  
以上代码都是表示在客户端缓存中不保存页面的拷贝
<%response.setHeader("Cache-Control", "no-cache"); %>
2. 每格5秒自动刷新
<% response.setIntHeader("Refresh", 2); %>









   
  </body>
</html>
