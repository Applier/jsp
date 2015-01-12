<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>CV</title>
        <meta charset="utf-8">
        <meta name="author" content="Loubna Rizqi">
   		<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" />
   		<link rel="stylesheet" type="text/css" href="<c:url value="/css/cv.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/animate-custom.css"/>" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans'rel='stylesheet' type='text/css'>
        
        <script type="text/javascript">
	       function toggleSibling(sibling){
		      sibling = sibling.nextSibling;
		          while(!/tr/i.test(sibling.nodeName)){
			         sibling = sibling.nextSibling;
		          }
		      sibling.style.display = sibling.style.display == 'table-row' ? 'none' : 'table-row';
	       }
	   </script>

    </head>
    <body>
    
    <form method="post" action="<c:url value="cv" />"> 
    
        <div class="wrapper clearfix">
            <div class="right">

        <div class="corps animated fadeInLeft">
          <div class="title">
            <div class="offre"></div><h1 style="font-color:#8a0808">Créer mon CV</h1>
          </div>
            <p><strong>Choisissez votre template : </strong></p>
            <div class="template1" onClick="this.style.border='3px solid #8a0808'"></div>
            <div class="template2" onClick="this.style.border='3px solid #8a0808'"></div>
            <div class="template3" onClick="this.style.border='3px solid #8a0808'"></div>
            <div class="template4" onClick="this.style.border='3px solid #8a0808'"></div>
            
         <div class="checkboxes">
             <p><strong>Choisissez les informations à inclure: </strong></p> 
             <div class="choix">
             <label class="ckb">
                <input type="checkbox" value="a" />
                <i></i><p>Votre numéro</p>
             </label>
             <br>
             <label class="ckb">
                <input type="checkbox" value="b" />
                <i></i><p>Votre email</p>
             </label>
             <br>
             <label class="ckb">
                <input type="checkbox" value="a" />
                <i></i><p>Votre adresse</p>
             </label>
             <br>
             <label class="ckb">
                <input type="checkbox" value="b" />
                <i></i><p>Votre date de naissance</p>
             </label>
             <br>
             <label class="ckb">
                <input type="checkbox" value="a" />
                <i></i><p>Votre parcours scolaire</p>
             </label>
             <br>
             <label class="ckb">
                <input type="checkbox" value="a" />
                <i></i><p>Vos expériences</p>
             </label>       
             <br>
             <label class="ckb">
                <input type="checkbox" value="b" />
                <i></i><p>Vos compétences</p>
             </label>
             </div>
         </div>
          <a href="../index/content/cv.pdf"><button>Télécharger</button></a>    
        </div>
	  
      </div>
      
      </form>
      
      <div class="left">

        <div class="presentation animated fadeIn">
        <div class="logo"></div>
        <div class="me-img"></div>

          <div class="pres-text">

            <h2>Loubna Rizqi</h2>
            <hr>
            <p>Etudiante en deuxième année à l'ENSEEIHT,  Toulouse, France.</p>
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
