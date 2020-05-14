<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

	.autocomplete-items {
	  position: absolute;
	  z-index: 99;
	  /*position the autocomplete items to be the same width as the container:*/
	  top: 100%;
	  width: 265px;
	  overflow:scroll;
	  height:200px;
	   
	}
	.autocomplete {
	  /*the container must be positioned relative:*/
	  position: relative;
	  display: inline-block;
	}
	input {
	  border: 1px solid transparent;
	  padding: 10px;
	  font-size: 16px;
	}
	input[type=text] {
	  
	  width: 100%;
	}
	.autocomplete-items div {
	  padding: 10px;
	  cursor: pointer;
	  background-color: #fff;
	  border-bottom: 1px solid #d4d4d4;
	}
	.autocomplete-items div:hover {
	  /*when hovering an item:*/
	  background-color: #e9e9e9;
	}
	.autocomplete-active {
	  /*when navigating through the items using the arrow keys:*/
	  background-color: DodgerBlue !important;
	  color: #ffffff;
	}
	.expander {background:#7460ee;  width: 100%; padding: 10px; display: block; margin-bottom: 10px; text-decoration: none;}

.content {display:none;}
</style>
</head>
<body>

	<div id="main-wrapper">
		<jsp:include page="../common/navigator.jsp"/>
		
		
		
	<c:if test="${ sessionScope.msgmsg != null }">
		<script>
				alert("${sessionScope.msgmsg}");
		</script>
	<c:remove var="msgmsg" scope="session"/>
	</c:if>
		
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
	                            <li class="breadcrumb-item"><a href="#">Home</a></li>
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
	          
                        <div class="card" style="width: 400px; float: left;margin-left: 5%;">
                        <form method="post" action="insert.mg" enctype="multipart/form-data">
                            <div class="card-body" >
                                <h5 class="card-title">쪽지 보내기</h5>
                                <div class="form-group row">
                                    <label class="col-md-3 m-t-15">수신자</label>
                                    <div class="col-md-9">
                                        <input style="margin-top:10px;"  class="form-control form-control-sm"  aria-controls="zero_config" id="myInput" type="text"  name="countries" placeholder="이름">
                                    </div>
                                </div>
                              
                                <div class="form-group row">
                                    <label for="validatedCustomFile" class="col-md-3">첨부 파일</label>
                                    <div class="col-md-9">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="validatedCustomFile" name="attachment" >
                                            <label class="custom-file-label" for="validatedCustomFile" >Choose file...</label>
                                        </div>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label class="col-md-3 m-t-15">제목</label>
                                    <div class="col-md-9">
                                        <input style="margin-top:10px;"  class="form-control form-control-sm"  aria-controls="zero_config"  type="text" name="title">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">내용</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control" style="height: 214px;" name="content"></textarea>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </form>
                             <div class="card" style="width:600px;float:right; margin-right: 5%;">
                            <div class="card-body" >
                                <h4 class="card-title m-b-0">받은 쪽지함</h4>                                
                            </div>
                            <div class="comment-widgets scrollable" style="height: 500px;" >
                                <!-- Comment Row -->
                                <c:choose>
                          			 <c:when test="${fn:length(list) > 0}">
                   
                                <c:forEach items="${list}" var="m">                          			 
		                                <div class="d-flex flex-row comment-row m-t-0" >
		                                    <div class="p-2"><img src="data:image/png;base64,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" alt="user" width="50" class="rounded-circle"></div>
		                                    <div class="comment-text w-100">
		                                        <h6 class="font-medium">${m.name } / ${m.departmentname} </h6>
		                                        <span class="m-b-15 d-block">${m.title} </span>
		                                        <div class="comment-footer">
		                                            <span class="text-muted float-right" style="color:white;" id="time"> 보낸시간: ${m.sendTime }</span> 																													
		                                            <a class="expander" style="color:white;" id="checkmsg" >메세지보기 <input type="hidden" id="messageNo" value="${m.messageNo }"></a>
													      <div class="content">
													        <div class="list" style="width:100%; height:100%; border:1px solid #7460ee; margin-bottom:10px; padding: 5px 5px 5px 5px;">
													        <c:choose>
									                    		<c:when test="${ !empty m.originName }">
									                       			<b>첨부파일:</b> <a href="${ pageContext.servletContext.contextPath }/resources/upload_file_messenger/${ m.updateName}" download="${ m.originName }">${ m.originName }</a>
									                        	</c:when>
									                        	<c:otherwise>
									                        		<b>첨부파일이 없습니다.</b>
									                        	</c:otherwise>
									                        </c:choose>
									                        <br>
													         		${m.content }
													        </div>
												
		                                            <button type="button" class="btn btn-danger btn-sm" class=""> <input type="hidden" value="${m.messageNo }">삭제하기</button>
													      </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                  
		                         </c:forEach>
		                                 </c:when>
		                                 <c:otherwise>
		                                 <div class="d-flex flex-row comment-row m-t-0 btn btn-primary" style="pointer-events:none;">
		                                 	받은 편지가 없습니다....
		                                 	</div>
		                                 </c:otherwise>
		                                 </c:choose>
		                                 
                         
                        </div>
                      
                        </div>
                        </div>
                
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->

				<jsp:include page="../common/footer.jsp"/>
               
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		
		</div>

	<script>
function autocomplete(inp, arr) {
  
  var currentFocus;
  
  inp.addEventListener("input", function(e) {
      var a, b, i, val = this.value;
    
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
     
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
      a.setAttribute("class", "autocomplete-items");
      
      
      this.parentNode.appendChild(a);
     
      for (i = 0; i < arr.length; i++) {

        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {

          b = document.createElement("DIV");
        
          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
          b.innerHTML += arr[i].substr(val.length);
        
          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
     
          b.addEventListener("click", function(e) {
              
              inp.value = this.getElementsByTagName("input")[0].value;
             
              closeAllLists();
          });
          a.appendChild(b);
        }
      }
  });

  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
    
        currentFocus++;
     
        addActive(x);
      } else if (e.keyCode == 38) { 
       
        currentFocus--;
      
        addActive(x);
      } else if (e.keyCode == 13) {
     
        e.preventDefault();
        if (currentFocus > -1) {
       
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
   
    if (!x) return false;
 
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
  
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  
  function closeAllLists(elmnt) {
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }

  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
  });
 
}

