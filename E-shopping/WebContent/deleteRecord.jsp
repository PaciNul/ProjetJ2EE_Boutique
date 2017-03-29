<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%
	Connection conn = null;

	//Connection a la base de donnée
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/boutique", "root", "");

	PreparedStatement psDeleteRecord = null;
	String sqlDeleteRecord = null;

	int ProID = Integer.parseInt(request.getParameter("DPID"));

	try {
		//Suppression d'un produit de la base de données, en mettant son ID
		sqlDeleteRecord = "Delete from produits where PruductID=?";
		psDeleteRecord = conn.prepareStatement(sqlDeleteRecord);
		psDeleteRecord.setInt(1, ProID);

		psDeleteRecord.executeUpdate();
	} catch (Exception e) {
		response.sendRedirect("admin.jsp");
	}

	try {
		if (psDeleteRecord != null) {
			psDeleteRecord.close();
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
<meta http-equiv="REFRESH" content="4;url=/E-shopping/admin.jsp">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Produits supprimés</title>
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
					<legend>Suppression d'un produit</legend>
					<br>
					<p id="parag">
						Le produit a bien été supprimé<br> Vous allez être redirigé
						vers la page précédente dans 4 secondes...
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