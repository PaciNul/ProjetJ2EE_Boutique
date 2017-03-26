
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body, html {
	background: url(menu_assets/images/background-logo.png);
}

ul.haut {
	margin: 0 0 0 0;
	padding: 0;
	width: 100%;
	height: 27px;
	list-style: none;
}

ul.haut li {
	float: left;
}

ul.haut li a {
	font-size: 16px;
	border-radius: 0 0 4px 4px;
	background: rgb(30, 87, 153); /* Old browsers */
	background: -moz-linear-gradient(top, rgba(30, 87, 153, 1) 12%,
		rgba(32, 124, 202, 1) 56%, rgba(41, 137, 216, 1) 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(top, rgba(30, 87, 153, 1) 12%,
		rgba(32, 124, 202, 1) 56%, rgba(41, 137, 216, 1) 100%);
	/* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to bottom, rgba(30, 87, 153, 1) 12%,
		rgba(32, 124, 202, 1) 56%, rgba(41, 137, 216, 1) 100%);
	/* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e5799',
		endColorstr='#2989d8', GradientType=0); /* IE6-9 */
	color: #1473b0;
	color: #fff;
	font-weight: bold;
	padding: 10px 50px;
	margin: 0 5px;
	text-decoration: none;
	padding: 10px 50px;
}

ul.haut li a:hover {
	background: -moz-linear-gradient(top, rgba(20, 115, 176, 0.65) 0%,
		rgba(0, 0, 0, 0) 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(top, rgba(20, 115, 176, 0.65) 0%,
		rgba(0, 0, 0, 0) 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to bottom, rgba(20, 115, 176, 0.65) 0%,
		rgba(0, 0, 0, 0) 100%);
	/* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a61473b0',
		endColorstr='#00000000', GradientType=0); /* IE6-9 */
	color: #1473b0;
}

#box {
	width: 400px;
	height: 300px;
	margin: 20px 0 20px 0;
}

#tab_nav {
	margin: 0;
	padding: 0;
	height: 20px;
	line-height: 40px;
}

#tab_nav li {
	float: left;
	list-style: none;
	border: 1px dashed #fff;
	height: 40px;
	width: 126px;
	text-align: center;
	background: #1473b0;
	margin: 10px 5px 10px 0;
	border-radius: 4px 4px;
}

a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

#tab_nav li:hover {
	background: #fff top left no-repeat;
}

a:hover {
	color: #1473b0;
	font-weight: bold;
}

#tab_content {
	width: 395px;
	height: 273px;
	font: bold 12px, Verdana, Arial, Helvetica, sans-serif;
	background: url(menu_assets/images/background-logo.png);
	overflow: hidden;
}

input[type=submit] {
	border: 0px solid #808080;
	border-radius: 5px;
	width: 200px;
}

input[type=submit]:hover, input[type=reset]:hover {
	background-color: #0275b0;
	color: #fff;
}

#t_1, #t_2, #t_3 {
	width: 100%;
	height: 273px;
}

.taille {
	padding: 20px;
	margin: 50px 0 0 100px;
	width: 700px;
	border-radius: 20px;
	box-shadow: 1px 1px 30px #000;
}

fieldset {
	padding: 0 20px 30px 20px;
	margin-bottom: 10px;
	border: 2px solid #1473b0;
	border-radius: 5px;
}

legend {
	color: #1473b0;
	font-weight: bold;
	text-transform: uppercase;
}

.trGauche {
	background: #1473b0;
	color: #fff;
	height: 40px;
	border-radius: 4px;
}

figcaption {
	margin: 0 5px 20px 0;
	padding: 5px;
	background: #016395;
	border: 1px dashed #fff;
	text-align: center;
	border-radius: 4px;
	color: #fff;
}

footer {
	position: relative;
	padding: 5px;
	margin: 100px 0 0 0;
	box-shadow: 0 0 20px #000;
	border-radius: 10px;
	border: solid;
}

