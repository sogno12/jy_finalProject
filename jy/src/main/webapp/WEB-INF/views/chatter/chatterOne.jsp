<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/resources/images/favicon.png">
    <title>Matrix Template - The Ultimate Multipurpose admin template</title>
    <!-- Custom CSS -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        
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
                        <h4 class="page-title">Chatter</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Chatter</li>
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
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">On Chatting</h4>
                                <div class="chat-box scrollable chatter" style="height:475px; overflow:scroll" id="chat-box">
                                    <!--chat Row -->
                                    <ul class="chat-list">
                                        <!-- 채팅 내용 들어갈 공간 -->
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <div class="row">
                                    <div class="col-9">
                                        <div class="input-field m-t-0 m-b-0">
                                            <textarea id="textarea1" placeholder="Type and enter" class="form-control border-0" style="resize:none"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <a class="btn-circle btn-lg btn-cyan float-right text-white" id="send-btn"><i class="fas fa-paper-plane"></i></a>
                                    </div>
                                </div>
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
            <!-- ============================================================== -->
            
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/custom.min.js"></script>
    
    
    <script>
    

    $('document').ready(function() {
    	var MESSAGE_TYPES = {
    		ENTER: 'ENTER',
    		MESSAGE: 'MESSAGE',
    	};
        var wsUri = "ws:localhost:"+location.port+"/jy/chatter/websocket";

        websocket = new WebSocket(wsUri);
        
        
        websocket.onopen = function(evt) {
            onOpen(evt)
        };
		
        websocket.onmessage = function(evt) {
            onMessage(evt)
        };
        
		//에러
        websocket.onerror = function(evt) {
            onError(evt)
        };
        

        function onOpen(evt) {
        	console.log('채팅창 오픈');
        	var message = {
        		type: MESSAGE_TYPES.ENTER,
        		message: 'HELLO',
        		sender: '${loginUser.memberName}',
        		roomNo: '${chatterDto.chatterNo}'
        	};
        	
        	var str = JSON.stringify(message);
        	// console.log(str);
        	websocket.send(str);        	
        }

        function doSend(msg) {
           	var message = {
      			type: MESSAGE_TYPES.MESSAGE,
         		message: msg,
         		sender: '${loginUser.memberName}',
         		roomNo: '${chatterDto.chatterNo}'
         	};
           	var str = JSON.stringify(message);
            websocket.send(str);
        }
        
        function onMessage(msg) {
        //console.log(msg);
           var data = msg.data;
           var reformMsg = "";
           
           	var idx = data.indexOf(",");
			var no = data.substring(0, idx);
			var text = data.substring(idx+1);
			
			//console.log(no);
			//console.log(text);
			
           if(text == '0'){
        	   reformMsg += "<li style='text-align:center'>"+no+"님이 방에 입장하셨습니다.</li>";
           } else if (text == '1'){
        	   reformMsg += "<li style='text-align:center'>상대 접속자가 없습니다.</li>";
        	   // 부모창접근
        	   
        	   var alarm = { chatterNo : '${chatterDto.chatterNo}',
        			   		senderName : no}
        	   $.get('chatterAlarm.do', alarm)
        	   .done(function (res){
        		   console.log('chatterAlarm');
        	   })
        	   .fail(function (err){
        		   console.log('chatterAlarm err')
        	   });
        	   
        	   
           } else {
	     	   if(no != '${loginUser.memberName}'){
					reformMsg += "<li class='chat-item'><div class='chat-content'><h6 class='font-medium'>";
					reformMsg += no;
					reformMsg += "</h6><div class='box bg-light-info'>";
					reformMsg += text;
					reformMsg += "</div></div><div class=\"chat-time\">"
					reformMsg += getCurrentTime();
					reformMsg += "</div></li>";
	     	   }else {
					reformMsg += "<li class='odd chat-item'><div class=\"chat-content\"><div class=\"box bg-light-inverse\">";
					reformMsg += text;
					reformMsg += "</div><br></div></li>";
				}
			}
           //console.log(reformMsg);
           $('.chatter ul').append(reformMsg);
           
           $('.chatter ul').scrollTop($('.chatter ul')[0].scrollHeight);
            
        }

        function onError(evt) {
        	console.log('chatter error')
        }
        
        // 주기적으로 시간표시
        function getCurrentTime(){
            
	   		var d = new Date();
	   	  	var s =
	    	    leadingZeros(d.getFullYear(), 4) + '-' +
	    	    leadingZeros(d.getMonth() + 1, 2) + '-' +
	    	    leadingZeros(d.getDate(), 2) + ' ' +
	
	    	    leadingZeros(d.getHours(), 2) + ':' +
	    	    leadingZeros(d.getMinutes(), 2) + ':' +
	    	    leadingZeros(d.getSeconds(), 2);

			return s;
       	}

       	function leadingZeros(n, digits) {
       	  var zero = '';
       	  n = n.toString();

       	  if (n.length < digits) {
       	    for (i = 0; i < digits - n.length; i++)
       	      zero += '0';
       	  }
       	  return zero + n;
       	}
        
        // 채팅 입력
        $('#textarea1').keyup(function(e){
        	e.preventDefault();
        	var code = e.keyCode ? e.keyCode : e.which;
        	if(code==13){ //EnterKey
        		if(e.shiftKey == true){
        			//shift 키가 눌려진 상태에선 new line으로
        		}else{
        			var textarea = document.getElementById('textarea1')
                	doSend(textarea.value);
                	textarea.value = '';
        		}
        		return false;
        	}
        })
        
        $('#send-btn').on('click', function() {
        	var textarea = document.getElementById('textarea1')
        	doSend(textarea.value);
        	textarea.value = '';
        })
        
        
        
        
    })
    </script>
    
</body>

</html>