<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 .clock {
	    top: 120%;
	    left: 30%;
	    transform: translateX(-50%) translateY(-50%);
	    color: black;
	    font-size: 20px;
	    font-family: Orbitron;
	    letter-spacing: 7px;
	    float:right;
	
	}
</style>
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="../common/navigator.jsp"/>
		
		
		<!-- Page wrapper  -->
	    <!-- ============================================================== -->
	    <div class="page-wrapper">
	        <!-- ============================================================== -->
	        <!-- Bread crumb and right sidebar toggle -->
	        <!-- ============================================================== -->
	         <div class="page-breadcrumb">
	            <div class="row">
	                <div class="col-12 d-flex no-block align-items-center">
	                    <nav aria-label="breadcrumb">
	                        <ol class="breadcrumb">
	                            <li class="breadcrumb-item"><a href="${ pageContext.servletContext.contextPath }/WEB-INF/views/main.jsp">Home</a></li>
	                            <li class="breadcrumb-item active" aria-current="page">List</li>
	                        </ol>
	                    </nav>
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
	           <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body" style="padding-bottom: 0px;">
                                <h5 class="card-title m-b-0">근태 관리</h5>
                                <div id="MyClockDisplay" class="clock" onload="showTime()" style="float: right;"></div>
                            </div>
                            <table class="table" >

                                  <tbody>
                                    <tr>
                                      <th scope="row" style="padding-left: 100px;">이름</th>
                                      <td style="padding-right: 100px;" id="name">${loginUser.memberName }</td>
                                    
                                    </tr>
                                    <tr>
                                      <th scope="row" style="padding-left: 100px;">부서</th>
                                      <td style="padding-right: 100px;" id="department" >${loginUser.departmentName }</td>
                                     
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">지각여부(일)</th>
                                        <td style="padding-right: 100px;" id="attended" > - </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">지각여부(월)</th>
                                        <td style="padding-right: 100px;" id="tardycount">-</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">결근횟수</th>
                                        <td style="padding-right: 100px;" class="show" id="absence"> -<br>
                                            
                                        </td>
                                       
                            	
                                    </tr>
                                   <!-- Modal -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                            <div class="modal-content" style="width: 202px;margin-left: 150px;margin-top: 200px;">
                                                <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">결근한 날짜</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                </div>
                                                <div class="modal-body">
                                                <ul>
                                                    <li>02/23/2020</li>
                                                    <li>02/20/2020</li>
                                                    <li>03/20/2020</li>                             
                                                </ul>
                                                </div>
                                                <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>                               </div>
                                                </div>
                                            </div>
                                        </div>
                                    
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">출근</th>
                                        <td style="padding-right: 100px;">
                                        
                                        <button class="badge badge-primary" id="clockIn" >Clock In</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">퇴근</th>
                                        <td style="padding-right: 100px;"><button class="badge badge-primary" id="clockOut">Clock Out</button></td>
                                   			<input type="hidden" id="empNo" value="${loginUser.empNo }">
                                    </tr>
                                  </tbody>
                            </table>
                        </div>
                        </div>
                        </div>
                
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->

               
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		
		<jsp:include page="../common/footer.jsp"/>
		</div>
	</div>
	 <script>
	
	$(function(){
		
		selectClockIn();
		
		var today = new Date();
		var day = new Date();
		
		var dd = today.getDate();

		var MM = today.getMonth()+1; 
		var yyyy = today.getFullYear();
		var hh = today.getHours();
		var mm = today.getMinutes();
		var ss = today.getSeconds();
		
		if(dd<10) 
		{
		    dd='0'+dd;
		} 

		if(mm<10) 
		{
		    mm='0'+mm;
		} 

		today = MM+'-'+dd+'-'+yyyy + ' ' + hh + ':' + mm + ':' + ss;
		day = MM + '-' + dd + '-' + yyyy;
		
	console.log(today);
	console.log(day);
	
		// 출근 
		$("#clockIn").click(function(){
			$.ajax({
				url:"clockIn.co",
				data:{ today: today, day:day },
				type:"post",
				success:function(result){
				
					alertify.alert("출근 확인!");
					selectClockIn();
				
				}, error:function(){
					console.log("ajax 통신 실패");
				}
				});
				
			});
		
		// 퇴근 
		$("#clockOut").click(function(){
			$.ajax({
				url:"clockOut.co",
				data:{ today: today },
				type:"post",
				success:function(result){
				
					alertify.alert("퇴근 확인!");
					selectClockIn();
				
				}, error:function(){
					console.log("ajax 통신 실패");
				}
				});
				
			});
		
		});
	
	
	// 출석한거 불러오는거
	function selectClockIn(){
		
		$.ajax({
			url:"selectClock.co",
			data:{empNo: $("#empNo").val()},
			type:"post",
			success: function(c){
	
				var valueT="";
				var valueM = "";
				var valueD = "";
				var valueA = "";
				var valueQ = "";
				var valueC = "";
				var valuetd = "";
				
			 if(c.tardy == 'N'){
				 
				  valueT += '정상출근';
				  
			 } else if(c.tardy == 'Y'){
				 
				 valueT += '지각';
				 
			 } else{
				 
				 valueT += '-';
			 }
			 
			 if (c.attendTime != null){
				 
				 valueC += c.attendTime;
				 $("#clockIn").prop('disabled', true);
			
			 }else{
				 
				 valueC += "clockIn";
				 $("#clockIn").prop('disabled', false);
			
			 }
			 
 			if (c.quittingTime != null){
				 
				 valueQ += c.quittingTime;
				 $("#clockOut").prop('disabled', true);
			
			 }else{
				 
				 valueQ += "Clock Out";
				 $("#clockOut").prop('disabled', false);
			
			 }
			 
			 if(c.absence < 1){
				 
				 valueA += '-';
			
			 }else{
				 
				 valueA += c.absence + '일' ;
			
			 }
			 if(c.tardycount < 1){
			
				 valuetd += '-';
			
			 }else{
			
				 valuetd += c.tardycount + '번';
			
			 }
		
 			
			 valueA += '<br>' + "<button class='badge badge-primary' data-toggle='modal' data-target='#exampleModal'>" + "결근 조회" + "</button>" ;
			 valueM += c.name;
			 valueD += c.department;
			 
			 
			 
			 $("#attended").html(valueT);
			 $("#absence").html(valueA);
			 $("#clockIn").html(valueC);
			 $("#clockOut").html(valueQ);
			 $("#tardycount").html(valuetd);
			 
			 
			}, error:function(){
				console.log('통신실패!')
			}
			
		});
       
	}
	
	
    function showTime(){
        var date = new Date();
        var h = date.getHours(); // 0 - 23
        var m = date.getMinutes(); // 0 - 59
        var s = date.getSeconds(); // 0 - 59
        var session = "AM";
        
        if(h == 0){
            h = 12;
        }
        
        if(h > 12){
            h = h - 12;
            session = "PM";
        }
        
        h = (h < 10) ? "0" + h : h;
        m = (m < 10) ? "0" + m : m;
        s = (s < 10) ? "0" + s : s;
        
        var time = h + ":" + m + ":" + s + " " + session;
        document.getElementById("MyClockDisplay").innerText = time;
        document.getElementById("MyClockDisplay").textContent = time;
        
        setTimeout(showTime, 1000);
        
    }
    
    showTime();
    
        </script>
</body>
</html>