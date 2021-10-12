<%@ page import="inc.userDAO" %>
<%@page import="java.io.PrintWriter"%>
<jsp:useBean id="user" class="inc.user" scope="page" />
<jsp:setProperty name="user" property="getID" />
<jsp:setProperty name="user" property="userPassword" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    userDAO userDAO =new userDAO();
    int result=userDAO.login(user.getUserID(), user.getUserPassword());
    if (result == 1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인 성공')");
        script.println("location.href='main.jsp'");
        script.println("</script>");
    }else if(result == 0){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('비밀번호가 틀립니다')");
        script.println("history.back()");
        script.println("</script>");
    }else if(result == -1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('존재하지 않는 아이디입니다')");
        script.println("history.back()");
        script.println("</script>");
    }else if(result == -2){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('데이터베이스 오류입니다')");
        script.println("history.back()");
        script.println("</script>");
    }

%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
