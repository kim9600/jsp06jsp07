<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
<title>login </title>
</head>
<body>
<jsp:include page="/menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">로그인</h1>
	</div>
</div>
<div class="container" align="center">
  <div class="col-md-4 col-md-offset-4">
  <h3 class="form-signin-heading">Please sign in</h3>
  <%
  	  String error=request.getParameter("error");
      if(error!=null){
    	  out.print("<div class='alert alert-danger'>");
    	  out.print("아이디와 비밀번호를 확인해주세요!");
    	  out.print("</div>");
      }
  %>
  
  <form class="form-signin" 
        action="processLoginMember.jsp" method="post">
  <div class="form-group">
     <label for="inputUserName" class="sr-only">User Name</label>
     <input type="text" class="form-control" name="id" 
                     placeholder="ID" required autofocus>
  
  </div>
  <div class="form-group">
     <label for="inputPassword" class="sr-only">Password</label>
     <input type="password" class="form-control" name="password" 
                     placeholder="Password" required>
  
  </div>
  <button type="submit" class="btn btn btn-lg btn-success btn-block">로그인</button>
  
  </form>
  
  </div>
</div>

</body>
</html>