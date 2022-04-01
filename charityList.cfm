<cfquery name="list" datasource="charityapp">
	SELECT *
	FROM charity;
</cfquery>

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Charity Match</title>
    <meta name="Charity Match" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/cmIcon.png"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    	<link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/responsive.css"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<link href="../../assets/css/search-filter.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <!-- Fontfaces CSS-->
    <link href="accessGranted/nova/individual/css/font-face.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="accessGranted/nova/individual/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="accessGranted/nova/individual/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="accessGranted/nova/individual/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="accessGranted/nova/individual/css/theme.css" rel="stylesheet" media="all">


</head>


<body class="hero-background" style="overflow: scroll;">
<div class="container" style="width: 75%; margin: auto;">

<cfloop query="list">
<cfoutput>
                                <div class="card" style="width: 50vw; margin-left: 10vw; margin-bottom: 20px; margin-top: 20px;">
                                    <div class="card-header">
                                        <strong class="card-title">#list.charityName#</strong>
                                    </div>
                                    <div class="card-body" style="display: flex;">
					                   <img src="accessGranted/nova/#list.imagePath#" width="150vw">
                                        <div class="card-text" style="display: inline; margin: auto; font-size: 1.5vw;">
						<strong><p class="card-text">#list.charityName#</p></strong>
						<p class="card-text">#list.charityAddress#<br> #list.charityCity#, #list.charityState# #list.charityZip#</p>
						<p class="card-text">#list.phone_number#</p>
						<a href="#list.website#"><p class="card-text">#list.website#</p></a>
					</div>
                                    </div>
                                </div>
                           
		</cfoutput>
</cfloop>

</div>
</body>