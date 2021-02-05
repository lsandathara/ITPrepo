<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "kfr";
String userid = "root";
String password = "root";
//String studentID=request.getParameter("empid");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<title>Search Data - KFR</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="search.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background:#373a39" >


 
<div style="width:1000px">
<div class="container-fluid bg-3">
<br><br>
<table class="table table-striped" style="margin:10px" >

<tr>
					<th>tableId</th>
					<th>menuId</th>
					<th>name</th>
					<th>date</th>
					<th>email</th>
					<th>contactNo</th>
					<th>noOfPeople</th>
				</tr>
<%
try{
	
	String empid = request.getParameter("empid");
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="select * from shift where empid ='"+empid+"' ";

resultSet = statement.executeQuery(sql1);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("tableId") %></td>
<td><%=resultSet.getString("menuId") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("contactNo") %></td>
<td><%=resultSet.getString("noOfPeople") %></td>

</tr>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</div>
</div>

</body>
</html>