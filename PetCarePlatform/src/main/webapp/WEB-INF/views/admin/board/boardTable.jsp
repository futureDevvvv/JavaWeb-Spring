<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<!-- Tell the browser to be responsive to screen width -->
<title>Table</title>
<link rel="stylesheet" type="text/css"	href="resources/table/css/multicheck.css"> 
<link href="resources/table/css/dataTables.bootstrap4.css"	rel="stylesheet">
<link href="resources/table/css/style.min.css" rel="stylesheet">

<!-- Modal -->
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<script src="resources/table/js/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="resources/table/js/popper.min.js"></script>
	<script src="resources/table/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="resources/table/js/perfect-scrollbar.jquery.min.js"></script>
	<script src="resources/table/js/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="resources/table/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="resources/table/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="resources/table/js/custom.min.js"></script>
	<!-- this page js -->
	<script src="resources/table/js/datatable-checkbox-init.js"></script>
	<script src="resources/table/js/datatables.min.js"></script>
<style>
.card-text {
   display: inline-block;
   width: 300px;
   /* white-space: nowrap; */
   overflow: hidden;
   text-overflow: ellipsis;
    padding:0 5px;
   align : center;
}
.container-fluid {
		width:100%;
		padding-right: 0px;
		padding-left: 0px;
		margin-right:auto;
		margin-left:auto;
	}
</style>

</head>
<body>
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<div id="main-wrapper">
		<div class="container-fluidT">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">공지사항 관리</h5>
							<div class="table-responsive">
								<table id="zero_config"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>수정한날짜로 변경</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>처리</th>

										</tr>
									</thead>
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
													
													<td align="center">${boards.title }</td>
													<td class="card-text">${boards.content }</td>
													<td align="center">${boards.writer }</td>
													<td align="center">${boards.w_date }</td>
													<td>
														<button type="button" class="btn btn-primary"
															data-toggle="modal"
															data-target=".bd-example-modal-lg${boards.b_no }"
															>수정</button>
															
														<button name="btnDelete" id="btnDelete">
															<a href="boardDelete?b_no=${boards.b_no }">삭제</a>
														</button>
													</td>
												</tr>
												<!--수정 모달 -->
												<div class="modal fade bd-example-modal-lg${boards.b_no }"
													tabindex="-1" role="dialog"
													aria-labelledby="myLargeModalLabel" aria-hidden="true" >
													<div class="modal-dialog modal-lg">
														<div class="modal-content">
															<div class="card">
																<div class="card-body">
																	<h4 class="card-title">수정</h4>
																	<p class="card-description">공지사항 글</p>
																	<form class="forms-sample" action="boardUpdate" method="post">
																		<div class="form-group">
																			<label for="title">제목</label> <input type="text"
																				class="form-control" id="title" name="title"
																				value="${boards.title}" required="required" pattern=".{4,100}">
																		</div>
																		<input type="hidden" id="b_no" name="b_no"	value="${boards.b_no }">
																		<%-- <div class="form-group">
																			<label for="exampleSelectGender">태그</label> <select
																				class="form-control" id="btag" name="btag">
																				<option value="${boards.tag}" selected>${boards.tag}</option>
																				<option value="">선택해주세요.</option>
																				<option value="pmtag">파트너회원</option>
																				<option value="mtag">일반회원</option>
																				<option value="pettag">펫</option>
																				<option value="stag">서비스</option>
																			</select>
																		</div> --%>
																		<div class="form-group">
																			<label for="exampleTextarea1">내용</label>
																			<textarea class="form-control" id="content" name="content"
																				rows="5" value="${boards.content}"> ${boards.content}</textarea>
																		</div>
																		<button type="submit" class="btn btn-primary"
																			id="modify" name="modify">수정</button>
																		<button class="btn btn-primary">취소</button>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!--end 수정 모달 -->
											</c:forEach>
										</c:if>
									</tbody>
								</table>
								<a href="boardInsertForm" style="color: white;" role="button"
									>글쓰기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#zero_config').DataTable();
		
		// 게시글 수정
		$('.bd-example-modal-lg').on('hidden.bs.modal', function(e) {
			$(this).find('form')[0].reset();
		})

	</script>

</body>

	</html>