<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>request对象的学习</title>
    <%
    /*        Request 内置对象的学习
           request 代表了客户端的请求信息， 主要用于获取客户端的参数和流
             主要有两个用处 ：
             1. 获取客户端的参数，主要有以下的两种方式
              String getParameter(String name) 获取客户端传递给服务器的name的值， 当传递此函数的参数名没有对应的实际参数时，返回NUll
              String[] getParameterValues(String name) 以字符串数组的形式返回指定参数的所有值；
             具体的代码，可以参考下面的内容，其中，requst 页面是提交， makeit页面是接受
             
             
             
             
             
             
             
             2. 获取客户端的基本信息；
              String  getMethod();  得到提交的方式；
              String getRequestURI(); 得到请求的URL地址；
              String getProtocol();得到协议的名字
              String getServletPath();获取客户端请求服务器文件的路径
              String getQueryString();得到uRL 的请求部分主要针对的是get 方式， 对于post得不到数据
              String getServerName(); 得到服务器的名称
              String getServerPort()； 得到服务器的端口号；
              String getRemoteAddr();  得到客户端的Ip 地址
              String getRemoteHost(); 得到客户端的主机名；
              
              
              
              使用方法： request.getRemoteHost()  是《 =
    
    */
    
     %>
	

  </head>
  
  <body>
    <%=request.getRemoteHost() %><br/>
    <%=request.getLocalAddr() %>
    <%=request.getMethod() %>
    
    
    <form action="makeit.jsp" name="loginForm" method="post">

　　<table>
　　<tr>
　　<td>用户名：</td>
　　<td><input type="text" name="username"/></td>
　　</tr>


　　<tr>
　　<td>爱好：</td>	
　　<td>
　　　　<input type="checkbox" name="favorite" value="read"/>读书
　　　　<input type="checkbox" name="favorite" value="yujia"/>瑜伽
　　　　<input type="checkbox" name="favorite" value="fadai"/>发呆
　　</td>
　　</tr>


　　<tr>
　　<td>显示：</td>
　　<td colspan="2"><input type="submit" name="提交"/></td>
　　</tr>
　　</table>
　　</form>
    
　


    
  </body>
</html>
