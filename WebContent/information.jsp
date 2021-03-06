<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<title>Book Information</title>
</head>
<body>
<h1>作者详细信息</h1>
<div class="container">
 <table class="table table-striped">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>年龄</td>
            <td>国家</td>
        <tr>
<%List<String> list1 = (List<String>)session.getAttribute("authorinf");
            for(int i=0;i<list1.size();i++){
            	out.print("<td>"+list1.get(i)+"</td>");
            }
        %>
        </table>
        </div>
<h1>作品信息</h1>
<div class="container">
<table class="table table-striped">
<tr>
    <td>ISBN</td>
    <td>书名</td>
    <td>作者编号</td>
    <td>出版社</td>
    <td>出版日期</td>
    <td>价格</td>
<tr>
<%List<String> list = (List<String>)session.getAttribute("bookinf");
            for(int i=0;i<list.size();i+=6){
            	out.print("<td>"+list.get(i)+"</td>");
            	out.print("<td>"+list.get(i+1)+"</td>");
            	out.print("<td>"+list.get(i+2)+"</td>");
            	out.print("<td>"+list.get(i+3)+"</td>");
            	out.print("<td>"+list.get(i+4)+"</td>");
            	out.print("<td>"+list.get(i+5)+"</td>");
            	out.print("<td><a href=delete?ISBN="+list.get(i)+"><button type=\"button\" class=\"btn btn-danger\">删除</button></a></td>");
            	out.print("<td><a href=edit?ISBN="+list.get(i)+"><button type=\"button\" class=\"btn btn-success\">修改</button></a></td>");
            	out.print("</tr>");
            }
        %>
        </table>
        </div>
<a href="index.jsp"><button type="button" class="btn btn-default">返回主页</button></a>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>