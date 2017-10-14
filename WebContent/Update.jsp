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
<title>Update</title>
</head>
<body>
    <h1>请添加修改信息</h1>
    <div class="container">
        <s:form class="form-horizontal" role="form" action="update">
  <div class="form-group">
    <label for="isbn" class="col-sm-2 control-label">ISBN</label>
    <div class="col-sm-10">
      <input type="text" name="ISBN" value='<s:property value="ISBN"/>' class="form-control" id="isbn" readonly="true">
    </div>
  </div>
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">作者</label>
    <div class="col-sm-10">
      <input type="text" name="Name" class="form-control" id="name" placeholder="请输入作者">
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
      <button type="submit" class="btn btn-default">添加(不可全为空)</button>
    </div>
  </div>
</s:form>
    <%--<s:form action="update">
        <s:textfield name="ISBN" readonly="true"/>
        <s:textfield name="Name" placeholder="作家名"/>
        <s:textfield name="Publisher" placeholder="出版社"/>
        <s:textfield name="PublishDate" placeholder="出版日期"/>
        <s:textfield name="Price" placeholder="价格"/>
        <s:submit value="修改(不更新可置空)" class="btn btn-default"/>
    </s:form>--%>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>