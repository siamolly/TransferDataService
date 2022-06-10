<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>檔案傳輸服務</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
	<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-straight/css/uicons-bold-straight.css'>
	<style>
		*{
			font-weight: bold;
			font-size:20px;
		}
		button{
			border:0px;
			border-radius: 6px;
			color:white;
    		vertical-align: middle;
    		padding:5px;
    		padding-left:30px;
    		padding-right:30px;
    		margin:5px;
		}
		
		button > i {
			  vertical-align: middle;
		}
				
		div{
			padding:10px;
			border-radius:6px;
		}
		
		.icon-tool{
			width:300px;
			padding:0px;
			align:right;
			display:inline-block;
			visibility:hidden
		}
		a:hover{
			text-decoration:none;
			color:red;
			align:right;
			display:inline-block;
		}
		
		
	</style>
</head>

<body bgcolor='white'>

<div style="width:900px; margin:10px; border:3px solid;">

	<p>請上傳.pdf或.txt檔</p>
	<p style="color:#FF8000;">檔案大小上限5MB，保留5分鐘</p>
		
    
    <form action="uploadhandle.jsp" method="post" enctype="multipart/form-data">
    	
        <input type="file" name="file" size="50" onchange="change()" id="file" style="display: none" />
        <button type="button" onclick="file.click()" style="background-color:#808080">
        	<i class="fi fi-rr-link" style="text-align:center" ></i>　
        	選擇檔案
        </button>
        <div id="ch" style="display:inline-block">
        	<span id="fileName"></span>
        	<div align="right" class="icon-tool"  id="tool">
        		<a>
        			<i class="fi fi-bs-download"></i>
        		</a>
        		<a>
        			<i class="fi fi-bs-cross-circle"></i>
        		</a>
        	</div>
        </div>
        
        <div align=right>
			<div style="display:inline-block">
				<button  type="button" data-toggle="modal" data-target="#myModal" style="background-color:#037dfa"><i class="fi fi-rr-sign-in-alt"></i>  送出</button>
			</div>
			<div style="display:inline-block">
			
				<!-- 取消送出的java檔-->
					<button  type="button" style="background-color:#565656"><i class="fi fi-rr-cross-circle" ></i>  取消</button>
				
			</div>
		</div>
		
		<!-- Modal對話視窗 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div align="center">
						請確認是否送出?
					</div>
					
					<!-- 對話視窗中送出與取消按鈕 -->
					<div align="center">
						<div style="display:inline-block">
						
							<!--<form action='<c:url value="/"/>' method='POST'> 送出的java檔-->
								<button type="submit" name="afile" data-toggle="modal" data-target="#myModal" style="background-color:#037dfa"><i class="fi fi-rr-sign-in-alt"></i> 送出</button>
							<!--</form>-->
						</div>
						<div style="display:inline-block">
							<!--<form action='<c:url value="/"/>' method='POST'> 取消送出的java檔-->
								<button  type="button" data-toggle="modal" data-target="#myModal" style="background-color:#565656"><i class="fi fi-rr-cross-circle"></i>　取消</button>
							<!--</form>-->
						</div>
					</div>
				</div>
			</div>
		</div>
		
        
    </form>
    <h1>${requestScope.message}</h1>
    
    
    <!-- 顯示檔名 -->
    <script>
            function change() {
            	document.getElementById("ch").style.backgroundColor="#F5F5F5";
            	document.getElementById("ch").style.border="3px #696969 solid";
            	document.getElementById("tool").style.visibility="visible";
                $("#fileName").text($("#file").val());
            }
   </script>
   
    
</div>
</body>
</html>