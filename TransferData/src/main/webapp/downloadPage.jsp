<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<%@ page import="java.io.*,java.net.*"%>

<html>

	<head>
		<title>Download</title>
	</head>

	<body>
		<%
		
			//String path="C:\\Users\\Modern 14\\Desktop\\HW\\TransferDataService\\TransferData\\src\\main\\webapp\\File\\";
			String path = "C:\\Users\\asus\\Desktop\\HW\\";
			
			
			String filename = request.getParameter("download");
			//String filename = "pwd.txt";
			System.out.println("file => " +filename);
			
			
			
			filename = new String(filename.getBytes("ISO-8859-1"),"Big5");

			File file = new File(path+filename);
			if(file.exists()){//檢驗檔案是否存在
			try{
			response.setHeader("Content-Disposition","attachment; filename=\"" + URLEncoder.encode(filename, "UTF-8") + "\"");
			OutputStream output = response.getOutputStream();
			InputStream in = new FileInputStream(file);
			byte[] b = new byte[2048];
			int len;

			while((len = in.read(b))>0){
			output.write(b,0,len);
			}
			in.close();
			output.flush();
			output.close(); //關閉串流
			out.clear();
			out = pageContext.pushBody();
			}catch(Exception ex){
			out.println("Exception : "+ex.toString());
			out.println("<br/>");
			}
			}else{
			out.println(filename+" : 此檔案不存在");
			out.println("<br/>");
			}
		%>
	
	</body>

</html>