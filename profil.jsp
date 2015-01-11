<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Profil</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/animate-custom.css"/>" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'rel='stylesheet' type='text/css'>
	
	<script type="text/javascript"> 
    	function add_fields1() {
        	var objTo = document.getElementById('infos1')
            var divtest = document.createElement("div");
            divtest.innerHTML = '<label>De</label> <input type="date" placeholder="Date début"/> <label>à</label> <input type="date" placeholder="Date fin"/> <div class="long"> <input type="text" placeholder="Nom de l\'établissement"/> <input type="text" placeholder="Résumé"/></div>';
            objTo.appendChild(divtest)
        }
            
        function add_fields2() {
            var objTo = document.getElementById('infos2')
            var divtest = document.createElement("div");
            divtest.innerHTML = '<label>De</label> <input type="date" placeholder="Date début"/> <label>à</label> <input type="date" placeholder="Date fin"/> <div class="long"> <input type="text" placeholder="Nom de l\'établissement"/> <input type="text" placeholder="Résumé"/></div>';
            objTo.appendChild(divtest)
        }  

    	function toggleSibling(sibling){
        	sibling = sibling.nextSibling;
		    while(!/tr/i.test(sibling.nodeName)){
				sibling = sibling.nextSibling;
		    }
		    sibling.style.display = sibling.style.display == 'table-row' ? 'none' : 'table-row';
	    }
            
            <!--
                function popitup(url) {
	               newwindow=window.open(url,'name','height=300,width=500');
	               if (window.focus) {newwindow.focus()}
	               return false;
                }
            // -->
	</script>
	
</head>
<body>
	<div class="wrapper clearfix">
		<div class="right">

			<div class="corps animated fadeInLeft">
				<div class="title">
					<div class="profil"></div>
					<h1 style="font-color: #8a0808">Mon profil</h1>
				</div>
				<form method="post" action="<c:url value="/profil" />">
					<label>Votre nom</label> 
					<input type="text" id="nom" name="nom" value="${sessionScope.sessionUser.infos.nom}" placeholder="Nom" />
					<label>Votre prénom</label> 
					<input type="text" id="prenom" name="prenom" value="${sessionScope.sessionUser.infos.prenom}" placeholder="Prénom" /> <br /> 
					<label>Votre email</label> 
					<input type="email" id="mailPro" name="mailPro" value="${sessionScope.sessionUser.infos.mailPro}" placeholder="Email" /> 
					<label>Votre numéro</label> 
					<input type="tel" id="numTel" name="numTel" value="${sessionScope.sessionUser.infos.numTel}" placeholder="Numéro" /> <br /> 
					<label>Votre date de naissance</label> 
					<input type="date" id="dateNaissance" name="dateNaissance" value="${sessionScope.sessionUser.infos.dateNaissance}" placeholder="JJ/MM/AAAA" /> <br />
					<div class="long">
						<label>Votre adresse</label> 
						<input type="long" id="adresse" name="adresse" value="${sessionScope.sessionUser.infos.adresse}" placeholder="Numéro, rue, code postal..." />
					</div><br />
					 
					<label>Votre parcours scolaire</label> <br />
					<div id="infos1"> 
					<label>De</label>
					<input type="date" placeholder="Date début" /> 
					<label>à</label> 
					<input type="date" placeholder="Date fin" />
					<div class="long">
					<input type="text" placeholder="Nom de l'établissement" /> 
					<input type="long" placeholder="Résumé" /></div></div>
					<input type="button" id="more_fields1" onclick="add_fields1();" value="Ajouter" style="color:#fff;background-color:#8a0808;margin-bottom:10px;"/>
					<br /> 
					
					<label>Vos expériences</label> <br /> 
					<div id="infos2">
					<label>De</label> 
					<input type="date" placeholder="Date début" /> 
					<label>à</label> 
					<input type="date" placeholder="Date fin" />
					<div class="long">
					<input type="text" placeholder="Nom de l'établissement" /> 
					<input type="long" placeholder="Résumé" /></div></div>
					<input type="button" id="more_fields2" onclick="add_fields2();" value="Ajouter" style="color:#fff;background-color:#8a0808;margin-bottom:10px;"/>
					<br /> 
					
					<label>Vos compétences</label> <br />
					<div class="long">
						<select aria-label="Domaine">
							<option selected>Domaine</option>
							<option value="1">Langues</option>
							<option value="2">Langages</option>
							<option value="3">Logiciels</option>
							<option value="4">Environnements</option>
							<option value="5">Sports</option>
							<option value="6">Autres</option>
						</select> <input type="text" placeholder="Détails" />
					</div>

					<button>Mettre à jour le profil</button>

				</form>
			</div>



		</div>
		<div class="left">

			<div class="presentation animated fadeIn">
				<div class="logo"></div>
				<div class="me-img"></div>

				<div class="pres-text">

					<h2>Loubna Rizqi</h2>
					<hr>
					<p>Etudiante en deuxième année à l'ENSEEIHT, Toulouse, France.</p>
					<p>21 ans <br>
					<a style="color:#8a0808" href="../modifier-profil.html" onclick="return popitup('modifier-profil.html')">Modifier profil</a> | 
		            <a style="color:#8a0808" href="/applier/signout">Se déconnecter</a></p>
		
		        </div>
		        <div class="button-container">
                <ul class="boutons">
                        <a href="/applier/index"><li> Voir mes offres </li></a><br>
                        <a href="/applier/profil"><li> Modifier mon profil </li></a><br>
                        <a href="/applier/correspondances"><li> Voir mes correspondances </li></a><br>
                        <a href="/applier/cv"><li> Créer mon CV </li></a>
					</ul>
				</div>

			</div>

		</div>

	</div>

</body>
</html>
