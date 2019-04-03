<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
<form action="room/update" method="post">
    <input type="hidden" name="cid" value="${room.cid}"/>
    班级名<input type="text" name="cname" value="${room.cname}"/><br/>
    <input type="submit" value="修改"/>
</form>
</body>
</html>
