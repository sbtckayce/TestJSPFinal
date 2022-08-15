<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 8/15/2022
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <%
        String name =request.getParameter("name");
        String desc =request.getParameter("desc");

    %>
    <div class="panel-primary">
        <div class="panel-heading">
            <h4 class="panel-title">COMMENTS</h4>
        </div>
        <div class="panel-body">
            <%
                String message="";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    String url ="jdbc:mysql://localhost:3306/testjsp";
                    String USER = "root";
                    String PASS = "";
                    Connection con=DriverManager.getConnection(url,USER,PASS);
                    PreparedStatement ps = con.prepareStatement("INSERT INTO comment VALUES(?,?);");
                    ps.setString(1, name);
                    ps.setString(2, desc);

                    ps.executeUpdate();
            %>
            <strong><big>USER NAME IS : <%=name %><br>
                EMAIL IS : <%=desc %><br>
                ON TOPIC :<%=desc %><br>
                YOUR COMMENT :<%=name %>
            </strong>
            <%con.close();
            }catch (Exception e) {
                System.out.println(e);
            }
            %>
        </div>
    </div>
</div>
</body>
</html>
