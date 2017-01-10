<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp" %>
<html>
<head>
    <title>user page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>user page</h1>
user: ${sessionScope.user.username}<br/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>WORKNUMBER</th>
        <th>WORKNAME</th>
        <th>WORKDUTY</th>
        <th>WORKNEED</th>
        <th>WORKNOTE</th>
        <th>OPERATION</th>
    </tr>
    <c:forEach var="work" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${work.worknumber}</td>
            <td>${work.workname}</td>
            <td>${work.workduty}</td>
            <td>${work.workneed}</td>
            <td>${work.worknote}</td>
            <td><a href="${ctx}/work/query/${work.id}">应聘</a></td>
            </tr>
    </c:forEach>
</table>
<a href="${ctx}/user/logout">LOG OUT</a>
</body>
</html>