var countries = [];
	$("#myInput").click(function(){
		$.ajax({
			url:"search.mg",
			type:"get",
			success:function(list){
				 $.each(list, function(i) {
				     countries[i] = list[i];
				    });
				
			},error:function(){
				console.log("실패");
			}
		});
	});
	
	countries
	
	
	autocomplete(document.getElementById("myInput"), countries);  
	
	/* autocomplete(document.getElementsByClassName("myInput"),countries); */
</script>
<script>

		// 메세지보기
		$('.content').hide();
		$('.expander').click(function(x) {
		$(this).toggleClass('active');
		    var toggle = $(this).nextUntil('.expander');
		    toggle.slideToggle();
		$('.content').not(toggle).slideUp();
		x.preventDefault();
		});

		// 파일업로드시 이름 바뀜 
      $('#validatedCustomFile').on('change',function(){
         var fileName = $(this).val();
        $(this).next('.custom-file-label').html(fileName);
            });
		
		
     
  		$(".expander").click(function(){
  			
  			var a = $(this).children().eq(0).val();
  				
  			$.ajax({
  				url:"checkmsg.mg",
  				data:{msgNo: a},
  				type:"get",
  				success:function(m){
  					
  					 value = m.receiveTime;
  					 $('#time').html(value);
  					 console.log(value);
  					 
  				}, error:function(){
  					console.log("실패");
  				}
  			});
  		});
  		
 

  	
	$(".btn-sm").click(function(){
		
		var msgNo = $(this).children().eq(0).val();  //왜 에이잭스안에있으면안되는지
		
				 alertify.confirm("삭제하시겠습니까?",function(e){
				        if(e) {
				        	
				        	$.ajax({
				  				url:"deletemsg.mg",
				  				data:{msgNo: msgNo},
				  				type:"get",
				  				success:function(result){
				  					
				  					alertify.alert("삭제되었습니다.");
				  					window.setTimeout(function(){location.reload()},1000)
				  					
				  				
				  				}, error:function(){
				  					console.log(msgNo);
				  					console.log("실패");
				  				}
				  			});
				        	
				        
				        } else {
				            return false;
				        }

				    });
				});
        </script>
        
	
</body>
	
</html>