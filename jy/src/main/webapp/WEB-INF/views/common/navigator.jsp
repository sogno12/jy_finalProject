<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="root" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/resources/images/favicon.png">
<title>Matrix Template - The Ultimate Multipurpose admin template</title>
<link href="${ pageContext.servletContext.contextPath }/resources/css/style.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/css/float-chart.css" rel="stylesheet">
<!-- alertifyJs -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>


<title>Insert title here</title>
</head>
<body>
		<!-- ============================================================== -->
	    <!-- Topbar header - style you can find in pages.scss -->
	    <!-- ============================================================== -->
	    <header class="topbar" data-navbarbg="skin5">
	        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
	            <div class="navbar-header" data-logobg="skin5">
	                <!-- This is for the sidebar toggle which is visible on mobile only -->
	                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="main.do"><i class="ti-menu ti-close"></i></a>
	                <!-- ============================================================== -->
	                <!-- Logo -->
	                <!-- ============================================================== -->
	                <a class="navbar-brand" href="main.do">
	                    <!-- Logo icon -->
	                    <b class="logo-icon p-l-10">
	                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
	                        <!-- Dark Logo icon -->
	                        <img src="${ pageContext.servletContext.contextPath }/resources/images/logo-icon.png" alt="homepage" class="light-logo"/>
	                        
	                        <!-- Logo text -->
	                        
	                        	<span class="logo-text" style="margin-left: 20px; vertical-align: middle;">
	                            	J&Y CO.
	                        	</span>
	                        
	                       
	                    </b>
	                    <!--End Logo icon -->
	                     
	                    <!-- Logo icon -->
	                    <!-- <b class="logo-icon"> -->
	                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
	                        <!-- Dark Logo icon -->
	                        <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
	                        
	                    <!-- </b> -->
	                    <!--End Logo icon -->
	                </a>
	                <!-- ============================================================== -->
	                <!-- End Logo -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- Toggle which is visible on mobile only -->
	                <!-- ============================================================== -->
	                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
	            </div>
	            <!-- ============================================================== -->
	            <!-- End Logo -->
	            <!-- ============================================================== -->
	            <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
	                <!-- ============================================================== -->
	                <!-- toggle and nav items -->
	                <!-- ============================================================== -->
	                <ul class="navbar-nav float-left mr-auto"></ul>
	                <!-- ============================================================== -->
	                <!-- Right side toggle and nav items -->
	                <!-- ============================================================== -->
	                <ul class="navbar-nav float-right">
	                    <!-- ============================================================== -->
	                    <!-- Comment -->
	                    <!-- ============================================================== -->
	                    <li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell font-24"></i>
	                        </a>
	                         <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2" >
	                            <ul class="list-style-none">
	                                <li>
	                                    <div class="" id="alarm">
	                                         <!-- 회의실 -->
	                                        <a href="javascript:void(0)" class="link border-top">
	                                            <div class="d-flex no-block align-items-center p-10">
	                                                <span class="btn btn-warning btn-circle"><i class="fas fa-laptop"></i></span>
	                                                <div class="m-l-10">
	                                                    <h5 class="m-b-0">회의실</h5> 
	                                                    <span class="mail-desc">${eachAlarm[1]}개의 신규알람</span> 
	                                                </div>
	                                            </div>
	                                        </a>
	                                        <!-- 명함 -->
	                                        <a href="javascript:void(0)" class="link border-top">
	                                            <div class="d-flex no-block align-items-center p-10">
	                                                <span class="btn btn-danger btn-circle"><i class="fas fa-badge"></i></span>
	                                                <div class="m-l-10">
	                                                    <h5 class="m-b-0">명함</h5> 
	                                                    <span class="mail-desc">${eachAlarm[2]}개의 신규알람</span> 
	                                                </div>
	                                            </div>
	                                        </a>
	                                        <!-- 쪽지 -->
	                                        <a href="javascript:void(0)" class="link border-top">
	                                            <div class="d-flex no-block align-items-center p-10">
	                                                <span class="btn btn-info btn-circle"><i class="fas fa-comment-alt"></i></span>
	                                                <div class="m-l-10">
	                                                    <h5 class="m-b-0">쪽지</h5> 
	                                                    <span class="mail-desc">${eachAlarm[4]}개의 신규알람</span> 
	                                                </div>
	                                            </div>
	                                        </a>
	                                        <!-- 결재변경 -->
	                                        <a href="sendAppBox.box" class="link border-top">
	                                            <div class="d-flex no-block align-items-center p-10">
	                                                <span class="btn btn-success btn-circle"><i class="fas fa-clipboard-check"></i></span>
	                                                <div class="m-l-10">
	                                                    <h5 class="m-b-0">결재변경</h5> 
	                                                    <span class="mail-desc">${eachAlarm[5]}개의 신규알람</span> 
	                                                </div>
	                                            </div>
	                                        </a>
	                                        <!-- 대기결재 -->
	                                        <a href="receiveAppBox.box" class="link border-top">
	                                            <div class="d-flex no-block align-items-center p-10">
	                                                <span class="btn btn-primary btn-circle"><i class="fas fa-notes-medical"></i></span>
	                                                <div class="m-l-10">
	                                                    <h5 class="m-b-0">대기결재</h5> 
	                                                    <span class="mail-desc">${eachAlarm[6]}개의 신규알람</span> 
	                                                </div>
	                                            </div>
	                                        </a>
	                                    </div>
	                                </li>
	                            </ul>
	                        </div>
	                    </li>
	                    <!-- ============================================================== -->
	                    <!-- End Comment -->
	                    <!-- ============================================================== -->
	                    <!-- ============================================================== -->
	                    <!-- Messages -->
	                    <!-- ============================================================== -->
	                    <li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-comment-processing"></i>
	                        </a>
	                        <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
	                            <ul class="list-style-none">
	                                <li>
	                                    <div class="">
	                                         <!-- Message -->
	                                        <a href="chatter.ch" class="link border-top">
	                                            <div class="d-flex no-block align-items-center p-10">
	                                                <span class="btn btn-outline-info btn-circle"><i class="fas fa-angle-double-right"></i></span>
	                                                <div class="m-l-10">
	                                                    <h5 class="m-b-0">Chat Alarm</h5> 
	                                                    <span class="mail-desc">None: 챗으로 이동</span> 
	                                                </div>
	                                            </div>
	                                        </a>
	                                    </div>
	                                </li>
	                            </ul>
	                        </div>
	                    </li>
	                    <!-- ============================================================== -->
	                    <!-- End Messages -->
	                    <!-- ============================================================== -->
	
	                    <!-- ============================================================== -->
	                    <!-- User profile and search -->
	                    <!-- ============================================================== -->
	                    <li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${ pageContext.servletContext.contextPath }/resources/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
	                        <div class="dropdown-menu dropdown-menu-right user-dd animated">
	                            <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>
	                            <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i> My Balance</a>
	                            <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i> Inbox</a>
	                            <div class="dropdown-divider"></div>
	                            <a class="dropdown-item" href="javascript:void(0)"><i class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
	                            <div class="dropdown-divider"></div>
	                            <a class="dropdown-item" href="logout.me"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
	                            <div class="dropdown-divider"></div>
	                            <div class="p-l-30 p-10"><a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded">View Profile</a></div>
	                        </div>
	                    </li>
	                    <!-- ============================================================== -->
	                    <!-- User profile and search -->
	                    <!-- ============================================================== -->
	                </ul>
	            </div>
	        </nav>
	    </header>
	    <!-- ============================================================== -->
	    <!-- End Topbar header -->
	    <!-- ============================================================== -->
	    <!-- ============================================================== -->
	    <!-- Left Sidebar - style you can find in sidebar.scss  -->
	    <!-- ============================================================== -->
	    <aside class="left-sidebar" data-sidebarbg="skin5">
	        <!-- Sidebar scroll-->
	        <div class="scroll-sidebar">
	            <!-- Sidebar navigation-->
	            <nav class="sidebar-nav">
	                <ul id="sidebarnav" class="p-t-30">
	                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-face"></i><span class="hide-menu">Member </span></a>
	                        <ul aria-expanded="false" class="collapse  first-level">
	                            <li class="sidebar-item"><a href="myInfo.me" class="sidebar-link"><i class="mdi mdi-worker"></i><span class="hide-menu"> 내 정보 </span></a></li>
                               <li class="sidebar-item"><a href="commute.me" class="sidebar-link"><i class="mdi mdi-check-circle-outline"></i><span class="hide-menu"> 근태 관리 </span></a></li>
                               <li class="sidebar-item"><a href="addressBook.me" class="sidebar-link"><i class="mdi mdi-contacts"></i><span class="hide-menu"> 주소록 </span></a></li>
                               <li class="sidebar-item"><a href="salary.me" class="sidebar-link"><i class="mdi mdi-calculator"></i><span class="hide-menu"> 급여 정보 </span></a></li>
                               <li class="sidebar-item"><a href="leave.me" class="sidebar-link"><i class="mdi mdi-airplane"></i><span class="hide-menu"> 휴가 정보 </span></a></li>
                               <li class="sidebar-item"><a href="messenger.me" class="sidebar-link"><i class="mdi mdi-email-outline"></i><span class="hide-menu"> 쪽지 </span></a></li>
	                        </ul> 
	                    </li>
	                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-account-multiple"></i><span class="hide-menu">Team </span></a>
	                        <ul aria-expanded="false" class="collapse  first-level">
	                            <li class="sidebar-item"><a href="yh-Board.html" class="sidebar-link"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> 사내 게시판 </span></a></li>
	                            <li class="sidebar-item"><a href="teamTable.me" class="sidebar-link"><i class="mdi mdi-sitemap"></i><span class="hide-menu"> 팀 정보 </span></a></li>
	                            
	                            <c:if test="${ loginUser.departmentNo eq 1 }">
		                            <!-- 총무팀 로그인시 보여지는 메뉴 -->
		                            <li class="sidebar-item"><a href="generalList.ge" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 총무팀 </span></a></li>
	                            </c:if>
	                            
	                            <c:if test="${ loginUser.departmentNo eq 2 }">
		                            <!-- 인사팀 로그인시 보여지는 메뉴 -->
		                            <li class="sidebar-item"><a href="memberList.me" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 직원 정보 </span></a></li>
		                            <li class="sidebar-item"><a href="salaryList.sa" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 급여 관리 </span></a></li>
		                            <li class="sidebar-item"><a href="enrollForm.me" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 인사 관리 </span></a></li>
		                            <li class="sidebar-item"><a href="commuteList.co" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 근태 관리 </span></a></li>
	                            </c:if>
	                        </ul>
	                    </li>
	                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-alert"></i><span class="hide-menu">Submit </span></a>
	                        <ul aria-expanded="false" class="collapse  first-level">
	                           <li class="sidebar-item"><a href="form.app" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 결재 작성 </span></a></li>
                               <li class="sidebar-item"><a href="listView.cir" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 회람 </span></a></li>
                               <li class="sidebar-item"><a href="sendAppBox.box" class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span class="hide-menu"> 결재함 </span></a></li>
	                        </ul>
	                    </li>
	                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="calendar.sc" aria-expanded="false"><i class="mdi mdi-calendar-check"></i><span class="hide-menu">Schedule</span></a></li>
	                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-table-edit"></i><span class="hide-menu">Convenience </span></a>
	                        <ul aria-expanded="false" class="collapse  first-level">
	                           <li class="sidebar-item"><a href="namecardForm.nc" class="sidebar-link"><i class="mdi mdi-contact-mail"></i><span class="hide-menu"> 명함 </span></a></li>
                               <li class="sidebar-item"><a href="businessForm.br" class="sidebar-link"><i class="mdi mdi-timetable"></i><span class="hide-menu"> 회의실 </span></a></li>
                               <li class="sidebar-item"><a href="cafeTeria.ca" class="sidebar-link"><i class="mdi mdi-coffee-to-go"></i><span class="hide-menu"> 카페테리아 </span></a></li>
                               <li class="sidebar-item"><a href="reservationList.nc" class="sidebar-link"><i class="mdi mdi-format-list-bulleted"></i><span class="hide-menu"> 예약 내역 </span></a></li>
	                        </ul>
	                    </li>
	                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="chatter.ch" aria-expanded="false"><i class="mdi mdi-message-outline"></i><span class="hide-menu">Chat</span></a></li>
	                </ul>
	            </nav>
	            <!-- End Sidebar navigation -->
	        </div>
	        <!-- End Sidebar scroll-->
	    </aside>
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- Charts js Files -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/excanvas.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/jquery.flot.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/jquery.flot.time.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/pages/chart/chart-page-init.js"></script>
    <script>
        function goProfile(){
            location.href="yh-myprofile.html";
        }
        
        function goMyRequest(){
            location.href="sendAppBox.box";
  
        }

        function goCafe(){
            location.href="hajin_cafe.html";
        }

        function goToWork(){
            alert("출근 확인되었습니다.");
        }

        function leaveWork(){
            alert("퇴근 확인되었습니다.");
        }
        
     </script>
  
        
	
	<script type="text/javascript">
	   /***********************/
       /* Web Socket // Sujin */
       /***********************/
	       
        var socket = null
        
        $(document).ready(function(){
        	connectWs();
        	readAlarms();
        });
         
        function connectWs(){
        	sock = new WebSocket("ws://localhost:"+location.port+"/jy/echo/websocket");
        	console.log("소켓실행");
        	socket = sock;
        	
   			sock.onmessage = function(cmd){
   				// alert(cmd.data);
   				if(cmd.data == 0){
   					//alert('알림갯수 함수 실행');
   					readAlarms();
   				} else if(cmd.data == 5) {
   					alertify.alert("결재 상태가 변경되었습니다.");	
   				} else if(cmd.data == 6){
   					alertify.alert("새 결재서가 대기중입니다.");	
   				} else {
   					var data = cmd.data;
   					
   					var idx = data.indexOf(",");
   					var no = data.substring(0, idx);
   					var text = data.substring(idx+1);
   					
   					console.log(no);
   					console.log(text);
   					
   					if(no == 7){
   						alertify.alert(text+"님이 채팅메세지를 보냈습니다.");
   					}
   				}
   				
   			};
        };
        
   		// 1. 각각의 알림갯수 가져오기	
   		function readAlarms(){
   			$.ajax({
   				url:'readAlarms.do',
   				type:'get',
   				success:function(text){
   	   				let $alarm = $('div#alarm');
   	   				$alarm.html(text.data);
   				}, error:function(err){
   					console.log(err);
   				}
   				
   			});
   		};
   			
   		
        
        
        
    	</script>
</body>
</html>