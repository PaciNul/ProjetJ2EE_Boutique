
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%
	Connection conn = null;
	
	//Connexion a la base de donnée
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/boutique", "root", "");

	PreparedStatement psSelectRecord = null;
	ResultSet rsSelectRecord = null;
	String sqlSelectRecord = null;

	//On va chercher tout les produits présents dans la base de données
	sqlSelectRecord = "SELECT * FROM produits";
	psSelectRecord = conn.prepareStatement(sqlSelectRecord);
	rsSelectRecord = psSelectRecord.executeQuery();
%>
<html>
<head>
<title>Accueil - Achat en ligne</title>
<link href="menu_assets/styles.css" title="Défaut" rel="stylesheet"
	media="screen" />

<style>
td {
	text-align: center
}
</style>

</head>
<body>
	<div align="center">
			<jsp:include page="menu.html"></jsp:include>
	</div>
	<div align="center">
	
		<img alt="sac" src="menu_assets/images/logoShop.png" width="500px" height="250px" >
	
	<form class="taille">
		<fieldset>
			<legend>Liste des produits</legend>
			<br>
			<table class="pdt">
				<tr class="trHaut">
					<td>Produit</td>
					<td>ID</td>
					<td>Nom du Produit</td>
					<td>Quantité</td>
					<td>Catégorie</td>
					<td>Prix</td>
					<td>Ajouter au panier</td>
				</tr>
				<%
					int cnt = 1;
					while (rsSelectRecord.next()) {
				%>
				<tr  class="trGauche">
					<td id="id"><%=cnt%></td>
					<td bgcolor="#223645"><%=rsSelectRecord.getInt("PruductID")%></td>
					<td><%=rsSelectRecord.getString("PruductName")%></td>
					<td><%=rsSelectRecord.getInt("ProductQuant")%></td>
					<td><%=rsSelectRecord.getString("ProductCAT")%></td>
					<td><%=rsSelectRecord.getString("ProductPrice")%></td>
					<td id="achat"><a href="buy.jsp">Acheter</a></td>
				<tr>
					<%
						cnt++; /// increment of counter
						} /// End of while loop
					%>
				
			</table>
			</fieldset>
	</form>
	</div>
	<footer id="pied">
		<jsp:include page="footer.html"></jsp:include>
	</footer>
</body>
</html>
<%
	try {
		if (psSelectRecord != null) {
			psSelectRecord.close();
		}
		if (rsSelectRecord != null) {
			rsSelectRecord.close();
		}

		if (conn != null) {
			conn.close();
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
