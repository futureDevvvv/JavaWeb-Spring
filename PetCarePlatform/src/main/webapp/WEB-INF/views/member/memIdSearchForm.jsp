<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="resources/login/my-login.css">
</head>
<style>
	body{
	
		background-image: url("${pageContext.request.contextPath}/resources/upload/back2.png");
		background-size: cover;
		background-repeat: no-repeat;
	}
</style>
<body class="my-login-page">
   <section class="h-100" id="main">
      <div class="container h-100">
         <div class="row justify-content-md-center align-items-center h-100">
            <div class="card-wrapper">
               <div class="brand">
                  <img src="resources/login/logo.jpg" alt="logo">
               </div>

               <div class="card fat" style="margin-top: -35px;">
                  <div class="card-body">
                     <h4 class="card-title">아이디찾기</h4>
                     <div id="test">
                        <form method="POST" action="#" class="my-login-validation">
                           <div class="form-group">
                              <label>이름</label>
                              <input id="name" name="name" type="text" class="form-control" placeholder="이름을 입력하세요"
                                 required="required" autofocus>
                           </div>
                           <div class="form-group">
                              <label>전화번호</label>
                              <input id="tel" name="tel" type="text" class="form-control" placeholder="ex)01011112222"
                                 required="required" autofocus>
                           </div>
                           <div class="form-group m-0">
                              <button type="button" class="btn btn-primary btn-block" id="memIdsearch_btn"
                                 onclick="mIdsearch()" data-toggle="modal" style="margin-bottom: 10px;">
                                 아이디찾기
                              </button>
                           </div>
                           <div class="form-group m-0">
                              <button type="button" class="btn btn-primary btn-block" onClick="location.href='pwdSearchForm'">
                                 비밀번호찾기
                              </button>
                           </div>
                           <div class="mt-4 text-center">
                              계정이 없으신가요?<a href="joinForm" class="text-primary">회원가입</a>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h3 class="modal-title" id="exampleModalLongTitle">조회결과</h3>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
				<div id="member"></div>
            </div>
            <div class="modal-footer">
            	<div id="footer"></div>
               <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
            </div>
         </div>
      </div>
   </div>
   <script src="resources/login/my-login.js"></script>

   <!-- 일반회원 아이디찾기 모달창 ajax -->
   <script type="text/javascript">
      
      function mIdsearch() {

         var tel = $("#tel").val()
         var name = $("#name").val();

         if (tel == '' || name == '') {
            alert("정보를입력해주세요.")
            return;
         }
         $('#exampleModalCenter').modal('show');
         $.ajax({
            url: "memberIdSearch",
            type: "post",
            data: {
               "tel": tel,
               "name": name
            },
            success: function (result) {
               $('#member').empty();
               $('#footer').empty();
               if (result != "") {
            	   $('#member').append(`<h3>아이디:` + result + `</h3>`);
                   $('#footer').append(`<button type="button" class="btn btn-primary mr-2" onclick="location.href='loginForm'">로그인하러가기</button>`);
               } else {
            	   $('#member').append(`입력하신 정보와 일치하는 회원정보가 존재하지 않습니다.`);
            	   $('#footer').append(`<button type="button" class="btn btn-primary mr-2" onclick="location.href='join'">회원가입</button>`);
               }
            },
            error: function () {}
         })
      }

   
   </script>

</body>

</html>