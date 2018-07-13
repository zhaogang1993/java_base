<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.net.*" %>
<%
	Cookie cooName = new Cookie("name", request.getParameter("name"));
	Cookie cooUrl = new Cookie("url", request.getParameter("url"));
	
	cooName.setMaxAge(60*60*24);
	cooUrl.setMaxAge(60*60*24);
	
	response.addCookie(cooName);
	response.addCookie(cooUrl);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   Cookie cookie = null;
   Cookie[] cookies = null;
   // 获取cookies的数据,是一个数组
   cookies = request.getCookies();
   if( cookies != null ){
      out.println("<h2> 查找 Cookie 名与值</h2>");
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
        
         out.print("参数名 : " + cookie.getName());
         out.print("<br>");
         out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") +" <br>");
         out.print("------------------------------------<br>");
      }
  }else{
      out.println("<h2>没有发现 Cookie</h2>");
  }
%>

<ul>
<li>
	<p><b>Name</b>
   <%= request.getParameter("name")%>
	</p>
</li>
<li>
	<p><b>URL</b>
   <%= request.getParameter("url")%>
	</p>
</li>
</ul>


</body>
</html>