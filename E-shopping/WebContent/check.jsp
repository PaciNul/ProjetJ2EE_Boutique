
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage=""%>

<%
	Connection con ;
	Statement ps;
	//String sqlSelect = "";
	ResultSet rs =  null;
	
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");

	//Connection a la base de donnée
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/boutique", "root", "");

	try
	{
	//sqlSelect();
	//On va chercher tout les utilisateurs présents dans la base de données
	ps = con.createStatement();
	rs=ps.executeQuery("select AdminName,AdminPass from admins where AdminName='"+user+"' and AdminPass='"+pass+"'");
			
// 	ps.setString(1, user);
// 	ps.setString(2, pass);
// 	ps.execute();
	
	
 	
// 	catch(Exception e)
// 	{
		
// 	}
	}
 	catch(Exception e)
 	{
		int count = 0;
		//Parcourt la base pour chercher les utilisateurs
		while(rs.next())
		{
			count++;
		}
		//Si utilisateur trouvé, envoie un message de bienvenue et redirection vers la page d'administration
		if(count>0)
		{
			out.println("Bienvenue " + user);
	 		response.sendRedirect("admin.jsp");
		}
		//sinon message d'erreur et renvoi vers la page de connexion
		else
		{
			out.println("identifiant ou mot de passe incorrectes");
			response.sendRedirect("login.jsp");
		}
 	}
	try
	{
	}
	//}
	catch(Exception t)
	{
		t.printStackTrace();
	}
%>


<html>
<head>
<meta http-equiv="REFRESH" content="5;url=/E-shopping/admin.jsp">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connexion</title>
<link href="menu_assets/styles.css" title="Défaut" rel="stylesheet"
	media="screen" />
<style type="text/css">
#parag
{
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
				<legend>Vous êtes connecté</legend>
				<br>
				<p id="parag">
					Vous allez être redirigé vers la page d'administration des produits dans 5 secondes...
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