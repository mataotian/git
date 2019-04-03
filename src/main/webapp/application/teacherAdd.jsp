<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <form action="teacher/add" method="post">
        姓名:<input type="text" name="tname"><br/>
        年龄:<input type="text" name="age"><br/>
        班级编号<select name="cid">
                <c:forEach items="${roomList}" var="room">
                    <option value="${room.cid}">${room.cname}</option>
                </c:forEach>
                </select>
        <input type="submit" value="添加">
    </form>
</body>
</html>
