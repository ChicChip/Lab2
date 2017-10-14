<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>Add Book</title>
</head>
<body>
<div class="container">
<center>
<s:form class="form-horizontal" role="form" action="addBook">
  <div class="form-group">
    <label for="isbn" class="col-sm-2 control-label">ISBN</label>
    <div class="col-sm-10">
      <input type="text" name=ISBN class="form-control" id="isbn" placeholder="请输入ISBN">
    </div>
  </div>
  <div class="form-group">
    <label for="title" class="col-sm-2 control-label">书名</label>
    <div class="col-sm-10">
      <input type="text" name="Title" class="form-control" id="title" placeholder="请输入书名">
    </div>
  </div>
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">作者</label>
    <div class="col-sm-10">
      <input type="text" name="Name" class="form-control" id="name" placeholder="请输入作家名">
    </div>
  </div>
  <div class="form-group">
    <label for="publisher" class="col-sm-2 control-label">出版社</label>
    <div class="col-sm-10">
      <input type="text" name="Publisher" class="form-control" id="publisher" placeholder="请输入出版社">
    </div>
  </div>
  <div class="form-group">
    <label for="publishdate" class="col-sm-2 control-label">出版日期</label>
    <div class="col-sm-10">
      <input type="text" name="PublishDate" class="form-control" id="publishdate" placeholder="请输入出版日期">
    </div>
  </div>
  <div class="form-group">
    <label for="price" class="col-sm-2 control-label">价格</label>
    <div class="col-sm-10">
      <input type="text" name="Price" class="form-control" id="price" placeholder="请输入价格">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加(全填，不知填无)</button>
    </div>
  </div>
</s:form>
    <%--<s:form action="addBook">
        <s:textfield name="ISBN" placeholder="ISBN"/>
        <s:textfield name="Title" placeholder="书名"/>
        <s:textfield name="Name" placeholder="作家名"/>
        <s:textfield name="Publisher" placeholder="出版社"/>
        <s:textfield name="PublishDate" placeholder="出版日期"/>
        <s:textfield name="Price" placeholder="价格"/>
        <s:submit value="添加(作者必填)" class="btn btn-default"/>
    </s:form>--%>
</center>
</div>
<a href="index.jsp"><button type="button" class="btn btn-default">返回主页</button></a>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>