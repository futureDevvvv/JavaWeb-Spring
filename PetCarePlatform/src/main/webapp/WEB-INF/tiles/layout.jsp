<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>


  <meta charset="UTF-8">
  <!-- Required Meta Tags -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>medino</title>

  <!-- Page Title -->
  <title>Medino</title>

  <!-- Favicon -->
  <link rel="shortcut icon" href="resources/assets/images/logo/favicon.png" type="image/x-icon">

  <!-- CSS Files -->
  <link rel="stylesheet" href="resources/assets/css/animate-3.7.0.css">
  <link rel="stylesheet" href="resources/assets/css/font-awesome-4.7.0.min.css">
  <link rel="stylesheet" href="resources/assets/css/bootstrap-4.1.3.min.css">
  <link rel="stylesheet" href="resources/assets/css/owl-carousel.min.css">
  <link rel="stylesheet" href="resources/assets/css/jquery.datetimepicker.min.css">
  <link rel="stylesheet" href="resources/assets/css/linearicons.css">
  <link rel="stylesheet" href="resources/assets/css/style.css">
  <link rel="stylesheet" href="resources/assets/css/nice-select.css">
  
 

  <!-- admin css -->
  <link rel="stylesheet" href="resources/assets123/css/style.css">
  <link rel="stylesheet" href="resources/assets123/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="resources/assets123/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="resources/assets123/vendors/css/vendor.bundle.base.css">
  <link rel="shortcut icon" href="resources/assets123/images/favicon.png" />

  <!-- Javascript -->

  <script src="resources/assets/js/vendor/jquery-2.2.4.min.js"></script>   
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
  </script>
  <script src="resources/assets/js/vendor/bootstrap-4.1.3.min.js"></script>
 
  <!-- <script src="resources/toastr/toastr.min.js"></script>
	<script src="resources/toastr/toastr.css"></script> -->

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css"
    integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
    integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script src="resources/assets/js/vendor/wow.min.js"></script>
  <script src="resources/assets/js/vendor/owl-carousel.min.js"></script>
  <script src="resources/assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
  <script src="resources/assets/js/vendor/jquery.nice-select.min.js"></script>
  <script src="resources/assets/js/vendor/superfish.min.js"></script>
  <script src="resources/assets/js/main.js"></script>

  <script src="resources/assets123/js/off-canvas.js"></script>
  <script src="resources/assets123/js/hoverable-collapse.js"></script>
  <script src="resources/assets123/js/misc.js"></script>
  <script src="resources/assets/js/vendor/jquery.raty.js"></script>
  <script src="resources/assets/js/vendor/bootbox.min.js"></script> 
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

 <style type="text/css">
 @font-face {
    font-family: 'HSSaemaul-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/HSSaemaul-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
 /* font-family: 'NanumBarunGothic'; */
 font-style: normal;
 font-weight: 400;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
}

@font-face {
 /* font-family: 'NanumBarunGothic'; */
 font-style: normal;
 font-weight: 700;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.ttf') format('truetype')
}

@font-face {
 /* font-family: 'NanumBarunGothic'; */
 font-style: normal;
 font-weight: 300;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.ttf') format('truetype');
}

.nanumbarungothic * {
 /* font-family: 'NanumBarunGothic', sans-serif; */
}

 </style>
 
  <!-- 별점 css -->
  <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"> -->
  <link rel="stylesheet" href="resources/reviewstar/fontawesome-stars.css">
  <script src="resources/reviewstar/jquery.barrating.min.js"></script>

</head>

<body>

  <!-- header -->
  <tiles:insertAttribute name="header" />

  <!-- 몸통 -->
  <tiles:insertAttribute name="body" />

  <!-- 발 -->
  <tiles:insertAttribute name="footer" />

</body>