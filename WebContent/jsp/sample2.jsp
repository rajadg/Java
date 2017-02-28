<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sample JSP page 02</title>
</head>
<body>
<h1>Welcome to JSP page 2</h1>
This page lists request information

<br/><br/>
<a href='../index.html'>Back to home</a>
<br/><br/>
<h3>Request Headers</h3>
<%
	Enumeration<String> names = request.getHeaderNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement();%>
		<b><%=name %></b>:<%=request.getHeader(name) %><br/>
		<%
	}
%>
<h3>Request Parameters</h3>
<%
	Map<String, String[]> parameters = request.getParameterMap();
	for (String key: parameters.keySet()) {
		String[] values = parameters.get(key);%>
		<b><%=key %></b>:<%=String.join(",", values) %><br/>
<%	}
%>
</body>
</html>