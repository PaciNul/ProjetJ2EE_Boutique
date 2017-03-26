
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%
	Connection conn = null;

	//Connexion a la base de donnée
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/boutique", "root", "");

	PreparedStatement psInsertRecord = null;
	String sqlInsertRecord = null;

	//Récupere les champs (input name) de la page admin.jsp
	int ProID = Integer.parseInt(request.getParameter("IPID"));
	String ProName = request.getParameter("IPname");
	int ProQuant = Integer.parseInt(request.getParameter("IPQuant"));
	String ProCat = request.getParameter("IPcat");
	String ProPrice = request.getParameter("IPprice");

	try {//Insertion des produits dans la base de données
		sqlInsertRecord = "insert into produits (PruductID, PruductName, ProductQuant, ProductCAT,  ProductPrice) values(?,?,?,?,?)";
		psInsertRecord = conn.prepareStatement(sqlInsertRecord);
		psInsertRecord.setInt(1, ProID);
		psInsertRecord.setString(2, ProName);
		psInsertRecord.setInt(3, ProQuant);
		psInsertRecord.setString(4, ProCat);
		psInsertRecord.setString(5, ProPrice);

		psInsertRecord.executeUpdate();
	} catch (Exception e) {
		response.sendRedirect("admin.jsp");
	}

	try {
		if (psInsertRecord != null) {
			psInsertRecord.close();
		}

		if (conn != null) {
			conn.close();
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<html>
<head>
<meta http-equiv="REFRESH" content="5;url=/E-shopping/admin.jsp">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajouter un produit</title>
<link href="menu_assets/styles.css" title="Défaut" rel="stylesheet"
	media="screen" />
<style type="text/css">
#parag {
	font-weight: bold;
	color: #fff;
	text-align: justify;
}
</style>
</head>
<body>
	<div align="center">
		<jsp:include page="menu.html"></jsp:include>
		<form name="form" method="post" action="check.jsp"
			onsubmit="javascript:return validate();">

			<div align="center">
				<fieldset>
					<legend>Ajout d'un produit</legend>
					<br>
					<p id="parag">
						Les données ont bien été sauvegardées<br> Vous allez être
						redirigé vers la page précédente dans 5 secondes...
					</p>

				</fieldset>
			</div>
		</form>
	</div>

	<footer id="pied">
		<jsp:include page="footer.html"></jsp:include>
	</footer>
</body>
</html>
