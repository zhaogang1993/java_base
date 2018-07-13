<%-- @开头表示JSP指令，指示整个文件的属性 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to 小钢炮's blog.</title>
</head>

<%-- %开头表示脚本程序 --%>

<body>
<% java.util.Date cDate = new java.util.Date(); %>

<h1>
	Today's date is <%= cDate.toString() %>
</h1>

<!-- 带感叹号属于申明语句 -->
<%--这也是注释 --%>
<%!
	private int iInitVar = 0;
	private int iSerCnt = 0;
	private int iDestoryCnt = 0;
%>
<%! 
	public void jspInit()
	{
		iInitVar++;
		System.out.println("jspInit() cnt : " + iInitVar);
	}
	public void jspDestory()
	{
		iDestoryCnt++;
		System.out.println("jspdestroy cnt : " + iDestoryCnt);
	}
%>
<%
	iSerCnt++;
	/* console output */
	System.out.println("Service cnt : " + iSerCnt);
	String strInitCnt = "Init cnt : " + iInitVar;
	String strDestoryCnt = "Destroy cnt : " + iDestoryCnt;
	String strServCnt = "Service cnt : " + iSerCnt;
	String strPeerIp = request.getRemoteAddr();
%>
<%-- =开头表示表达式 --%>
<p>
	<%=strInitCnt %> <%=strDestoryCnt %> <%=strServCnt %>
</p>
<p>
	<%=strPeerIp %>
</p>

<%! int iIndex=0; %>
<h3>循环语句</h3>

<% for (;iIndex < 3;++iIndex){ %>
	<font color="green" size="<%= iIndex %>">
		Zavier's blog
	</font><br />
<% } %>
</body>
</html>