<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<%@ page import="java.io.*"%>

<html>

	<head>
		<title>Download List</title>
	</head>

	<body>
		<%
		
			String path="C:\\Users\\Modern 14\\Desktop\\HW\\TransferDataService\\TransferData\\src\\main\\webapp\\File\\";
			
			File d=new File(path);//建立目前的目錄中檔案的File對象
			
			File list[]=d.listFiles();//取得代表目錄中所有檔案的File對象數組
			
			out.println("可下載的檔案: <br><br>");
			
			out.println("<form action=\"downloadPage.jsp\" method=\"post\" >");
			for(int i=0;i<list.length;i++){
			
				if(list[i].isFile()){
					
					 //value=\'"+list[i].getName()+"
					out.println("<button   type=\"submit\" name=\"download\" value = \"" + list[i].getName() +"\" >下載</button>");
					out.println("      " + list[i].getName() );
					out.println("<br>");
				}
			
			}
			
			//out.println("</form>");
			
		%>
	
	</body>

</html>