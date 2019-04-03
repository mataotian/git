<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <h1>hello</h1>
           <form method="post" action="student/editorStudent">
               <input type="hidden" name="id" value="${student.id}"><br/>
               姓名<input type="text" name="sname" value="${student.sname}"><br/>
              年龄<input type="text" name="age" value="${student.age}"><br/>
               班级编号
               <select name="cid">
                   <c:forEach items="${roomList}" var="room">
                       <option value="${room.cid}" <c:if test="${student.cid==room.cid}">selected="selected"</c:if> >${room.cname}</option>
                   </c:forEach>
               </select><br/>
               <input type="submit" value="提交" >
           </form>
</body>
</html>
