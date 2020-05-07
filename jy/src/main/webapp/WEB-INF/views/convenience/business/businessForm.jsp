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
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" id="insertBroom" action="insertBroom.br" enctype="multipart/form-data" method="post">
                                <div class="card-body">
                                    <h4 class="card-title">회의실 예약</h4>
        							<input type="hidden" value="${loginUser.memberNo }" name="memberNo">
                                    <hr>
                                    <div class="form-group row">
                                        <label class="text-right col-md-3 m-t-15">회의실</label>
                                        <div class="col-md-3">
                                            <select id="roomNoType" class="select2 form-control custom-select" style="width: 100%; height:36px;" name="roomNo">
                                                    <option value="1">Room101</option>
                                                    <option value="2">Room102</option>
                                                    <option value="3">Room201</option>
                                                    <option value="4">Room202</option>
                                                    <option value="5">Room301</option>
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">인원</label>
                                        <div class="col-sm-3">
                                            <input id="count" type="number" min="0" max="" name="count" class="form-control" style="display:inline-block; width:100px;">
                                        </div>
                                    </div>
                                    <script>
                                    	$(function(){
                                    		var today = new Date();
                                    		
                                    		
                                    		var month = today.getMonth()+1;
                                    		if(month < 10){
                                    			month = "0" + month;
                                    		}
                                    		
                                    		var day = today.getDate();
                                    		if(day < 10){
                                    			day = "0" + day;
                                    		}
                                    		
                                    		var todayStr = month + "/" + day + "/" + today.getFullYear();
                                    		
                                    		$("#hope_date").val(todayStr);
                                    	});
                                    </script>
                                    
                                    <label class="text-right col-md-3 m-t-15" style="display: inline-block;">사용 일시</label>
                                    <div class="input-group col-md-4 " style="display: inline-block;">
                                        <input id="hope_date" name="hopeDate" type="text" class="form-control datepicker-autoclose" value="" placeholder="mm/dd/yyyy" style="width: 120px; display: inline-block;">
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                        <select id="timeType" name="time" class="form-control" style="display:inline-block; width: 150px;">
                                            <option value="1">09:00~11:00</option>
                                            <option value="2">11:00~13:00</option>
                                            <option value="3">13:00~15:00</option>
                                            <option value="4">15:00~17:00</option>
                                            <option value="5">17:00~19:00</option>
                                        </select>
                                    </div>
                                 
                                 <br><br>
                                </div>
                                <div class="border-top">
                                    <div class="card-body text-right">
                                        <button type="submit" class="btn btn-info" id="businessbtn">Submit</button>
                                        <button type="reset" class="btn btn-danger">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
		<jsp:include page="../../common/footer.jsp"/>
       </div>
	</div>
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
        
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('.datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

        var roomNo;
        
        $(function(){
        	selectReserveList();
        	
        	$("#roomNoType").on("change", function(){
        		selectReserveList();
        	});
        	
        	$("#hope_date").on("change", function(){
        		selectReserveList();
        	});
        	$("#count").on("change", function(){
        		selectList();
        	});
        });
        
        function selectReserveList(){
        	
        	roomNo = $("#roomNoType>option:selected").val();
        	var hopeDate = $("#hope_date").val();
        	var count = $("#count").val();
        	/* console.log(roomNo);
        	console.log(hopeDate);
        	console.log(count); */
        	
        	$.ajax({
        		url:"businessList.br",
        		data:{roomNo:roomNo, hopeDate:hopeDate},
        		success:function(list){
        			
                    var timeArr = ["09:00~11:00", "11:00~13:00", "13:00~15:00", "15:00~17:00", "17:00~19:00"];
        			
                    var value="";
        			if(list.length == 0){
        				for(var i=0; i<timeArr.length; i++){
        					value += "<option value='" + (i+1) + "'>" + timeArr[i] + "</option>";
        				}
        			}else{
        				for(var i=0; i<timeArr.length; i++){
        					
        					var flag = true;
        					$.each(list, function(index, obj){
        						if(timeArr[i] == obj.timeType){
        							flag = false;
        						}
        					});
        					
        					if(flag){ // 현재 그 시간은 예약 가능
        						value += "<option value='"+ (i+1) + "'>" + timeArr[i] + "</option>";
        					}else{ // 현재 그 시간은 예약 불가
        						value += "<option disabled>" + timeArr[i] + "</option>";
        					}
        				}
        			}
        		
        		$("#timeType").html(value);
        			
        		},error:function(){
        			console.log("ajax통신실패");
        		}
        	});
        }
        
         function selectList(){
        	$.ajax({
        		url:"selectList.br",
        		data:{roomNo:roomNo},
        		success:function(list){
        			
        			var flag = 0;
        			$.each(list, function(index, obj){
        				
        					 console.log(obj.roomCount);
        					$("#count").attr("max", obj.roomCount);
        			});
        			
        		}, error:function(){
        			console.log("ajax통신실패!");
        		}
        		
        	});
        } 
         
        
    </script>
</body>
</html>