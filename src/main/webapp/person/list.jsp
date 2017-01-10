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
        <c:import url="add.jsp"/>
        <hr/>
        <h1>LIST Person</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>USERNAME</th>
                <th>SEX</th>
                <th>XUELI</th>
                <th>MAJOR</th>
                <th>SKILL</th>
                <th>WORKID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="person" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${person.username}</td>
                <td>${person.sex}</td>
                <td>${person.xueli}</td>
                <td>${person.major}</td>
                <td>${person.skill}</td>
                <td>${person.workId}</td>
                <td><a href="${ctx}/person/search/${person.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/person/remove/${person.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="person/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>