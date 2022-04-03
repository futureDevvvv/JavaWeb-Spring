<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="my"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://cdn.jsdelivr.net/gh/ethereum/web3.js@1.0.0-beta.37/dist/web3.min.js"></script>
	<script src="template/js/diaLog.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<style>
	#my_section {
		margin-top: -70px;
		padding-bottom: 25px;
	}

	.padding {
		padding: 5rem
	}

	.table th {
		font-size: 20px;
		font-weight: 500;
	}

	.table {
		width: 100%;
		max-width: 100%;
		margin-bottom: 1rem;
		background-color: transparent
	}

	.table-striped tbody tr:nth-of-type(odd) {
		background-color: #f9f9fd;
	}

	.table td {
		font-size: 16px;
		padding: .875rem 0.9375rem
	}

	.badge {
		font-size: 12px;
		line-height: 1;
		padding: .375rem .5625rem;
		font-weight: normal;
	}

	.codep {
		color: #0062ff;
		background: #FFF;
		border: 1px solid transparent;
		font-size: 16px;
	}

	.badge-info {
		background-color: cornflowerblue;
		border: none;
	}

	.badge-pay {
		background-color: #38a4ff;
		color: #fff;
	}

	#sidebar {
		width: 500px;
		float: none;
		margin-left: 12em;
		background-color: #fff;
		border: none;
	}

	.codep {
		color: #0062ff;
		background: #FFF;
		border: 1px solid transparent;
		font-size: 16px;
	}

	.codep:hover {
		color: #0062ff;
		border: 1px solid #0062ff;
		background: #fff;
	}

	.form-control1 {
		padding: 5px;
		display: inline-block;
		border-radius: 20px;
	}
	#main-side,
	#main-side1 {
		box-shadow: 0 .15rem 1.75rem 0 rgba(58, 59, 69, .1) !important;
		border: 1px solid #e3e6f0;
		border-radius: 0.35rem;
		float: none !important;
		margin: 0 auto !important;
		background-color: white;
		width: 250px;
	}
	.card {
		width : 1200px;
		box-shadow: 0 .15rem 1.75rem 0 rgba(58, 59, 69, .1) !important;
		border: 1px solid #e3e6f0;
		border-radius: 0.35rem
	}

	.card-header {
		background: white;
		font-size: 1.0rem;
		font-style: normal;
		font-weight: 400;
		color: black;
	}

	.card-body {
		width : 1200px;
		font-size: 1.0rem;
		font-style: normal;
		font-weight: 300;
		color: black;

	}

	.card-text {
		display: inline-block;
		width: 150px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

	.widget_title {
		background: #0062ff !important;
	}

	#myinfo {
		font-size: 0.8rem;
		font-style: normal;
		font-weight: 300;
	}

	.partner_img {
		object-fit: cover;
		object-position: top;
		border-radius: 50%;
		width: 180px !important;
		height: 180px !important;
		float: none;
		margin: 0 auto;
	}

	#Mainname {
		font-size: 1.5rem !important;
		font-style: normal !important;
		font-weight: 700 !important;
		color: gray;
	}

	#menu_bold {
		font-size: 1.0rem;
		font-style: normal;
		font-weight: 700;
		color: black;
	}
	
</style>

