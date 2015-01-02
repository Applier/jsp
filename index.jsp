<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Applier.</title>
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
            <div class="offre"></div><h1 style="font-color:#8a0808">Mes Offres</h1>
          </div>
           <table>
            <thead>
                <tr>
                    <th>Intitulé<span class="sort-direction"></span></th>
                    <th>Entreprise<span class="sort-direction"></span></th>
                    <th>Date limite<span class="sort-direction"></span></th>
                </tr>
            </thead>

            <tbody>
                <tr class="ligne">
                    <td class="col-4">
                        <p class="text-normal">Stagiaire Développeur Web</p>
                    </td>

                    <td class="col-4">
                        <p class="text-normal"><strong>Sopra</strong></p>     
                    </td>

                    <td class="col-4">
                        <p class="text-normal"><strong>31 Déc. 2014</strong></p>     
                    </td>
                </tr>
                <tr class="ligne">
                    <td class="col-4">
                        <p class="text-normal">Stagiaire Chef de Projet</p>
                    </td>

                    <td class="col-4">
                        <p class="text-normal"><strong>Accenture</strong></p>     
                    </td>

                    <td class="col-4">
                        <p class="text-normal"><strong>02 Jan. 2014</strong></p>     
                    </td>
                </tr>
                <tr class="ligne">
                    <td class="col-4">
                        <p class="text-normal">Stagiaire Développeur JEE</p>
                    </td>

                    <td class="col-4">
                        <p class="text-normal"><strong>Unitag</strong></p>     
                    </td>

                    <td class="col-4">
                        <p class="text-normal"><strong>11 Jan. 2014</strong></p>     
                    </td>
                </tr>
            </tbody>
           </table>
        </div>

      </div>
      <div class="left">

        <div class="presentation animated fadeIn">
        <div class="logo"></div>
        <div class="me-img"></div>

          <div class="pres-text">

            <h1>Loubna Rizqi</h1>
            <p>Etudiante en deuxième année à l'ENSEEIHT,  Toulouse, France.</p>
            <p>21 ans <br>
            <a style="color:#8a0808" href="/applier/signout">Se déconnecter</a></p>

          </div>
          <div class="button-container">
                <ul class="boutons">
                        <a href="/applier/index"><li> Voir mes offres </li></a><br>
                        <a href="/applier/profil"><li> Modifier mon profil </li></a><br>
                        <a href=""><li> Voir mes correspondances </li></a><br>
                        <a href=""><li> Créer mon CV </li></a>
                </ul>
          </div>

        </div>

      </div>

    </div>

</body>
</html>
