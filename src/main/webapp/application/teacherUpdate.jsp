<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <form action="teacher/update" method="post">
        <input type="hidden" name="id" value="${teacher.id}">
        姓名:<input type="text" name="tname" value="${teacher.tname}"><br/>
        年龄:<input type="text" name="age" value="${teacher.age}"><br/>
        班级编号<select name="cid">
                <c:forEach items="${roomList}" var="room">
                    <option <c:if test="${room.cid==teacher.cid}">selected="selected"</c:if>  value="${room.cid}">${room.cname}</option>
                </c:forEach>
                </select>
        <input type="submit" value="添加">
    </form>
</body>
</html>
