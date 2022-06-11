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
		}
		html { height: 100%; } 
		body{
			 background-size:100% 100%
		}
		
		button{
			font-size:30px;
			border:0px;
			border-radius: 30px;
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
		
		
	</style>
</head>

<body  background="https://i.imgur.com/gJ7TQGy.png">

<div align="center" style="margin:50px;">

	<p style="margin-top:30px;font-size:100px">檔案傳輸服務</p>
	<p style="font-size:30px">可上傳.pdf或.txt類型的檔案。大小上限5MB</p>
		
    
    <form action="uploadhandle.jsp" method="post" enctype="multipart/form-data">
    	
        <input type="file" name="file" size="50" onchange="change()" id="file" align="center" style="display: none" />
        <button  type="button" onclick="file.click()" style="margin:30px; background-color:#74A4FF">
        	<i class="fi fi-bs-link" style="text-align:center" ></i> 選擇檔案
        </button>
        <div align="center" style="height:170px;">
        	<span id="fileName"  style="font-size:30px" ></span>
        	<p style="font-size:30px" >${requestScope.message}</p>
        	
        </div>
        
       
		
		<!-- Modal對話視窗 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div align="center" style="font-size:30px;">
						請確認是否送出?
					</div>
					
					<!-- 對話視窗中送出與取消按鈕 -->
					<div align="center">
						<div style="display:inline-block">
						
							<!--<form action='<c:url value="/"/>' method='POST'> 送出的java檔-->
								<button type="submit" name="afile" data-toggle="modal" data-target="#myModal" style="background-color:#74A4FF">
								<i class="fi fi-bs-sign-in-alt"></i>
								送出</button>
							<!--</form>-->
						</div>
						<div style="display:inline-block">
							<!--<form action='<c:url value="/"/>' method='POST'> 取消送出的java檔-->
								<button  type="button" data-toggle="modal" data-target="#myModal" style="background-color:#FFA9A9">
								<i class="fi fi-bs-cross-circle"></i>
								取消</button>
							<!--</form>-->
						</div>
					</div>
				</div>
			</div>
		</div>
		
        
    </form>
    
    
    
    <!-- 顯示檔名 -->
    <script>
            function change() {
                $("#fileName").text($("#file").val());
            }
   </script>
   <div align=right>
   <div style="display:inline-block">
   <form action="listName.jsp" method="get" enctype="multipart/form-data">
    	
        <button type="submit" style="background-color:#74A4FF">
        	<i class="fi fi-bs-download" style="text-align:center" ></i> 可下載
        </button>
   </form>
   </div>
   
    
			<div style="display:inline-block">
				<button  type="button" data-toggle="modal" data-target="#myModal" style="background-color:#74A4FF">
				<i class="fi fi-bs-sign-in-alt"></i>
				  送出</button>
			</div>
			<div style="display:inline-block">
			
				<!-- 取消送出的java檔-->
					<button  type="button" style="background-color:#FFA9A9">
					<i class="fi fi-bs-cross-circle" ></i>
					  取消</button>
				
			</div>
		</div>
    
</div>
</body>
</html>