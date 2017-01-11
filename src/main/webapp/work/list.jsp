<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <c:import url="add.jsp"/>
        <hr/>
        <h1>LIST Work</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>WORKNUMBER</th>
                <th>WORKNAME</th>
                <th>WORKDUTY</th>
                <th>WORKNEED</th>
                <th>WORKNOTE</th>
                <th colspan="3">OPERATION</th>
            </tr>
            <c:forEach var="work" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${work.worknumber}</td>
                <td>${work.workname}</td>
                <td>${work.workduty}</td>
                <td>${work.workneed}</td>
                <td>${work.worknote}</td>
                <td><a href="${ctx}/work/search/${work.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/work/remove/${work.id}" onclick="return del()">REMOVE</a></td>
                <td><a href="${ctx}/work/querypersonbyworkId/${work.id}">查看应聘情况</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="work/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>