<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert my title here</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>


</head>
<body>

Entereds details are given below
<br><br><br><br>
Name: ${name} <br><br>

Contact: ${contact} <br><br>

All Details:
 <table>
	      <tr>
		      <th>Name</th>
		      <th>Password</th>
	      </tr>
	
<c:forEach var="sm" items="${data}" >

           <tr>
		      <td>${sm.name}</td>
		      <td>${sm.contact}</td>
	      </tr>
	
</c:forEach>

	</table>	      
       <br><br>
Message: ${message}
      
      
</body>
</html>