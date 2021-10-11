<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/dbconn.jsp" %>
<%
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
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Bread Shoes</title>

    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body>
<div class="modal modal-sheet position-static d-block py-5" tabindex="-1" role="dialog" id="modalSheet">
    <div class="modal-dialog" role="document">
        <div class="modal-content rounded-6 shadow">
            <div class="modal-header border-bottom-0">
                <h5 class="modal-title">알림</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body py-0">
                <center><p>회원가입을 축하드립니다!</p></center>
            </div>
            <div class="modal-footer flex-column border-top-0">
                <button type="button" class="Close btn btn-lg btn-success` w-100 mx-0 mb-2" onclick="location.href='Login.jsp';">로그인 하기</button>
                <style>
                    .Close{
                        background-color:#0e0;
                        color: black;
                        font-weight: bold;
                        border-radius: 25px;
                    }
                </style>
            </div>
        </div>
    </div>
</div>
</body>
</html>