<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Profil</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/animate-custom.css"/>" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="wrapper clearfix">
            <div class="right">

        <div class="corps animated fadeInLeft">
          <div class="title">
            <div class="profil"></div><h1 style="font-color:#8a0808">Mon profil</h1>
          </div>
        <form method="post" action="<c:url value="/profil" />">
            <label>Votre nom</label>
            <input type="text" id="nom" name="nom" placeholder="Nom"/>
            <label>Votre prénom</label>
            <input type="text" id="prenom" name="prenom" placeholder="Prénom"/>
            <br/>
            <label>Votre email</label>
            <input type="email" id="mailPro" name="mailPro" placeholder="Email"/>
            <label>Votre numéro</label>
            <input type="tel" id="numTel" name="numTel" placeholder="Numéro de téléphone"/>  
            <br/>
            <label>Votre date de naissance</label>
            <input type="date" id="dateNaissance" name="dateNaissance" placeholder="JJ/MM/AAAA"/> 
            <br/>
            <div class="long">
            <label>Votre adresse</label>
            <input type="long" ide="adresse" name="adresse" placeholder="Numéro, rue, code postal..."/></div>
            <br/>
            <label>Votre parcours scolaire</label>
            <br/>
            <label>De</label>
            <input type="date" placeholder="Date début"/>
            <label>à</label>
            <input type="date" placeholder="Date fin"/>
            <div class="long">
            <input type="text" placeholder="Nom de l'établissement"/>
            <input type="text" placeholder="Résumé"/></div>
            <br/>
            <label>Vos expériences</label>
            <br/>
            <label>De</label>
            <input type="date" placeholder="Date début"/>
            <label>à</label>
            <input type="date" placeholder="Date fin"/>
            <div class="long">
            <input type="text" placeholder="Nom de l'établissement"/>
            <input type="text" placeholder="Résumé"/></div>
            <br/>
            <label>Vos compétences</label>
            <br/>
            <div class="long">
            <select aria-label="Domaine">
                <option selected>Domaine</option>
                <option value="1">Langues</option>
                <option value="2">Langages</option>
                <option value="3">Logiciels</option>
                <option value="4">Environnements</option>
                <option value="5">Sports</option>
                <option value="6">Autres</option>
            </select>
            <input type="text" placeholder="Détails"/></div>
            
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
            <p>Etudiante en deuxième année à l'ENSEEIHT,  Toulouse, France.</p>
            <p>21 ans <br>
            <a style="color:#8a0808" href="/applier/signout">Se déconnecter</a></p>

          </div>
          <div class="button-container">
                <ul class="boutons">
                        <a href=""><li> Voir mes offres </li></a><br>
                        <a href="<c:url value="/profil"/>"><li> Modifier mon profil </li></a><br>
                        <a href=""><li> Voir mes correspondances </li></a><br>
                        <a href=""><li> Créer mon CV </li></a>
                </ul>
          </div>

        </div>

      </div>

    </div>

</body>
</html>
