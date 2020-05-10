<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div id="main-wrapper">
	
	<jsp:include page="../../common/navigator.jsp"/>
	
	 <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Convenience</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Convenience</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">

                <!--==============================================hajin==================================================-->
                <form id="namecardForm" action="insertNamecard.nc" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-12">
                
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">명함 신청</h4>
                                <hr>
                                  <div class="form-group row">
                                    <label class="col-md-3">사번</label>
                                    <div class="col-md-9">
                                        <div class="custom-control custom-radio">
                                            <input type="text" class="col-md-3 m-t-15 form-control" name="memberNo">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Type</label>
                                    <div class="col-md-9">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" id="customControlValidation1" name="contentType" value="namecard1" required>
                                            <label class="custom-control-label" for="customControlValidation1"></label>
                                            <img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD2.png" alt="namecard1" width="300px;" height="150px;"/>
                                        </div>
                                        <hr>
                                         <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" id="customControlValidation2" name="contentType" value="namecard2" required>
                                            <label class="custom-control-label" for="customControlValidation2"></label>
                                            <img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD1.png" alt="namecard2" width="300px;" height="150px;"/>
                                        </div>
                                      
                                    </div>
                                </div>
                              
                            </div>
                            <div class="border-top">
                                <div class="card-body text-right">
                                    <button type="submit" class="btn btn-info" id="namecardbtn">Submit</button>
                                    <button type="button" class="btn btn-danger">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
           		 </div>
        	</form>
        </div>
    </div>
    
    <jsp:include page="../../common/footer.jsp"/>
    
    </div>
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="../../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../dist/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="../../assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="../../dist/js/pages/mask/mask.init.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="../../assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="../../assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="../../assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="../../assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="../../assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="../../assets/libs/quill/dist/quill.min.js"></script>
    <script>
        //***********************************//
        // For select 2
        //***********************************//
        
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('.datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

        $(function(){
            $("#namecardbtn").click(function(){
                confirm("명함을 신청하시겠습니까?");
            });
        });
    </script>
    
	
	
</body>
</html>