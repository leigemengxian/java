<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>out对象的学习</title>
    <%
    /*        Out 内置对象的学习
      1. out 对象是什么
           out 对象是jsp的内置对象之一， 用处主要有两个 
          1》     向客户端输出各种各样的信息， 
          2》 对应用服务器中的输出缓冲区进行管理
          
          
          接下来，根据例子，进行学习。
          1. 向客户端输出信息
              out.print("hellow"); 
           out.println("你说的对， 我相信了");
           注意一个问题，这个时候，我们的对应的代码是被《% 包围的， 不是背的。
           
           
           2. 对服务器中输出缓冲器进行管理；
           主要有以下的几种常用的方法
           out.close(); 关闭输出流，， 从而可以强制中指当前页面的剩余部分向浏览器中输出
           out.clearBuffer();清除缓冲区中的数据，不把数据写入到客户端中
           out.clear();清除缓冲区中的数据，不把数据写入客户端，但是不能再之前使用out.flush();否则会产生异常。
           out.getRemaining(); 获取缓冲区中没有被占用的空间的大小
           out.flush(); 清除缓冲区中的数据，但是之前，先将之前缓冲区中的数据输出到客户端，然后在清除
           out.getBufferSize();获取缓冲区的大小。
           
        
    
    
    */
    
     %>
	

  </head>
  
  <body>
    <% out.print("hellow"); %>
     <% out.println("你说的对， 我相信了"); %>

   <% out.print("在试试"); %>
   <%  out.clearBuffer();%>
   <% out.print("不想在试试"); %>
    <br>
  </body>
</html>
