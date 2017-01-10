<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work add page</title>
    </head>
    <body>
        <h1>ADD Work</h1>
        <form action="${ctx}/work/add" method="post">
            <input name="worknumber" placeholder="WORKNUMBER"><br>
            <input name="workname" placeholder="WORKNAME"><br>
            <input name="workduty" placeholder="WORKDUTY"><br>
            <input name="workneed" placeholder="WORKNEED"><br>
            <input name="worknote" placeholder="WORKNOTE"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>