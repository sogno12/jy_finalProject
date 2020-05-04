<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/css/select2.min.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-minicolors/jquery.minicolors.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/assets/libs/quill/dist/quill.snow.css">
</head>
<body>

	<div id="main-wrapper">
		
		<jsp:include page="../common/navigator.jsp"/>
		
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">인사 관리</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="main.do">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Card</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title" style="margin-bottom: 20px;">인사 카드</h5>
                                
                                <form id="updateForm" action="update.me" method="post">
                                	<input type="hidden" name="empNo" value="${ m.empNo }">
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">이름</label>
	                                    <div class="col-md-6">
	                                        <input type="text" class="form-control" name="memberName" value="${ m.memberName }">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">주민등록번호</label>
	                                    <div class="col-md-6">
	                                        <input type="text" class="form-control" name="rrn" value="${ m.rrn }">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">주소</label>
	                                    <div class="col-md-6">
	                                        <input type="text" class="form-control" name="address" value="${ m.address }">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">연락처</label>
	                                    <div class="col-md-6">
	                                        <input type="text" class="form-control" name="phone" value="${ m.phone }">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">이메일</label>
	                                    <div class="col-md-6">
	                                        <input type="text" class="form-control" name="email" value="${ m.email }">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">부서</label>
	                                    <div class="col-md-6">
	                                        <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="departmentNo">
	                                             <option selected value="${ m.departmentNo }">${ m.departmentName }</option>
	                                             <option value="1">인사팀</option>
	                                             <option value="2">총무팀</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">직급</label>
	                                    <div class="col-md-6">
	                                        <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="positionNo">
	                                        	<option selected value="${ m.positionNo }">${ m.positionName }</option>
	                                        	<option value="1">대표</option>
	                                            <option value="2">부장</option>
	                                            <option value="3">차장</option>
	                                            <option value="4">과장</option>
	                                            <option value="5">대리</option>
	                                            <option value="6">사원</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">진급</label>
	                                    <div class="col-md-6">
	                                        <div class="input-group">
	                                            <input type="Date" class="form-control" placeholder="mm/dd/yyyy" name="promotionDate" value="${ m.promotionDate }">
	                                            <div class="input-group-append">
	                                                <span class="input-group-text"><i class="fa fa-calendar"></i></span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
                                	<div class="form-group row">
	                                    <label class="col-md-3 m-t-15 text-right">입사</label>
	                                    <div class="col-md-3">
	                                        <div class="input-group">
	                                            <input type="Date" class="form-control" placeholder="mm/dd/yyyy" name="joinDate" value="${ m.joinDate }">
	                                            <div class="input-group-append">
	                                                <span class="input-group-text"><i class="fa fa-calendar"></i></span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <label class="m-t-10 text-right">
	                                        <div class="custom-control custom-checkbox">
	                                            <input type="checkbox" class="custom-control-input" id="customControlAutosizing1">
	                                            <label class="custom-control-label" for="customControlAutosizing1">퇴사</label>
	                                        </div>
	                                    </label>
	                                    <div class="col-md-3">
	                                        <div class="input-group">
	                                            <input type="Date" class="form-control resignDate" placeholder="mm/dd/yyyy" disabled>
	                                            <div class="input-group-append">
	                                                <span class="input-group-text"><i class="fa fa-calendar"></i></span>
	                                            </div>
	                                        </div>
	                                    </div>
                                	</div>
                                	
                                	<div class="border-top">
		                                <div class="card-body">
		                                    <button type="submit" class="btn btn-info">Submit</button>
		                                </div>
		                            </div>
                                 </form>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            
        
        	<jsp:include page="../common/footer.jsp"/>
        </div>
	</div>
	
	<!-- All Jquery -->
    <!-- This Page JS -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/pages/mask/mask.init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/quill/dist/quill.min.js"></script>
	<script>
        //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*colorpicker*/
        $('.demo').each(function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                position: $(this).attr('data-position') || 'bottom left',

                change: function(value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });

        });

        
        $(function(){
            $("#customControlAutosizing1").change(function(){
                if($("#customControlAutosizing1").prop("checked")){
                    $(".resignDate").attr("disabled", false).attr("name", "resignDate");
                } else {
                    $(".resignDate").attr("disabled", true);
                }
            });
        });

        function enroll(){
            alert("입력하시겠습니까?");
        }
    </script>

</body>
</html>