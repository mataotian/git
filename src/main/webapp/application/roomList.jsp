<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <table border="1px" cellspacing="0px">
        <tr>
            <td>班级编号</td>
            <td>班级名</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${pageInfo.list}" var="room">
        <tr>
            <td>${room.cid}</td>
            <td>${room.cname}</td>
            <td><a href="room/toUpdate/${room.cid}">编辑</a>&nbsp;&nbsp;<a href="room/delete/${room.cid}">删除</a></td>
        </tr>
        </c:forEach>
        <tr>
            <td colspan="3"><a href="room/toAdd">添加</a></td>
        </tr>
    </table>
    <c:choose>
        <c:when test="${empty pageInfo.list}">
            暂无数据
        </c:when>
        <c:otherwise>
            <a href="room/page/1">首页</a>
            <c:if test="${pageInfo.pageNum!=1}">
                <a href="room/page/${pageInfo.pageNum-1 }">上一页</a>
            </c:if>
            <c:if test="${pageInfo.pageNum!=pageInfo.lastPage }">
                <a href="room/page/${pageInfo.pageNum+1 }">下一页</a>
            </c:if>
            <a href="room/page/${pageInfo.lastPage }">尾页</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
