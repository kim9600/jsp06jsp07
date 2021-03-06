<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- parseNumber "숫자" "패턴" , 숫자가 패턴에 맞으면 number타입으로 변환  -->
<fmt:parseNumber value="1,100.12" pattern="0,000.00" var="num"/>
parse결과(0,000.00):${num}<p>
<fmt:parseNumber value="1,100.12" pattern="#,###.##" var="num"/>
parse결과(#,###.##):${num}<p>
<fmt:parseNumber value="1,100.12" pattern="0,000.00" var="num"
              integerOnly="true"/>
정수만 parse결과:${num}<p>
<fmt:formatNumber value="${num}" var="fmtNum" pattern="0,000.00"/>
천단위 묶음 표시:${fmtNum}<p>

</body>
</html>