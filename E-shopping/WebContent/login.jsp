
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Page de connexion</title>
<link href="menu_assets/styles.css" title="Défaut" rel="stylesheet"
	media="screen" />
<style type="text/css">
.trGauche {
	background: #1473b0;
	color: #fff;
	height: 40px;
	box-shadow: 1px 1px 250px #0275b0;
}
</style>
</head>

<script>
	//Fonction qui permet de voir si les champs user et mdp sont remplis, s'ils sont vides ça renvoie un msg d'erreur
	function validate() {
		var user = document.form.user.value;
		var mdp = document.form.pass.value;
		if (user == "") {
			alert("Entrer le nom d'utilisateur!");
			return false;
		}
		if (mdp == "") {
			alert("Entrer le mot de passe!");
			return false;
		}
		return true;
	}
</script>

<div align="center">
	<jsp:include page="menu.html"></jsp:include>
	<form name="form" method="post" action="check.jsp"
		onsubmit="javascript:return validate();">

		<div align="center">
			<fieldset>
				<legend>Connexion administrateur</legend>
				<br>
				<table class="trGauche">
					<tr>
						<td>Utilisateur</td>
						<td>:</td>
						<td><input type="text" name="user" /></td>
					</tr>
					<tr>
						<td>Mot de passe</td>
						<td>:</td>
						<td><input type="password" name="pass" /></td>
					</tr>
				</table>
			</fieldset>
			<p>
				<input type="submit" value="Envoyer" />
			</p>
		</div>
	</form>
</div>
<footer id="pied">
	<jsp:include page="footer.html"></jsp:include>
</footer>
</html>