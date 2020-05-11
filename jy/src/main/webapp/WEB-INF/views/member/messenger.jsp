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
	                            <li class="breadcrumb-item"><a href="main.do">Home</a></li>
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
                                            <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
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
                            <div class="comment-widgets scrollable" style="height: 450px;" >
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row m-t-0">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                    
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm" >	  삭제하기</button>
                                        </div>
                                    </div>
                                </div>
                          
                                <ul style="margin-left: 22%;" class="pagination">
                                    <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                    <li class="paginate_button page-item active"><a href="#" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                    <li class="paginate_button page-item next" id="zero_config_next"><a href="#" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                </ul>                 
                             
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
	<script>
function autocomplete(inp, arr) {
  /*the autocomplete function takes two arguments,
  the text field element and an array of possible autocompleted values:*/
  var currentFocus;
  /*execute a function when someone writes in the text field:*/
  inp.addEventListener("input", function(e) {
      var a, b, i, val = this.value;
      /*close any already open lists of autocompleted values*/
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
      /*create a DIV element that will contain the items (values):*/
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
      a.setAttribute("class", "autocomplete-items");
      
      /*append the DIV element as a child of the autocomplete container:*/
      this.parentNode.appendChild(a);
      /*for each item in the array...*/
      for (i = 0; i < arr.length; i++) {
        /*check if the item starts with the same letters as the text field value:*/
        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
          /*create a DIV element for each matching element:*/
          b = document.createElement("DIV");
          /*make the matching letters bold:*/
          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
          b.innerHTML += arr[i].substr(val.length);
          /*insert a input field that will hold the current array item's value:*/
          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
          /*execute a function when someone clicks on the item value (DIV element):*/
          b.addEventListener("click", function(e) {
              /*insert the value for the autocomplete text field:*/
              inp.value = this.getElementsByTagName("input")[0].value;
              /*close the list of autocompleted values,
              (or any other open lists of autocompleted values:*/
              closeAllLists();
          });
          a.appendChild(b);
        }
      }
  });
  /*execute a function presses a key on the keyboard:*/
  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
        /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
        currentFocus++;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 38) { //up
        /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
        currentFocus--;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 13) {
        /*If the ENTER key is pressed, prevent the form from being submitted,*/
        e.preventDefault();
        if (currentFocus > -1) {
          /*and simulate a click on the "active" item:*/
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
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
	
	/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
	autocomplete(document.getElementById("myInput"), countries);
	
	
</script>

	
</body>
	
</html>