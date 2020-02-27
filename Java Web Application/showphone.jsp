<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.*"%>
<%@page import="java.sql.*"%>

<center>
		<a href="index.jsp"><button>Add Phone</button></a>
		<a href="showphone.jsp"><button>Show Phone</button></a>
	</center>
<h2 align="center"><font><strong>Show Phones</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#f1f1c1">
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Phone Number</b></td>
</tr>

<%
    Class.forName("org.sqlite.JDBC").newInstance();
	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	
	try {
		
		connection = DriverManager.getConnection("jdbc:sqlite:phone.db");
		ps = connection.prepareStatement("Select * from phone_nbrs ORDER by first_name ASC");
		resultSet = ps.executeQuery();
		
	}catch(SQLException e) {
		
		
	}

%>
</table>