<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css">
<title>Catalogue de produits</title>
</head>
<body>

<div class="container-fluid">
<h1 class="text-center">Catalogue</h1>
<div class="row">
	<div id="formProduits">
	<h2>Ajouter un produit :</h2>
		<f:form class="form-inline" modelAttribute="produit" method="post" action="saveProduit">
			<div class="form-group">
      			<label for="ref">Référence :</label>
      			<f:input type="text" class="form-control" path="reference" placeholder="XXXXXXXX" />
      			<f:errors path="reference" cssClass="error"/>
   			 </div>
			<div class="form-group">
      			<label for="ref">Désignation :</label>
      			<f:input type="text" class="form-control" path="designation" placeholder="XXXXXXXX" />
      			<f:errors path="designation" cssClass="error"/>
   			 </div>
			<div class="form-group">
      			<label for="ref">Prix :</label>
      			<f:input type="number" class="form-control" path="prix" placeholder="100" />
      			<f:errors path="prix" cssClass="error"/>
   			 </div>
			<div class="form-group">
      			<label for="ref">Quantité :</label>
      			<f:input type="number" class="form-control" path="quantite" placeholder="10" />
      			<f:errors path="quantite" cssClass="error"/>
   			 </div>
   			 
				<button class="btn btn-primary" type="submit">Sauvegarder</button> 
				<button type="reset" class="btn btn-info">Reset</button>
				
		</f:form>
	</div>
</div>
<br /><br />
<div class="row" id="listProduits">
	<h2>Liste des produits :</h2>
	<table class="table table-striped">
	<thead class="text-center">
		<tr>
			<th>REF</th>
			<th>DESIGNATION</th>
			<th>PRIX</th>
			<th>QUANTITE</th>
		</tr>
	</thead>
	<c:forEach items="${produits}" var="p">
		<tr>
			<td>${p.reference}</td>
			<td>${p.designation}</td>
			<td>${p.prix}</td>
			<td>${p.quantite}</td>
			<td><a class="btn btn-danger" href="deleteProduit?ref=${p.reference}">Supprimer</a>
			<a class="btn btn-warning" href="editProduit?ref=${p.reference}">Edit</a></td>
		</tr>
	</c:forEach>
	</table>
</div>
</div>
</body>
</html>