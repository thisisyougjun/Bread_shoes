<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String driver = "oracle.jdbc.driver.OracleDriver";
    String userid = "system";
    String passwd = "1234";

    Class.forName(driver);

    Connection conn = DriverManager.getConnection(
            url, userid, passwd
    );

    request.setCharacterEncoding("UTF-8");
    String sql="insert into NIKE_MEMBER values (?, ?, ?, ?)";

    PreparedStatement pstmt = conn.prepareStatement(sql);

    pstmt.setString(1, request.getParameter("id"));
    pstmt.setString(2, request.getParameter("password"));
    pstmt.setString(3, request.getParameter("name"));
    pstmt.setString(4, request.getParameter("address"));

    pstmt.executeUpdate();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <script type="text/javascript">
        alert("회원가입을 축하 드립니다!")
        document.location.href="../index.html";
    </script>
</body>
</html>