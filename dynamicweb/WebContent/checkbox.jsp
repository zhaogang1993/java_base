<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>从复选框中读取数据</h1>
<ul>
<li>
	<p><b>Zavier 是否选中:</b>
   <%= request.getParameter("Zavier")%>
	</p>
</li>
<li>
	<p><b>Jenwl是否选中:</b>
   <%= request.getParameter("Jenwl")%>
	</p>
</li>
</ul>

</body>
</html>