<%@ page contentType="text/html;charset=UTF-8"%>

<%@ page import="java.io.*"%>

<html>

	<head>
		<title>取出目錄中檔案的方法--列出目錄中的檔案</title>
	</head>

	<body>
		<%
		
			String path="C:\\Users\\Modern 14\\Desktop\\HW\\TransferDataService\\TransferData\\src\\main\\webapp\\File\\";
			
			File d=new File(path);//建立目前的目錄中檔案的File對象
			
			File list[]=d.listFiles();//取得代表目錄中所有檔案的File對象數組
			
			out.println("可下載的檔案: <br>");
			
			
			for(int i=0;i<list.length;i++){
			
				if(list[i].isFile()){
					
					
					out.println("    " + list[i].getName() + "<br>");
				
				}
			
			}
		%>
	
	</body>

</html>