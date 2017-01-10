<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>person edit page</title>
    </head>
    <body>
        <h1>EDIT Person</h1>
        <form action="${ctx}/person/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.person.id}">
            USERNAME: <input name="username" value="${sessionScope.person.username}"><br>
            SEX: <input name="sex" value="${sessionScope.person.sex}"><br>
            XUELI: <input name="xueli" value="${sessionScope.person.xueli}"><br>
            MAJOR: <input name="major" value="${sessionScope.person.major}"><br>
            SKILL: <input name="skill" value="${sessionScope.person.skill}"><br>
            WORKID: <input name="workId" value="${sessionScope.person.workId}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>