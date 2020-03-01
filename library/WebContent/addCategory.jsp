<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/add.css">
<title>新建图书分类</title>
<script type="text/javascript">
	function add_form(){
		var regex=/^(ca)\d{4}$/;
		var categoryId=document.getElementById("categoryId").value;
		if(regex.test(categoryId)==false){
			alert("分类ID不正确，请重新输入");
			return false;
		}else{
			return true;
		}
	}
</script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href=""> 图书分类管理 </a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1>Hello, ${sessionScope.existUser.getUsername() }!</h1>
			<p>请小心地新增图书分类，要是建了一个错误的就不好了。。。</p>
		</div>
		<div class="page-header">
			<h3>
				<small>新建</small>
			</h3>
		</div>
		<form class="form-horizontal" action="/library/AddCategory"
			method="get" onsubmit="return add_form()">
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">分类ID ：</label>
				<div class="col-sm-8">
					<input name="categoryId" class="form-control" id="categoryId">
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">分类名称 ：</label>
				<div class="col-sm-8">
					<input name="categoryName" class="form-control" id="categoryName">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">保存</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</form>
	</div>
	<footer class="text-center"> copy@imooc </footer>
</body>
</html>