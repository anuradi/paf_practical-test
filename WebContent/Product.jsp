<%@ page import= "com.Product" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product selling</title>
<link rel="stylesheet" href="View/bootstrap.min.css">
<script src="Component/jquery-3.2.1.min.js"></script>
<script src="Component/products.js"></script>
</head>
<body>

<div class="container">
<div class="row">
   <div class="col-8">
   
      <h1 class="m-3"> Product Selling Management </h1>
      
      <form id="formProduct" name="formProduct">
 Product code:
<input id="productCode" name="productCode" type="text"
 class="form-control form-control-sm">
 
<br> Product name:
<input id="productName" name="productName" type="text"
 class="form-control form-control-sm">
 
<br> Product price:
<input id="productPrice" name="productPrice" type="text"
 class="form-control form-control-sm">
 
<br> Product description:
<input id="productDesc" name="productDesc" type="text"
 class="form-control form-control-sm">
<br>
<input id="btnSave" name="btnSave" type="button" value="Save"
 class="btn btn-primary">
<input type="hidden" id="hidProductIDSave" name="hidProductIDSave" value="">
</form>
<br>

<div id="alertSuccess" class = "alert alert-success"></div>
<div id ="alertError" class =" alert alert-danger"></div>

<br>
<div id="divProductGrid"> 
<%
Product productObj = new Product();
out.print(productObj.readproducts());
%>
</div>
</div>
   
   
   </div>


</div>
</div>


</body>
</html>