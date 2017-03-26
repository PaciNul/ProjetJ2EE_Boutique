<%-- 
    Document   : updatOrder
    Created on : May 15, 2012, 6:59:54 PM
    Author     : Diaa
--%>

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

	int CustID = Integer.parseInt(request.getParameter("CUSTID"));
	String CNAME = request.getParameter("CUSTNAME");
	String PHONE = request.getParameter("CUSTPHONE");
	String MAIL = request.getParameter("CUSTMAIL");
	String ADDR = request.getParameter("CUSTADDR");
	int OrPID = Integer.parseInt(request.getParameter("OPID"));

	try {
		//Insertion des utilisateurs qui ont commandés un produit dans la base de données
		sqlInsertRecord = "insert into utilisateur (CustID, CustName, CustEmail, CustAdress, ProductID, CustPhone) values(?,?,?,?,?,?)";
		psInsertRecord = conn.prepareStatement(sqlInsertRecord);
		psInsertRecord.setInt(1, CustID);
		psInsertRecord.setString(2, CNAME);
		psInsertRecord.setString(3, MAIL);
		psInsertRecord.setString(4, ADDR);
		psInsertRecord.setInt(5, OrPID);
		psInsertRecord.setString(6, PHONE);

		psInsertRecord.executeUpdate();
	} catch (Exception e) {
		response.sendRedirect("buy.jsp");
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
<meta http-equiv="REFRESH" content="5;url=/E-shopping/index.jsp">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Produit commandé</title>
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
					<legend>Commande d'un produit</legend>
					<br>
					<p id="parag">
						Commande effectuée, merci de votre visite ! <br> Vous allez
						être redirigé vers la liste des produits dans 5 secondes...
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