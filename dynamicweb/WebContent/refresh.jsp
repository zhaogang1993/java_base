<%@page import="jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 3);
		Calendar cCalendar = new GregorianCalendar();
		String strAmPm;
		int iHour = cCalendar.get(Calendar.HOUR);
		int iMinute = cCalendar.get(Calendar.MINUTE);
		int iSecond = cCalendar.get(Calendar.SECOND);
		
		String CT = iHour +":"+ iMinute +":"+ iSecond ;
		out.println("当前时间: " + CT + "\n");
	%>

</body>
</html>