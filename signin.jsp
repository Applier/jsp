<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Se connecter</title>
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/signin.css"/>" />
	</head>
	<body>
		<form method="post" action="<c:url value="signin" />">
			<div class="logo"></div>
			<h1>Connexion</h1>
			
			<input type="email" id="mail" name="mail" value="<c:out value="${user.mail}"/>" placeholder="Email"/><br>
			<span class="erreur">${form.erreurs['mail']}</span>
			
			<input type="password" id="password" name="password" placeholder="Mot de passe"/><br>
			<span class="erreur">${form.erreurs['password']}</span>
			
			<button>Se connecter</button>
			<div class="links">
					<a href="#">Mot de passe oublié?</a> -
					<a href="signup">S'inscrire</a>
			</div>
			
			<%-- Vérification de la présence d'un objet utilisateur en session --%>
			<span>Test session</span><br>
                <c:if test="${!empty sessionScope.sessionUser}">
                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
                    <span class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUser.mail}</span>
                <%-- Vérification des modifs du profil --%>
				<span>Test profil</span><br>
	                <c:if test="${!empty sessionScope.sessionUser.infos}">
	                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
	                    <span class="succes">Vous vous appelez : ${sessionScope.sessionUser.infos.prenom} ${sessionScope.sessionUser.infos.nom},<br>
	                    vous êtes né(e) le ${sessionScope.sessionUser.infos.dateNaissance},<br>
	                    vous habitez à l'adresse ${sessionScope.sessionUser.infos.adresse},<br>
	                    votre numéro de téléphone est le ${sessionScope.sessionUser.infos.numTel},<br>
	                    votre mail professionnel est ${sessionScope.sessionUser.infos.mailPro}</span>
	                </c:if>
                </c:if>
                
            
	</form>
</body>
</html>
