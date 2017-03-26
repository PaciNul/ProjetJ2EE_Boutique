<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Copyright</title>
<link href="menu_assets/styles.css" title="Défaut" rel="stylesheet"
	media="screen" />
<style type="text/css">
td {
	text-align: center
}
.disc {
	color : #1473b0;
	list-style: disc;
	text-align: left;
}
.square {
	color : #fff;
	list-style: square;
	text-align: left;
}
#parag
{
	font-weight: bold;
	color: #fff;
	text-align: justify;
}
p.ttr
{
	text-decoration: underline;
}
hr
{
	height: 3px;
	background: white;
	border-radius : 10px;
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
				<legend>Projet universitaire</legend>
				<br>
				<p id="parag">
					Cette application a été réalisée dans le cadre d'un projet universitaire imposé par Mr Charroux que nous tenons a remercier pour le savoir apporté durant son module.<br>
					Le projet consiste en un sujet libre avec comme technologies imposées (SERVLET et JSP), en option le sujet doit sauvegarder des données dans une base de données.
					
					<ul class="disc"><p class="ttr">Remise du projet :<p>
						<li>Date de remise : le 31 mars</li>
						<li>Envoyer par mail à Mr Charroux</li>
						<li>Fichier PDF qui décrit le projet :</li>
						<ul class="square">
							<li>Les fonctionnalités du projet</li>
							<li>Des copies d’écran du fonctionnement</li>
							<li>Manuel de démarrage</li>
							<li>Conclusion sur ce qui a été fait et ce qui reste à faire ou à améliorer</li>
						</ul>
						<li>Les codes sources du projet</li>
					</ul>
					<hr>
					<ul class="disc"><p class="ttr">Criteres d'évaluation du projet (par ordre décroissant d'importance) :</p>
						
						<li>Utilisation du plus de fonctionnement possible des technologies</li>	
						<li>Codage</li>
						<li>Fonctionnalités</li>
						<li>Complexité algorithmique</li>
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