<body>
	<section class="department-area" style="padding: 30px 0 30px;">
		<div class="container">
			<div class="col-lg-6 offset-lg-3">
				<div class="section-top text-center">
					<br>
					<br>
					<br>
					<h2></h2>
				</div>
			</div>
		</div>
	</section>
	<section id="my_section">
		<div class="container" style="max-width: 1450px;">
			<div class="row">
				<div class="col-lg-3">
					<h2 align="center">MyPage</h2>
					<br>
					<div class="blog_right_sidebar" id="main-side">
						<aside class="single_sidebar_widget author_widget">
							<img class="partner_img" src="/upload/${member.pfile}"onerror="this.src='resources/upload/cat.jpg'" alt=""> <br>
							<br>
							<h4 id="Mainname">${member.name }님</h4>
							<div class="br"></div>
							<div id="myinfo">
								<i class="fa-solid fa-pen"></i>&nbsp;<a class="no_deco" href="mconfirmPass">내 정보 수정하기</a>
							</div>
						</aside>
					</div>
					<br>
					<div class="blog_right_sidebar" id="main-side1">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">My menu</h4>
							<ul class="list cat-list">
								<p id="menu_bold">내 활동 내역</p>
								<li><a href="protocol" class="d-flex justify-content-between no_deco">
										<p>반려동물 진료기록</p>
									</a></li>
								<li><a href="reservationSelect" class="d-flex justify-content-between no_deco">
										<p>예약 내역</p>
									</a></li>
								<li><a href="myPay" class="d-flex justify-content-between no_deco">
										<p>결제 내역</p>
									</a></li>
								<li><a href="mycounsel" class="d-flex justify-content-between no_deco">
										<p>상담 내역</p>
									</a></li>
								<li><a href="myreport" class="d-flex justify-content-between no_deco">
										<p>신고 내역</p>
									</a></li>
								<li><a href="myfallow" class="d-flex justify-content-between no_deco">
										<p>팔로우</p>
									</a></li>
								<br>
								<br>
								<p id="menu_bold">회원 정보 관리</p>
								<li><a href="mconfirmPass" class="d-flex justify-content-between no_deco">
										<p>회원 정보 수정</p>
									</a></li>
								<li><a href="logout" class="d-flex justify-content-between no_deco">
										<p>로그아웃</p>
									</a></li>
								<li><a href="mdeleteForm" class="d-flex justify-content-between no_deco">
										<p>회원탈퇴</p>
									</a></li>
							</ul>
						</aside>
					</div>
				</div>
				<div class="col-lg-9 posts-list">
					<div class="single-post row">
						<div class="col-lg-12 col-md-12 blog_details">
							<br><br>
							<div class="card">
								<div class="card-header">
									<div align="left">
										<i class="fa-solid fa-flag"></i>&nbsp;&nbsp;&nbsp;${member.name }님의 예약내역
									</div>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-12" style="margin: 20px 0 0 10px;">
											<div class="table-wrap">
												<button type="button" class="codep" style="margin: 0 50px 0 15em;"
													data-code="">전체</button>
												<button type="button" class="codep" style="margin-right: 50px;"
													data-code="100">진료</button>
												<button type="button" class="codep" style="margin-right: 50px;"
													data-code="101">훈련</button>
												<button type="button" class="codep" style="margin-right: 50px;"
													data-code="102">돌봄서비스</button>
												<button type="button" class="codep" style="margin-right: 50px;"
													data-code="103">미용</button>
											</div>
										</div>
										<div class="table-wrap" style="width: 950px;margin-top: 20px;">
											<table class="table table-striped">
												<thead>
													<tr style="text-align: center;">
														<th>예약번호</th>
														<th>이름</th>
														<th>예약신청일자</th>
														<th>예약시간</th>
														<th>예약내용</th>
														<th>품종</th>
														<th>예약여부</th>
														<th>후기</th>
													</tr>
												</thead>
												<tbody id="myTable" style="text-align: center;">
												</tbody>
											</table>
											<div class="blog_right_sidebar" id="sidebar">
												<form id="admDateForm" onsubmit="return false" onkeypress="eventkey();" onclick="pagingList();">
													<input type="hidden" name="code"> <input type="hidden"name="pageNum" value="1">
													<aside class="single_sidebar_widget search_widget"style="display: flex;">
														<select id="key" name="key">
															<option value="all" selected="selected">전 체</option>
														</select>
														<div class="input-group">
															<input type="text" class="form-control" id="data"name="data"> 
															<span class="input-group-btn">
																<button class="btn btn-default" type="submit">
																	<i class="fa fa-search"></i>
																</button>
															</span>
														</div>
													</aside>
												</form>
											</div>
											<div id="pagination"></div>
											<div>
												<form id="frm" action="" method="post"></form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">리뷰보기</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- modal 몸통 -->
				<div class="modal-body 1">
					<h3>별점</h3>
					<div class="star"></div>
					<h3>후기내용</h3>
					<div id="content"></div>
					<h3>이미지</h3>
					<div id="image"></div>
					<!-- modal 하단 버튼 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						<button id="sendReserv" name="sendReserv" type="button" class="btn btn-primary"
							data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 거절사유Modal -->
	<div class="modal fade" id="refuseModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">거절사유</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- modal 몸통 -->
				<div class="modal-body 2">
					<div class="refuse_div">
						<span  style ="color: black !important;"id="refuse_why"></span>
					</div>
						<button style = "float: right"type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 예약내용Modal -->
	<div class="modal fade" id="rcontentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">예약내용</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- modal 몸통 -->
				<div class="modal-body 3">
					<div class="rcontent_div">
						<span style ="color: black !important;" id="rcontent_why"></span>
					</div>
						<button style = "float: right"type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 리뷰작성 모달창 -->
	<!-- Modal -->
	<div class="modal fade" id="reviewWriteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">후기를 남겨주세요!</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="serviceReviewInsert" method="post" enctype="multipart/form-data">
					<!-- modal 몸통 -->
					<div class="modal-body">
						<div>
							<h3>별점</h3>
							<div class="star-rating"></div>
							<input id="star2" name="rating" type="hidden">
						</div>
						<h3>후기내용</h3>
						<div class="form-group">
							<textarea class="form-control1" id="content" name="content" placeholder="후기내용" rows="4"
								cols="50"></textarea>
						</div>
						<div class="form-group" style="margin-top: -10px;">
							<h3>후기 사진</h3>
							<input class="file-upload-browse btn btn-primary" type="file" id="multiFileList1"
								name="multiFileList1" multiple="multiple">
							<button type="button" class="btn btn-primary btn-sm" onclick="addFile1()">+</button>
							<div id="ffile1"></div>
						</div>
					</div>
					<!-- modal 하단 버튼 -->
					<div class="modal-footer">
						<input type="hidden" id="insert_r_no" name="r_no" value="">
						<button type="submit" class="btn btn-primary">작성</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script>
		
		let viewPmemberList = function (result) {

			$("#myTable").empty();

			$.each(result, function (i) {
				console.log(result[i].rd_date)
				if(result[i].refuse != null ){
				var choicedTag = "<tr><td>" +
					result[i].r_no +
					"</td><td>" +
					result[i].name +
					"</td><td class='card-text'>" +
					result[i].rd_date +
					"</td><td>" +
					result[i].r_date +" "+result[i].time +
					"</td><td><input type='hidden' value='" +result[i].rcontent +"'>" +
					"<button type='button' class ='btn btn-secondary' data-toggle='modal' data-target='#rcontentModal' onclick='contentBtn(event)' )'>내용보기</button>" +
					"</td><td><input type='hidden' value='" +result[i].refuse +"'>"+
					result[i].pcontent +
					"</td><td id='td" + [i] + "'><input class='in_code' type='hidden' value=" + result[i]
					.rccontent + ">" +
					result[i].rccontent +
					"</td>";
				}else if (result[i].refuse == null){
					var choicedTag = "<tr><td>" +
					result[i].r_no +
					"</td><td>" +
					result[i].name +
					"</td><td class='card-text'>" +
					result[i].rd_date +
					"</td><td>" +
					result[i].r_date +" "+result[i].time +
					"</td><td><input type='hidden' value='" +result[i].rcontent +"'>" +
					"<button type='button' class ='btn btn-secondary' data-toggle='modal' data-target='#rcontentModal' onclick='contentBtn(event)' )'>내용보기</button>" +
					"</td><td>" +
					result[i].pcontent +
					"</td><td id='td" + [i] + "'><input class='in_code' type='hidden' value='" + result[i]
					.rccontent + "'>" +
					result[i].rccontent +
					"</td>";
				}

				if (result[i].code == 405) {
					if (result[i].r_check == 0) {
						choicedTag += "<td><button type='button' onclick='reviewadd(" + result[i].r_no +
							");' class='btn btn-primary' data-toggle='modal' data-target='#reviewWriteModal'>리뷰 작성</button></td></tr>";
					} else {
						choicedTag += "<td><button onclick='reviewread(" + result[i].r_no +
							");'style='border : 0px;' type='button' class='btn btn-primary' data-toggle='modal' data-target='#exampleModal1'>리뷰 보기</button></td></tr>";
					}
				} else {
					choicedTag += '<td><button class="btn btn-primary" disabled>리뷰 작성</button></td></tr>';
				}
				$("#myTable").append(choicedTag);
				if ($("#td" + i).text() == '진료완료') {

				} else if ($("#td" + i).text() == '승인거절') {

				}

			}) // end each.
			var val = $(".in_code").parent();
			for (var i = 0; i < val.length; i++) {
				//예약결과코드 분류
				if (val[i].innerText == '결제가능') {
					console.log(val[i]);
					val[i].classList.add("code");
					$(".code").empty();
					var check = $(".code").append(
						`<button class="badge badge-warning" type ="button" onclick="payBtn(event)">결제하기</button>`);
				} else if (val[i].innerText == '승인거절') {
					val[i].classList.add("refuse");
					$(".refuse").empty();
					var check = $(".refuse").append(`<button type="button" class="refuse badge badge-danger" data-toggle='modal' data-target='#refuseModal' onclick='refuse(event)'>승인거절</button>`);
				} else if (val[i].innerText == '결제완료') {
					val[i].classList.add("complete");
					$(".complete").empty();
					var check = $(".complete").append(`<span class="badge badge-warning">결제완료</span>`);
				} else if (val[i].innerText == '진료완료') {
					val[i].classList.add("diaCom");
					$(".diaCom").empty()
					var check = $(".diaCom").append(`<span class="badge badge-pay">진료완료</span>`);
				} else if (val[i].innerText == '승인대기') {
					val[i].classList.add("comReady");
					$(".comReady").empty()
					var check = $(".comReady").append(`<span class="badge badge-success">승인대기</span>`);
				} //else if문

			} //for문
		} //=========================end viewPmemberList : 받아온 데이터로 List만드는 함수===============

		function onerror(obj) {
			obj.onerror = "";
			obj.src = "resources/upload/1.png";
			return true;

		}

		/* 리뷰 작성 모달창 */
		$(document).ready(function () {
			$('.star-rating').raty({
				path: "resources/star",
				width: 200,
				click: function (score) {
					$('#star2').val(score);
				}
			});
		});

		function addFile1() {
			var filediv = $('<div>').attr({
				'id': 'filediv'
			});

			var input = $('<input>').attr({
				'id': 'multiFileList1',
				'class': 'file-upload-browse btn btn-primary',
				'name': 'multiFileList1',
				'type': 'file'
			}).css('margin-top', '3px');

			var btn = $('<button>').attr({
				'onclick': 'deleteFile(event)',
				'type': 'button',
				'class': 'btn btn-primary btn-sm',
				'id': 'deleteBtn',
				'style': 'margin-left:5px'
			}).text('-');

			filediv.append(input);
			filediv.append(btn);
			$('#ffile1').append(filediv);
		}

		function deleteFile(event) {
			var e = event.target.parentElement;
			e.remove();
		}

		/*리뷰 보는 모달창 */

		function reviewread(e) {
			var r_no = e;
			$("#content").empty();
			$(".star").empty();
			$("#image").empty();

			$.ajax({
				url: 'rnoreview',
				method: 'post',
				data: {
					'r_no': r_no
				},
				success: function (result) {

					if (result.fileList.length != '') {
						for (var i = 0; i < result.fileList.length; i++) {

							var imgsrc = '/upload/' + result.fileList[i].pfile;
							console.log("여기는 imgsrc", imgsrc)
							var img = $('<img>').attr({
								'src': imgsrc,
							}).width("168px").height("196px");
							var div = $('<div>');
							div.append(img);
							$('#image').append(div);



						} //for문 끝
					} else {
						imgsrc = 'resources/upload/cat.jpg';
						var img = $('<img>').attr({
							'src': imgsrc
						}).width("168px").height("196px");
						var div = $('<div>');
						div.append(img);
						$('#image').append(div);
					}
					var content = result.content;
					var rating = result.rating;
					$('.star').raty({
						score: rating,
						width: 200,
						path: "resources/star",
						readOnly: true
					});
					$('#content').append(content);
				}
			})
		}

		/* 후기작성 모달창 */

		function reviewadd(e) {
			$("#content").empty();

			var r_no = e;
			$("#insert_r_no").val(r_no);
		}

		function payBtn(event) {
			var rno = $(event.target).parent().parent().children().first().text();
			var m_id = "${m_id }";
			console.log(m_id);
			var pay;

			$.ajax({
				url: 'servicePay',
				method: 'POST',
				data: {
					'r_no': rno
				},
				async: false,
				success: function (result) {
					console.log(result);
					pay = result.price;
					//p_id = result.p_id;
					var IMP = window.IMP; // 생략가능
					IMP.init('imp48272965');
					// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
					// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
					IMP.request_pay({
						pg: 'kakao',
						pay_method: 'card',
						merchant_uid: 'merchant_' + new Date().getTime(),
						name: result.content + "예약",
						// 결제창에서 보여질 이름
						// name: '주문명 : ${auction.a_title}',
						// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
						amount: result.price,
						// amount: ${bid.b_bid},
						// 가격 
						buyer_name: m_id,
						// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
						// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
						buyer_postcode: '123-456',
					}, function (rsp) {
						var msg;
						if (rsp.success) {
							msg = '결제가 완료되었습니다.';
							msg += '결제 금액 : ' + rsp.paid_amount;
							alert(msg);
							payUpdate();
							location.reload();
							// success.submit();
							// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
						} else {
							var msg = '결제에 실패하였습니다.';
							msg += '에러내용 : ' + rsp.error_msg;
						}
						
						
					});
					
				}
			});
			//결제 완료 후 결제 내역 등록
			function payUpdate() {
				var m_id = "${m_id}";
				$.ajax({
					url: 'payupdate',
					method: 'post',
					data: {
						'r_no': rno,
						'm_id': m_id,
						'price': pay
					},
					success: function (result) {},
					error: function (error) {
						alert("결제실패")
					}
				})
			}
		}
		 <!--리뷰작성-- >
		function serviceReview() {

			var content = $("#content").val();
			var rating = $("input[name=rating]").val();
			var rev_no = $("#rev_no").val();
			var multiFileList1 = $("multiFileList1").val();

			$.ajax({
				url: "serviceReviewInsert",
				enctype: 'multipart/form-data',
				type: "post",
				data: {
					'rating': rating,
					'r_no': rev_no,
					'content': content,
					'multiFileList1': multiFileList1
				},
				processData: false,
				contentType: false,
				cache: false,
				success: function (result) {
					alert("ggod")
					location.reload();

				}
			})
		}
		/* function go_page(p){
			goform.pageNum.value=p;
	    	goform.submit();
		} */


		//======================enter 키===================
		function eventkey() {
			if (event.keyCode == 13) {
				pagingList();
			} else {
				return false;
			}
		} //====================end enter 키================

		// ===================viewPmemberList : 받아온 데이터로 List만드는 함수==========================

		// ===========================조건 별 검색 + 페이징 처리==============================
		$(".codep").on('click', function () {
			var code = $(this).data('code');
			$('#admDateForm')[0].code.value = code
			$('#admDateForm')[0].pageNum.value = 1;
			pagingList();

		});

		function pagingList() {

			$("#blockChain").empty();
			var str = $('#admDateForm').serialize();
			$.ajax({
				url: 'reservationSelect1',
				method: 'post',
				data: str,
				//contentType : 'application/json',
				success: function (result) {
					if (result.list == '') {
						$(".table").empty();
						$(".table").append(`<thead>
								<tr>
									<th>예약번호</th>
									<th>수의사 이름</th>
									<th>예약신청일자</th>
									<th>예약시간</th>
									<th>예약내용</th>
									<th>품종</th>
									<th>예약여부</th>
									<th>후기</th>
								</tr>
							</thead>
							<tbody id="myTable">
							</tbody>`)
						$("#myTable").empty();
						$("#myTable").append("<tr><td colspan='9' align='center'>데이터가 없습니다.</td></tr>");
						// $(".table").empty();

					} else {
						viewPmemberList(result.list);
						viewPage(result.page);
					}

				}
			});
		} // end paginList()

		function viewPage(page) {

			var nav = `<nav class="blog-pagination justify-content-center d-flex">
			<ul class="pagination">`
			if (page.prev) {
				nav += `<li class="page-item">
				<a href="javascript:goPage(\${page.startPage-1})" class="page-link"
					aria-label="Previous">
					<span aria-hidden="true">
						<span class="fa fa-angle-left"></span>
					</span></a>
				</li>`
			}
			for (var i = page.startPage; i <= page.endPage; i++) {
				nav += `<li class="page-item ${page.pageNum eq num ? 'active' : '' }"><a class="btn btn-primary" 
								href="javascript:goPage(\${i})" class="page-link">\${i }</a>
								</li>`
			}

			if (page.next) {
				nav += `<li class="page-item"><a href="javascript:goPage(\${page.endPage+1})"
					class="page-link" aria-label="Next">
				<span aria-hidden="true">
					<span class="fa fa-angle-right"></span>
				</span></a>
		</li>`

			}

			nav += `</ul></nav>`
			$('#pagination').html(nav);

		} // end viewPage(page)

		function goPage(pa) {
			$('#admDateForm')[0].pageNum.value = pa;
			pagingList();
		}
		function refuse(event){
			$("#refuse_why").empty();
			var refuseVal = $(event.target).parent().prev().children().first().val();
			console.log(refuseVal);
			$("#refuse_why").append("거절사유 : "+refuseVal);
		}
		
		function contentBtn(event){
			$("#rcontent_why").empty();
			var rcontentVal = $(event.target).prev().val();
			console.log(rcontentVal);
			$("#rcontent_why").append("예약내용 : " + rcontentVal);
		}
		pagingList();
		
	</script>
</body>

</html>