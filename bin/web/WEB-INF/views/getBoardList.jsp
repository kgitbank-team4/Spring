<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KGITBANK
  Date: 2019-08-20
  Time: 오후 5:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${boardList}" var="boardList">
    <tr>
        <td>${boardList.id}</td>
        <td>${boardList.boardname}</td>
    </tr>
</c:forEach>

</body>
</html>
