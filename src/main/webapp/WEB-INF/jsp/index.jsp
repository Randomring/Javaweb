<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<br>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" style="text-align: center;margin: auto">
                <h1 style="font-size:xxx-large;font-family:华文楷体">
                    基于SSM框架的管理系统
                </h1>
                <br>
                <h3 style="font-size: xx-large;margin-top: 50px;font-family:华文楷体;color:blue" >
                    <a href="${path }/content/allContent">课程管理系统</a>
                </h3>
            </div>
        </div>
    </div>
</div>
</body>
</html>
