<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Zavier's blog</title>
</head>
<body>

<h1> 包含test.jsp </h1>
<jsp:include page = "test.jsp" flush="true"/>

<h2>JSP 使用 JavaBean 实例</h2>
<jsp:useBean id="test" class="zg.testServlet.TestBean" />
 
<jsp:setProperty name="test" 
                    property="message" 
                    value="菜鸟教程..." />
 
<p>输出信息....</p>
 
<jsp:getProperty name="test" property="message" />

</body>
</html>