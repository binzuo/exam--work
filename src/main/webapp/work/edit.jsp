<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work edit page</title>
    </head>
    <body>
        <h1>EDIT Work</h1>
        <form action="${ctx}/work/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.work.id}">
            WORKNUMBER: <input name="worknumber" value="${sessionScope.work.worknumber}"><br>
            WORKNAME: <input name="workname" value="${sessionScope.work.workname}"><br>
            WORKDUTY: <input name="workduty" value="${sessionScope.work.workduty}"><br>
            WORKNEED: <input name="workneed" value="${sessionScope.work.workneed}"><br>
            WORKNOTE: <input name="worknote" value="${sessionScope.work.worknote}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>