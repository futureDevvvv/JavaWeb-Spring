<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
h1 {
	font-size: 30px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 300;
	text-align: center;
	margin-bottom: 15px;
}

table {
	width: 100%;
	table-layout: fixed;
}

.tbl-header {
	background-color: rgba(255, 255, 255, 0.3);
}

.tbl-content {
	height: 300px;
	overflow-x: auto;
	margin-top: 0px;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: 500;
	font-size: 12px;
	color: #180000;
	text-transform: uppercase;
}

td {
	padding: 15px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 12px;
	color: #180000;
	border-bottom: solid 1px rgba(255, 255, 255, 0.1);
}

/* demo styles */
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

body {
	/* background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4); */
	font-family: 'Roboto', sans-serif;
}

section {
	margin: 50px;
}

/* follow me template */
.made-with-love {
	margin-top: 40px;
	padding: 10px;
	clear: left;
	text-align: center;
	font-size: 10px;
	font-family: arial;
	color: #fff;
}

.made-with-love i {
	font-style: normal;
	color: #F50057;
	font-size: 14px;
	position: relative;
	top: 2px;
}

.made-with-love a {
	color: #fff;
	text-decoration: none;
}

.made-with-love a:hover {
	text-decoration: underline;
}

/* for custom scrollbar for webkit browser*/
::-webkit-scrollbar {
	width: 6px;
}

::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}

::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}
</style>
</head>

<body>
	<section>
		<!--for demo wrap-->
		<h1>partner</h1>
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
					<tr>
						<th>순번</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성자</th>
						<th>날짜</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
					<c:if test="${boardList[0].b_no eq null}">
						<tr>
							<td colspan="6" align="center">데이터가 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${boardList ne null }">
						<c:forEach items="${boardList }" var="boards">
							<tr>
								<td align="center">${boards.b_no }</td>
								<td align="center"><a href="boardUpdateForm.do?b_no=${boards.b_no }">${boards.title }</a></td>
								<td align="center">${boards.content }</td>
								<td align="center">${boards.writer }</td>
								<td align="center">${boards.w_date }</td>						
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</section>
	<script>
		$(window).on(
				"load resize ",
				function() {
					var scrollWidth = $('.tbl-content').width()
							- $('.tbl-content table').width();
					$('.tbl-header').css({
						'padding-right' : scrollWidth
					});
				}).resize();
	</script>
</body>

</html>