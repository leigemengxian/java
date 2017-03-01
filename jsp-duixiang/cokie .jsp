<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>cookie对象学习</title>
    <%
    /*   Cookie 使用和学习
        Cookie 最大的区别在于内容存在客户端，使用起来很是简单的
       
    java对cookie的操作比较简单，主要介绍下建立cookie和读取cookie，以及如何设定cookie的生命周期和cookie的路径问题。

 

建立一个无生命周期的cookie，即随着浏览器的关闭即消失的cookie，代码如下

Cookie cookie = new Cookie("cookiename","cookievalue");
response.addCookie(cookie);
 

下面建立一个有生命周期的cookie,可以设置他的生命周期


cookie = new Cookie("cookiename","cookievalue");
 
cookie.setMaxAge(3600); 
如果是负值，表示改制仅仅存在于当前浏览器进程中，浏览器关闭，cookie消失
等于0，表示删除当前的cookie
 
//设置路径，这个路径即该工程下都可以访问该cookie 如果不设置路径，那么只有设置该cookie路径及其子路径可以访问
 
cookie.setPath("/");
response.addCookie(cookie);
 

下面介绍如何读取cookie，读取cookie代码如下


Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
for(Cookie cookie : cookies){
    cookie.getName();// get the cookie name
    cookie.getValue(); // get the cookie value
}
 

上面就是基本的读写cookie的操作。我们在实际中最好进行一下封装，比如增加一个cookie，我们关注的是cookie的name，value,生命周期，所以进行封装一个函数，当然还要传入一个response对象，addCookie()代码如下


/**
 * 设置cookie
 * @param response
 * @param name  cookie名字
 * @param value cookie值
 * @param maxAge cookie生命周期  以秒为单位
 */
 /*
public static void addCookie(HttpServletResponse response,String name,String value,int maxAge){
    Cookie cookie = new Cookie(name,value);
    cookie.setPath("/");
    if(maxAge>0)  cookie.setMaxAge(maxAge);
    response.addCookie(cookie);
}
 

读取cookie的时候，为了方便我们的操作，我们希望封装一个函数，只要我们提供cookie的name，我们便可以获取cookie的value，带着这个想法，很容易想到将cookie封装到Map里面，于是进行下面的封装
*/

/**
 * 根据名字获取cookie
 * @param request
 * @param name cookie名字
 * @return
 */
 /*
public static Cookie getCookieByName(HttpServletRequest request,String name){
    Map<String,Cookie> cookieMap = ReadCookieMap(request);
    if(cookieMap.containsKey(name)){
        Cookie cookie = (Cookie)cookieMap.get(name);
        return cookie;
    }else{
        return null;
    }   
}
 
 
 */
/**
 * 将cookie封装到Map里面
 * @param request
 * @return
 */
 /*
private static Map<String,Cookie> ReadCookieMap(HttpServletRequest request){  
    Map<String,Cookie> cookieMap = new HashMap<String,Cookie>();
    Cookie[] cookies = request.getCookies();
    if(null!=cookies){
        for(Cookie cookie : cookies){
            cookieMap.put(cookie.getName(), cookie);
        }
    }
    return cookieMap;
}
    */
  
    
     %>
	

  </head>
  
  <body>
   
<br>
  </body>
</html>
