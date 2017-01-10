<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>person add page</title>
    </head>
    <body>
        <h1>ADD Person</h1>
        <form action="${ctx}/person/add" method="post">
            <input name="username" placeholder="USERNAME"><br>
            <input name="sex" placeholder="SEX"><br>
            <input name="xueli" placeholder="XUELI"><br>
            <input name="major" placeholder="MAJOR"><br>
            <input name="skill" placeholder="SKILL"><br>
            <input  name="workId" placeholder="WORKID"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>