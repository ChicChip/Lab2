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
<title>Add Author</title>
</head>
<body>
    <h1>请先加入这位作者</h1>
    <div class="container">
    <s:form class="form-horizontal" role="form" action="addAuthor">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">作者</label>
    <div class="col-sm-10">
      <input type="text" name="Name" value='<s:property value="Name"/>' class="form-control" id="name" readonly="true">
    </div>
  </div>
  <div class="form-group">
    <label for="age" class="col-sm-2 control-label">年龄</label>
    <div class="col-sm-10">
      <input type="text" name="Age" class="form-control" id="age" placeholder="请输入年龄">
    </div>
  </div>
  <div class="form-group">
    <label for="country" class="col-sm-2 control-label">国家</label>
    <div class="col-sm-10">
      <input type="text" name="Country" class="form-control" id="country" placeholder="请输入国家">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加(不可全为空)</button>
    </div>
  </div>
</s:form>
    <%--<s:form action="addAuthor">
        <s:textfield name="Name" readonly="true"/>
        <s:textfield name="Age" placeholder="年龄"/>
        <s:textfield name="Country" placeholder="国家"/>
        <s:submit value="添加(不可全为空)" class="btn btn-default"/>
    </s:form>--%>
</div>
<a href="index.jsp"><button type="button" class="btn btn-default">返回主页</button></a>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>