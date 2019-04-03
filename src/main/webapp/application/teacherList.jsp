<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <a href="teacher/toAdd">添加</a>
    <table>
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>年龄</td>
            <td>班级编号</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${pageInfo.list}" var="teacher">
            <tr>
                <td>${teacher.id}</td>
                <td>${teacher.tname}</td>
                <td>${teacher.age}</td>
                <td>${teacher.room.cname}</td>
                <td><a href="teacher/toUpdate/${teacher.id}">编辑</a>|<a href="teacher/delete/${teacher.id}">删除</a> </td>
            </tr>
        </c:forEach>
    </table>

    <c:choose>
        <c:when test="${empty pageInfo.list}">
            暂无数据
        </c:when>
        <c:otherwise>
            <a href="teacher/page/1">首页</a>
            <c:if test="${pageInfo.pageNum!=1}">
                <a href="teacher/page/${pageInfo.pageNum-1 }">上一页</a>
            </c:if>
            <c:if test="${pageInfo.pageNum!=pageInfo.lastPage }">
                <a href="teacher/page/${pageInfo.pageNum+1 }">下一页</a>
            </c:if>
            <a href="teacher/page/${pageInfo.lastPage }">尾页</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
