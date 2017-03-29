<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Commande</title>
<link href="menu_assets/styles.css" title="Défaut" rel="stylesheet"
	media="screen" />
<style type="text/css">
.trGauche {
	background: #1473b0;
	color: #fff;
	height: 40px;
	box-shadow:1px 1px 250px #0275b0;
}
</style>
</head>
<body>
<!-- Cette page sert a commandé un produit en entrant son ID -->
<!-- La commande se fait par utilisateur, qui sera sauvegarder dans la base -->
<div align="center">
		<jsp:include page="menu.html"></jsp:include>
	<form name="frm" action="updatOrder.jsp">
			<div align="center">
			<img alt="sac" src="menu_assets/images/logoAchat.png">
			<br><br>
			<fieldset>
			<legend>Commandez un produit</legend>
			<br>
				<table class="trGauche">
					<tr>
						<td>ID utilisateur</td>
						<td>:</td>
						<td><input type="text" name="CUSTID"></td>
					</tr>
					<tr>
						<td>Nom d'utilisateur</td>
						<td>:</td>
						<td><input type="text" name="CUSTNAME"></td>
					</tr>
					<tr>
						<td>Téléphone</td>
						<td>:</td>
						<td><input type="text" name="CUSTPHONE"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td>:</td>
						<td><input type="text" name="CUSTMAIL"></td>
					</tr>
					<tr>
						<td>Addresse</td>
						<td>:</td>
						<td><input type="text" name="CUSTADDR"></td>
					</tr>
					<tr>
						<td>ID produit</td>
						<td>:</td>
						<td><input type="text" name="OPID"></td>
					</tr>
				</table>
				</fieldset>
				<br> <input type="submit" name="submit" value=" Valider ">
		
			</div>
		
	</form>
	</div>
	<footer id="pied">
			<jsp:include page="footer.html"></jsp:include>
		</footer>
</body>
</html>
