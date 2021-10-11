<%@ page import="inc.login" %>
<jsp:useBean id="user" class="inc.user" scope="page" />
<jsp:setProperty name="user" property="getID" />
<jsp:setProperty name="user" property="userPassword" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    login login =new login();
    int result =login.Login()login(user.getUserID(), user.getUserPassword());

%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
