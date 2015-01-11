<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Se connecter</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/css/signin.css"/>" />
</head>
<body>
	<form method="post" action="<c:url value="signin" />">
		<div class="logo"></div>
		<h1>Connexion</h1> 

		<input type="text" id="mail" name="mail" value="<c:out value="${mail}"/>" placeholder="Email" /><br> 
		<input type="password" id="password" name="password" placeholder="Mot de passe" /><br>

		<%-- Vérification du succès de la connexion --%>
		
		<c:if test="${empty sessionScope.id}">
			<span><br>${erreur}</span>
		</c:if><br>

		<button>Se connecter</button>
		<div class="links">
			<a href="#">Mot de passe oublié?</a> - <a href="signup">S'inscrire</a>
		</div>

	</form>
</body>
</html>
