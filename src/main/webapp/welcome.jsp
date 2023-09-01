<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar Mahasiswa</title>
</head>
<body>
<h1>Welcome ${sessionScope.username}</h1>
<table border="1">
    <tr>
        <th>Department</th>
        <th>Student ID</th>
        <th>Marks</th>
        <th>Pass %</th>
    </tr>
    <c:forEach items="${studentList}" var="student">
        <tr>
            <td>${student.getDepartment()}</td>
            <td>${student.getStudentId()}</td>
            <td>${student.getMarks()}</td>
            <td>${student.getPassPercentage()}%</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
