<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/add.css">
<meta charset="UTF-8">
<script type="text/javascript">
	function add_form(){
		var regex=/^(\d+)$/;
		var bookPrice=document.getElementById("bookPrice").value;
		if(regex.test(bookPrice)==false){
			alert("输入价格不正确，请重新输入");
			return false;
		}else{
			return true;
		}
	}
</script>
<title>修改图书信息</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/dept/list.do"> 图书信息管理 </a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1>Hello, ${sessionScope.existUser.getUsername()}!</h1>
			<p>请小心的修改图书信息。。。</p>
		</div>
		<div class="page-header">
			<h3>
				<small>修改</small>
			</h3>
		</div>
		<form class="form-horizontal" action="/library/UpdateBook"
			method="get" onsubmit="return add_form()">

			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">图书编号 ：</label>
				<div class="col-sm-8">
					<input name="bookId" value="${requestScope.id }"
						class="form-control" id="bookId" readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">图书名称 ：</label>
				<div class="col-sm-8">
					<input name="bookName" class="form-control" id="bookName">
				</div>
			</div>
			<div class="form-group">
				<label for="categoryId" class="col-sm-2 control-label">分类 ：</label>
				<select id="categoryId" name="categoryId"
					class="col-sm-2 form-control"
					style="width: auto; margin-left: 15px">
					<option selected="">请选择</option>
					<c:forEach items="${requestScope.cate }" var="c" varStatus="idx">
						<option value="${c.getCateID() }">${c.getCateName() }</option>
					</c:forEach>
					<!-- 下拉列表的内容要从分类中进行读取，value值是分类id -->
				</select>
			</div>

			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">价格 ：</label>
				<div class="col-sm-8">
					<input name="bookPrice" class="form-control" id="bookPrice">
				</div>
			</div>

			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">图书封面 ：</label> <input
					type="file" id="bookPic" name="bookPic" style="padding-left: 15px">
			</div>

			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">备注 ：</label>
				<div class="col-sm-8">
					<input name="remarks" class="form-control" id="remarks">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">修改</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</form>
	</div>
	<footer class="text-center"> copy@imooc </footer>
</body>
</html>