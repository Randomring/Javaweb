<% pageContext.setAttribute("path", request.getContextPath());%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>管理列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM的校级课程管理系统
                </h1>
                <h3>
                    查询界面
                </h3>
            </div>
        </div>
    </div>
    <div class="row" style="text-align: left">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${path}/content/toAddContent">新增课程</a>
        </div>
    </div>
    <div class="row clearfix" >
        <div class="col-md-12 column" >
            <table class="table table-hover table-striped" >
                <thead>
                <tr>
                    <th>编号id</th>
                    <th>名字name</th>
                    <th>课程时长hours</th>
                    <th>学院编号sid</th>
                    <th>封面cover</th>
                    <th>操作op</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="content" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${content.id}</td>
                        <td>${content.name}</td>
                        <td>${content.hours}</td>
                        <td>${content.sid}</td>
                        <td><img src="${pageContext.request.contextPath}/img/${content.id}.png" style="height: 30px"></td>
                        <td>
                            <a href="${path}/content/toUpdateContent?id=${content.id}">编辑</a> |
                            <a href="<%=appPath%>/content/del/${content.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
