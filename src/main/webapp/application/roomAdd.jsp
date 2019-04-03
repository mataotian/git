<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
<form action="room/add" method="post">
    班级名<input type="text" name="cname"/><br/>
    <input type="submit" value="添加"/>
</form>
</body>
</html>
