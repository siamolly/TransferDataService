<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<%@ page import="java.io.*"%>

<html>

	<head>
		<title>Download List</title>
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
		<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-straight/css/uicons-bold-straight.css'>
		<style>
			html { height: 100%; } 
			body{background-size:100% 100%;}
			*{
				font-weight: bold;
				font-size:20px;
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
    			background-color:#74A4FF;
			}
			
			
		</style>
	</head>

	<body background="https://i.imgur.com/gJ7TQGy.png">
		<%
		
			String path="C:\\Users\\asus\\Desktop\\HW\\";
			
			File d=new File(path);//建立目前的目錄中檔案的File對象
			
			File list[]=d.listFiles();//取得代表目錄中所有檔案的File對象數組
			
			out.println("<div align=\"center\" style=\"margin:50px;\">");
			
			out.println("<p style=\"margin-top:90px;font-size:100px\">可下載的檔案<p> <br><br>");
			
			out.println("<form action=\"downloadPage.jsp\" method=\"post\" >");
			for(int i=0;i<list.length;i++){
			
				if(list[i].isFile()){
					
					 //value=\'"+list[i].getName()+"
					out.println("<table");
					out.println("<tr style=\"width:300px;\">");
					out.println("<td>");
					out.println("<button   type=\"submit\" name=\"download\" value = \"" + list[i].getName() +"\" >下載</button>");
					out.println("</td>");
					out.println("<td>");
					out.println(list[i].getName() );
					out.println("</td>");
					out.println("</tr>");
					
					out.println("</table>");
					
				}
			
			}
			
			//out.println("</form>");
			
		%>
	
	</body>

</html>