<%@ page import="inc.user" %>
<%@ page import="inc.MemberDBBean" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%

    String ID=request.getParameter("ID");
    String PASSWORD = request.getParameter("PASSWORD");
    MemberDBBean manager =MemberDBBean.getInstance();

    int check = manager.userCheck(ID,PASSWORD);
    user mb = manager.getMember(ID);

    if (mb==null){
        System.out.println("'존재하지 않는 회원'");
    }else {
        if (check ==1){

            session.setAttribute("ID", ID);
            session.setAttribute("PASSWORD", PASSWORD);
            session.setAttribute("Member", "yes");

            response.sendRedirect("../index.jsp");
        }else if (check == 0){
            out.print("<script>alert('비밀번호가 틀렸습니다.');</script>");
            out.print("<script>history.go(-1);</script>");
        }

       response.getWriter();
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
