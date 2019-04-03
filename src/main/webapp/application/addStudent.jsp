<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="<%=request.getContextPath()+"/"%>">
<body>
    <h1>hello</h1>
           <form method="post" action="student/addStudent">

               姓名<input type="text" name="sname" ><br/>
              年龄<input type="text" name="age" ><br/>
               班级编号
               <select>
                   <c:forEach items="${roomlist}" var="room">
                        <option name="${room.cid}">${room.cname}</option>
                   </c:forEach>
               </select><br/>
               <input type="submit" value="提交" >
           </form>
</body>
</html>
