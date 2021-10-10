
<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String driver = "oracle.jdbc.driver.OracleDriver";
    String userid = "system";
    String passwd = "1234";

    Class.forName(driver);
    Connection conn = DriverManager.getConnection(
                url, userid, passwd
    );
%>