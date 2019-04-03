<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <h1>hello</h1>
            <table border="1px" cellspacing="0px">
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>班级编号</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="student">
                <tr>

                        <td>${student.id}</td>
                        <td>${student.sname}</td>
                        <td>${student.age}</td>
                        <td>${student.cid}</td>
                    <td>
                        <a href="student/editor/${student.id}">编辑</a>
                        <a href="student/deleteStudent/${student.id}">删除</a>
                    </td>
                </tr>
                </c:forEach>
                <tr aria-colspan="5">
                    <td><a href="student/toAdd">添加</a></td>
                </tr>
            </table>

    <c:choose>
        <c:when test="${empty pageInfo.list}">
            暂无数据
        </c:when>
        <c:otherwise>
            <a href="student/page/1">首页</a>
            <c:if test="${pageInfo.pageNum!=1}">
                <a href="student/page/${pageInfo.pageNum-1 }">上一页</a>
            </c:if>
            <c:if test="${pageInfo.pageNum!=pageInfo.lastPage }">
                <a href="student/page/${pageInfo.pageNum+1 }">下一页</a>
            </c:if>
            <a href="student/page/${pageInfo.lastPage }">尾页</a>
        </c:otherwise>
    </c:choose>

</body>
</html>
