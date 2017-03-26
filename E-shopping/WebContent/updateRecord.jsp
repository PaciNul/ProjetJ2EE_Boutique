
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%
	Connection conn = null;

	//Connexion a la base de donnée
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/boutique", "root", "");

	PreparedStatement psUpdateRecord = null;
	String sqlUpdateRecord = null;

	int ProID = Integer.parseInt(request.getParameter("UPID"));
	String ProName = request.getParameter("UPname");
	int ProQuant = Integer.parseInt(request.getParameter("UPQuant"));
	String ProCat = request.getParameter("UPcat");
	String ProPrice = request.getParameter("UPprice");

	try {
		//Mise a jour d'un produit présent dans la base de données
		sqlUpdateRecord = "update produits set PruductName=?, ProductQuant=?, ProductCAT=?, ProductPrice=?  where PruductID=?";
		psUpdateRecord = conn.prepareStatement(sqlUpdateRecord);
		psUpdateRecord.setInt(1, ProID);
		psUpdateRecord.setString(2, ProName);
		psUpdateRecord.setInt(3, ProQuant);
		psUpdateRecord.setString(4, ProCat);
		psUpdateRecord.setString(5, ProPrice);

		psUpdateRecord.executeUpdate();
	} catch (Exception e) {
		response.sendRedirect("admin.jsp");
	}

	try {
		if (psUpdateRecord != null) {
			psUpdateRecord.close();
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
<title>Modifier un produit</title>
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
					<legend>Modification d'un produit</legend>
					<br>
					<p id="parag">
						Les données ont bien été modifiées<br> Vous allez être
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