#pied {
	padding: 1px 0 px 0;
	color: #008aff;
	font-size: 15px;
	text-align: center;
	font-weight: bold;
}

#pied a {
	color: #9d96fc;
	text-decoration: none;
	outline: none;
	font-weight: Bold;
}

#pied a:hover {
	color: #008aff
}
</style>
<title>Page d'administration des produits</title>
</head>
<!-- Cette page sert a administrer les produits (ajout/modifier/supprimer -->
<body>
	<div align="center">
		<div class='cssmenu'>
			<jsp:include page="menu.html"></jsp:include>
		</div>
		<%
			String msg = request.getParameter("msg");
			if (msg != null) {
		%>
		<label><font color="red"><%=msg%></font></label>
		<%
			}
		%>
		<div class="taille">
			<fieldset>
				<legend>Page d'administration des produits</legend>

				<div id="box">
					<ul id="tab_nav">
						<li><a href="#t_1">Ajouter</a></li>
						<li><a href="#t_2">Modifier </a></li>
						<li><a href="#t_3">Supprimer</a></li>
					</ul>
					<div id="tab_content">
						<div id="t_1">
							<figcaption>
								<marquee direction="left" scrollamount="7">
									<i><b>Ajouter un nouveau produit !</b></i>
								</marquee>
							</figcaption>
							<br>
							<!-- Le produit sera automatiquement ajouté dans la base -->
							<form name="frm" action="saveRecord.jsp">
								<table class="trGauche">
									<tr>
										<td>ID Produit</td>
										<td><input type="text" name="IPID"></td>
									</tr>
									<tr>
										<td>Nom du produit</td>
										<td><input type="text" name="IPname"></td>
									</tr>
									<tr>
										<td>Quantité</td>
										<td><input type="text" name="IPQuant"></td>
									</tr>
									<tr>
										<td>Catégorie</td>
										<td><input type="text" name="IPcat"></td>
									</tr>
									<tr>
										<td>Prix</td>
										<td><input type="text" name="IPprice"></td>
									</tr>
								</table>
								<br> <input type="submit" name="submit" value=" Valider ">
							</form>


						</div>
						<div id="t_2">
							<figcaption>
								<marquee direction="left" scrollamount="7">
									<i><b>Modifier un produit !</b></i>
								</marquee>
							</figcaption>
							<br>
							<!-- Pour modifier le produit -->
							<form name="frm" action="updateRecord.jsp">
								<table class="trGauche">
									<tr>
										<td>ID Produit</td>
										<td><input type="text" name="UPID"></td>
									</tr>
									<tr>
										<td>Nom du produit</td>
										<td><input type="text" name="UPname"></td>
									</tr>
									<tr>
										<td>Quantité</td>
										<td><input type="text" name="UPQuant"></td>
									</tr>
									<tr>
										<td>Catégorie</td>
										<td><input type="text" name="UPcat"></td>
									</tr>
									<tr>
										<td>Prix</td>
										<td><input type="text" name="UPprice"></td>
									</tr>
								</table>
								<br> <input type="submit" name="submit" value=" Valider ">
							</form>

						</div>
						<div id="t_3">
							<figcaption>
								<marquee direction="left" scrollamount="7">
									<i><b>Supprimer un produit de la base de données !</b></i>
								</marquee>
							</figcaption>
							<br>
							<form name="frm" action="deleteRecord.jsp">
								<!-- Le produit sera supprimer en entrant son ID -->
								<table class="trGauche">
									<tr>
										<td>Entrez l'ID du produit à supprimer</td>
										<td><input type="text" name="DPID"></td>
									</tr>
								</table>
								<br> <input type="submit" name="submit" value=" Valider ">
							</form>
						</div>
					</div>
				</div>
			</fieldset>
		</div>
		<footer id="pied">
			<jsp:include page="footer.html"></jsp:include>
		</footer>
	</div>
</body>
</html>

