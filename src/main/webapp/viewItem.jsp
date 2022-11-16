<%@page import="Model.*"%>
<%@page import="Service.*"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</head>
<body background="https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dblue%2Band%2Bwhite%2Bbackground&psig=AOvVaw2zpw6ypSrT4FO4sTDsOqol&ust=1668154886479000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJjTva-Xo_sCFQAAAAAdAAAAABAT">
		<center><h2>Details of Items</h2></center>
		<br>
		<br>
	 <div class="container">
	                    	<table class="table table-striped">
			                    <thead>
					                <tr>
					                    <th class="tableTh">Item Code</th>
					                    <th class="tableTh">Quantity</th>
					                    <th class="tableTh">Unit Price</th>
					                    <th class="tableTh">Description</th>
					                   
					                </tr>
				                </thead>
			                <tbody>
	                	<%
	                	InsertItem bs = new InsertItem();
							ArrayList<Item> arrayList = bs.getItems();
							
							for (Item b : arrayList) {
								
								
						%><tr>
							<td class="tableTh"><%=b.getItemID() %></td>
							<td class="tableTh"><%=b.getQty() %></td>
							<td class="tableTh"><%=b.getUnitPrice() %></td>
							<td class="tableTh"><%=b.getDescription() %></td>
							
							<td class="tableTh"><a class="btn btn-info" href="getItems?itemCode=<%=b.getItemID() %>">Edit</a></td>
							<td class="tableTh"><Button class="btn btn-warning" id="<%=b.getItemID() %>" onclick="clickDelete(this);">Delete</Button></td>
						  </tr>
						<%
							}
						%>
						</tbody>
	            </table>
	          </div>
	           <div style="display: none;" >
    			<form action="removeItem" method="post" id="settingsForm">
				<input name="deleteId" id="removeId" required>
				</form>
    </div>
	          

	
	
</body>
</html>
<script>
	
	function clickDelete(id){
		
		var r = confirm("If you want remove data ?");
		
		if (r == true) {
		  
			var did = id.id;
		
			document.getElementById("removeId").value = did;
			
			document.getElementById("settingsForm").submit();
			
		}
		
	}

</script>