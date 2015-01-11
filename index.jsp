<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Applier.</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/style.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/animate-custom.css"/>" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>

<script type="text/javascript">
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
					<div class="offre"></div>
					<h1 style="font-color: #8a0808">Mes Offres</h1>
				</div>
<table>

	<thead>
		<tr>
			<th>Intitulé<span class="sort-direction"></span></th>
			<th>Entreprise<span class="sort-direction"></span></th>
			<th>Date Limite<span class="sort-direction"></span></th>
		</tr>
	</thead>
	
	<tbody>	
	
		
		<c:forEach items="${sessionUser.offres}" var="o">
		
		<tr class="ligne" onclick="toggleSibling(this)">
		
			<td class="col-4">
				<p class="text-normal">
					<strong>o.intitule</strong>
				</p>
			</td>
		
			<td class="col-4">
				<p class="text-normal">
					<strong>o.entreprise</strong>
				</p>
			</td>
			
			<td class="col-4">
				<p class="text-normal">
					<strong>o.dateLimite</strong>
				</p>
			</td>
		
		</tr>
	
		<tr class='details1'>
		
			<td colspan="7"><h2>Résumé de l'offre</h2>
			<p>o.description
			
			<h2>Tâches</h2>
			
			<table class="taches">
				
				<thead>
					<tr>
						<th>Tâche</th>
						<th>Date limite</th>
					</tr>
				</thead>
				
				<tbody>
				
				<c:forEach items="${o.taches}" var="t">
					
					<tr class="ligne">
						<td>t.intitule</td>
						<td>t.dateLimite</td>
					</tr>
				
				</c:forEach>	
			
				</tbody>

			</table>
			<a href="../ajouterTache.html" onclick="return popitup('ajouterTache.html')" >
			<button>Ajouter une tâche</button></a>
		
	</tr>
	
	</c:forEach>

	
	</tbody>
</table>

<a href="../ajouterOffre.html" onclick="return popitup('ajouterOffre.html')">
<button>Ajouter une offre</button></a>
			
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
					<p>
						21 ans <br> 
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


	
						
			
			
	
	 
