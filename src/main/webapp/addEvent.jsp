<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body background="https://www.google.com/url?sa=i&url=https%3A%2F%2Fadvancedpropertyauction.co.uk%2Fbuying%2Fbidding-process%2F&psig=AOvVaw3N6N5J9Ein-lfy_COXNsp1&ust=1668158239123000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJjojeyjo_sCFQAAAAAdAAAAABAE">
	<center><h3>Add a new Item</h3></center>
	<br>
	<br>
	<div class="container">
	<form action="insertItem" method="post">
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Item Code</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="name" class="form-control" name="itemID" required>
	                                </div>
	                            </div>
	                            
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Quantity</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="phone" class="form-control" name="qty" required>
	                                </div>
	                            </div>
	                            
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Unit Price</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="email" class="form-control" name="unitPrice" required>
	                                </div>
	                            </div>
	                            
	                            <div class="form-group row">
	                                <label class="col-md-4 col-form-label text-md-right">Description</label>
	                                <div class="col-md-6">
	                                    <input type="text" id="name" class="form-control" name="description" required>
	                                </div>
	                            </div>

	                  

	                            <div class="col-md-6 offset-md-4">
	                                <button type="submit" class="btn btn-primary">
	                                    Add
	                                </button>
	                            </div>
	                    	</form>
	               </div>
</body>
</html>