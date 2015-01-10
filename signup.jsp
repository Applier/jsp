<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>S'inscrire</title>
<link rel='stylesheet' type='text/css'
	href="<c:url value="/css/signin.css"/>" />
	
	<script type="text/javascript">
            function verifform()
            {
                //Verifier qu'il y a bien un mail
                if(document.formulaire.mail.value == "")
                {
                    alert("Veuillez entrer votre email!");
                    document.formulaire.mail.focus();
                    return false;
                }
                
                if(document.formulaire.mail.value.indexOf('@') == -1)
                {
                    alert("Ce n'est pas une adresse électronique valable!");
                    document.formulaire.mail.focus();
                    return false;
                }
            }
            function checkPass()
            {
                //On enregistre les deux mots de passes ...
                var password = document.getElementById('password');
                var confirmation = document.getElementById('confirmation');
                //On enregistre le message à afficher...
                var message = document.getElementById('confirmMessage');
                //On enregistre les couleurs pour les deux cas...
                var goodColor = "#7dcd51";
                var badColor = "#cd5151";
                //Comparer les deux mots de passe
                if(password.value == confirmation.value){
                //Ils sont identiques 
                //Afficher le rouge et notifier l'utilisateur
                confirmation.style.backgroundColor = goodColor;
                message.style.color = goodColor;
                message.innerHTML = "Mots de passe identiques.";
                }else{
                //Les mots de passes sont différents
                //Afficher le vert et notifier l'utilisateur
                confirmation.style.backgroundColor = badColor;
                message.style.color = badColor;
                message.innerHTML = "Mots de passes différents!"
                }
            }
            function checkLength()
            {
                //On enregistre le mot de passe...
                var password = document.getElementById('password');
                //On enregistre le message à afficher...
                var message = document.getElementById('LengthMessage');
                //On enregistre les couleurs pour les deux cas...
                var goodColor = "#7dcd51";
                var badColor = "#cd5151";
                //Compare the values in the password field 
                //and the confirmation field
                if(password.value.length >= 5){
                //Le mot de passe est valide
                password.style.backgroundColor = goodColor;
                message.style.color = goodColor;
                message.innerHTML = "Mot de passe valide."
                }else{
                //Le mot de passe est trop court
                password.style.backgroundColor = badColor;
                message.style.color = badColor;
                message.innerHTML = "Le mot de passe doit avoir au moins 5 caractères!"
                }
            }
        </script>
	
</head>
<body>
		<form name="formulaire" method="post" action="<c:url value="signup" />">
			<div class="logo"></div>
			<h1>Inscription</h1>
			<input type="email" id="mail" name="mail" value="<c:out value="${mail}"/>" placeholder="Email"/><br>
			<input type="password" style="margin-left:5px" name="password" id="password" placeholder="Mot de passe" onkeyup="checkLength();return false;"/>
                	<br>
                	<span id="LengthMessage" class="LengthMessage"></span>
                	<input type="password" style="margin-left:5px" name="confirmation" id="confirmation" onkeyup="checkPass();return false;" placeholder="Confirmer mot de passe"/>
                	<br>
                	<span id="confirmMessage" class="confirmMessage"></span>
                	<button onClick="return verifform()">S'inscrire</button>
		<div class="links">
			<a href="signin">Se connecter</a>
		</div>

		<%-- Vérification de la présence d'un objet utilisateur en session --%>
		<p>Test session</p>
		<c:if test="${!empty sessionScope.id}">
			<%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
			<p class="succes">Vous êtes connecté(e) avec l'adresse :
				${sessionScope.id}</p>
		</c:if>

	</form>
</body>
</html>
