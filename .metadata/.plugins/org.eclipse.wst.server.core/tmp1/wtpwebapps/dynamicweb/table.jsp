<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The blog's list</title>
</head>
<body>

<table width="100%" border="1" align=center> 
	<tr bgcolor=#255500>
	<th>HeadName</th> <th>Values</th>
	</tr>
	
	<%
		Enumeration eHeadName = request.getHeaderNames();
		while(eHeadName.hasMoreElements())
		{
			String strParaName = (String)eHeadName.nextElement();
			out.print("<tr><td>" + strParaName + "</td>\n");
			String strValue = request.getHeader(strParaName);
			out.print("<td>" + strValue + "</td></tr>");
		}
	%>

</table>

</body>
</html>