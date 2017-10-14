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
<title>success</title>
</head>
<body>
<h1>查询结果</h1>
<div class="container">
        <s:property value = "Name"/>作品如下：<br/>
        <table  class="table table-striped">
        <%List<String> list = (List<String>)session.getAttribute("book");
            for(int i=0;i<list.size();i++){
            	String x=list.get(i);
            	x = x.replaceAll("\\s+", "%20");
            	out.print("<td>"+"<a href=information?Title="+x+">"+list.get(i)+"</a></td><tr/>");
            }
        %>
        </table>
<a href="index.jsp"><button type="button" class="btn btn-default">返回主页</button></a>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>