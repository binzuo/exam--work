<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>person list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
    ${sessionScope.pagination.list}
        <h1>LIST Person</h1>
    <hr>
    <h1>各岗位应聘情况</h1>
    <table border="1">
        <tr>
            <th>WORKNAME</th>
            <th>USERNAME</th>
            <th>SEX</th>
            <th>XUELI</th>
            <th>MAJOR</th>
            <th>SKILL</th>
        </tr>
        <c:forEach var="person" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${person.work.workname}</td>
                <td>${person.username}</td>
                <td>${person.sex}</td>
                <td>${person.xueli}</td>
                <td>${person.major}</td>
                <td>${person.skill}</td>
            </tr>
        </c:forEach>
    </table>
    <c:import url="${ctx}/commons/page.jsp">
        <c:param name="path" value="work/${sessionScope.pagination.statement}"/>
    </c:import>
    </body>
</html>