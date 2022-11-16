<%@page import="Model.*"%>
<%@page import="Service.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
		<center> Update Item Details </center>
		<%
		Item item = (Item) request.getAttribute("itemID");
		%>
		 <%
							if(request.getAttribute("errors_success")!=null){
								if(request.getAttribute("errors_success").equals(1)){
									%>	<div class="alert alert-success">
										  Successful!
										</div>	<%
								}else{
									%>	<div class="alert alert-danger">
										  Unsuccessful!
										</div>	<%
								}
							}
						%>
						<script>
						const params = new URLSearchParams(document.location.search);
const s = params.get("itemCode");

console.info(s); //show C
document.write(s);
document.getElementById('id1').value=s; 
</script>
		<form action="updateItem" method="post">
								 <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Item Code</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="id1" class="form-control" name="itemcode" >
	                                    
	                                </div>
	                            </div>
		
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Quantity</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="qty" class="form-control" name="qty" >
	                                </div>
	                            </div>
	                            
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Unit Price</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="price" class="form-control" name="price" >
	                                </div>
	                            </div>
	                            
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Description</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="desc" class="form-control" name="desc" >
	                                </div>
	                            </div>
	                            
	                           


	                            <div class="col-md-6 offset-md-4">
	                                <button type="submit" class="btn btn-primary">
	                                    Update
	                                </button>
	                            </div>
	                    	</form>
</body>
</html>