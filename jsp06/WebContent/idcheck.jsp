<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<%
  String id=request.getParameter("id");
%>
id:<%=id%>
<%
	if(id.equals("kim")){
%>
<script>
 alert("<%=id%>"+"는 이미 존재하는 아이디입니다.");
 history.go(-1);
</script>
<%}else{ %>
<script>
 alert("<%=id%>"+"는 사용가능한 아이디입니다.");
 history.go(-1);
</script>
<%} %>
</body>
</html>