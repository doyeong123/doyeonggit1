<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.product" %>
<%@ page import="dao.productrepository" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");

	String filename="";
	String save = request.getServletContext().getRealPath("./resources/images");
	String realfolder = save;
	int maxsize = 5*1024*1024;
	String enctype = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realfolder,maxsize, enctype, new DefaultFileRenamePolicy());
	

	String productid =multi.getParameter("productid");
	String name = multi.getParameter("name");
	String unitprice = multi.getParameter("unitprice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsinstock = multi.getParameter("untisinstock");
	String condition = multi.getParameter("condition");
	
	Integer price;
	
	if(unitprice.isEmpty())
		price=0;
	
	else
		price = Integer.valueOf(unitprice);
	
	long stock;
	
	if(unitsinstock.isEmpty())
		stock=0;
	else
		stock=Long.valueOf(unitsinstock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();

	String filename1 = multi.getFilesystemName(fname);
	
	
	/*String fname=(String) multi.getParameter("productimage");*/
	//String filename= multi.getFilesystemName(fname);

	

	
	productrepository dao =productrepository.getInstance();
	
	product newproduct = new product();
	newproduct.setProductId(productid);
	newproduct.setPname(name);
	newproduct.setUnitprice(price);
	newproduct.setDescription(description);
	newproduct.setManufacturer(manufacturer);
	newproduct.setCategory(category);
	newproduct.setUnitsInStock(stock);
	newproduct.setCondition(condition);
	newproduct.setFilename(filename1);
	
	dao.addproduct(newproduct);
	
	response.sendRedirect("products.jsp");
%>
</body>
</html>