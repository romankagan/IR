<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="nl.tudelft.ir.*"
    import="javax.servlet.http.HttpServletRequest"
    import="java.util.*"
    import="nl.tudelft.ir.types.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="background:#f5f5f5;padding:20px;color:#000;margin-left:-50%;margin-top:30px;width:200%;">
<div>
</div>

<div style="font-size:10px;">	
<a href=""> See all</a><br /><br />

<div style="font-weight:bold;float:left;width:20%;"> Subject </div><br />



<br />
<%
String query = request.getParameter("q");
String queryType = request.getParameter("queryType");
String field = request.getParameter("fieldType");
int pageSize = Integer.parseInt(request.getParameter("pageSize"));
IndexSearch idx = new IndexSearch();
ArrayList<Result> res = idx.Search(field, query, pageSize);
for (int i = 0; i < res.size(); i++) {
	out.print("<a href=read.jsp?q="+res.get(i).getPath()+">"+res.get(i).getSubject()+" <br />");
}


%>

</div>

</div>
</body>
</html>