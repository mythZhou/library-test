<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$("#search").click(function(){
		$.ajax({
			"url":"/library/FindBookServlet",
			"type":"get",
			"data":
		})
	})
</script>
</head>
<body>
<header>
            <div class="container">
                    <nav>
                            <a href="/library/BookServlet" >图书信息管理</a>
                    </nav>
                    <nav>
                            <a href="/library/CategoryServlet" >分类管理</a>
                    </nav>
                   
            </div>
        </header>
        <section class="banner">
            <div class="container">
                <div>
                    <h1>图书管理系统</h1>
                    <p>图书信息管理</p>
                </div>
            </div>
        </section>
        <section class="main">


            <div class="container">
                <form class="form-horizontal" action="/searchBook" method="post">
                <div class="form-group"  style="float: right;">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" id="search" class="btn btn-primary">查询</button>&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
                <div class="form-group" style="float: right;width: 300px;">
                    <div class="col-sm-8">
                        <input name="searchContent" class="form-control" id="searchContent"
                        placeholder="输入要查询的分类" style="width: 250px">
                    </div>
                </div>

                
            </form>
            </div>
            <div class="container">

                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>图书编号</th>
                        <th>图书名称</th>
                        <th>分类</th>
                        <th>价格</th>
                        <th>图书封面</th>
                        <th>操作</th>

                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.book }" var="c" varStatus="idx">
                            <tr id="tr1">
                                <td>${idx.index+1 }</td>
                                <td>${c.getBookID() }</td>
                                <td>${c.getBookName() }</td>
                                <td>${c.getBookCate().getCateName() }</td>
                                <td>￥${c.getPrice() }</td>
                                <td><img src="img/g1.jpg"></td>
                                <td>
                                <a href="/library/UpdateBookServlet?bookId=${c.getBookID() }">修改</a>
                                <a href="/library/DeleteBook?bookId=${c.getBookID() }">删除</a>

                                </td>
                                <!--在循环显示数据时，此处的book0001可以用EL表达式进行替换-->

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
        <section class="page">
            <div class="container">
                <div id="fatie">
                    <a href="/library/AddBook"><button>新建</button></a>
                </div>
            </div>
        </section>
        <footer>
            copy@慕课网
        </footer>
</body>
</html>