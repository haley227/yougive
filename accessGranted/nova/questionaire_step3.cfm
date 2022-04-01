<cftry>
<html>
<cfparam name="url.step" default="1">
<cfparam name = "Session.UserName" default="">
<cfparam name = "Session.Password" default="">
<cfparam name = "Session.userID" default="">

<cfparam name = "url.ID" default="">
<!---<cfparam name = "form.animalsRightsServices" default="0">
<cfparam name = "form.wildlifeConservation" default="0">
<cfparam name = "form.zoos_aquariums" default="0">
<cfparam name = "form.parksGardensNature" default="0">
<cfparam name = "form.protectionConservation" default="0">
<cfparam name = "form.libraries" default="0">
<cfparam name = "form.museums" default="0">
<cfparam name = "form.performingArts" default="0">
<cfparam name = "form.publicBroadcasting" default="0">
<cfparam name = "form.humanRights" default="0">
<cfparam name = "form.diseases" default="0">
<cfparam name = "form.medicalResearch" default="0">
<cfparam name = "form.familySupport" default="0">
<cfparam name = "form.treatmentServices" default="0">
<cfparam name = "form.childrenFamilyServices" default="0">
<cfparam name = "form.foodDistribution" default="0">
<cfparam name = "form.homelessServices" default="0">
<cfparam name = "form.multipurposeOrgs" default="0">
<cfparam name = "form.rescue" default="0">
<cfparam name = "form.socialServices" default="0">
<cfparam name = "form.youthDevServices" default="0">
<cfparam name = "form.communityFoundations" default="0">
<cfparam name = "form.housing" default="0">
<cfparam name = "form.jewishFederations" default="0">
<cfparam name = "form.unitedWays" default="0">
<cfparam name = "form.adultEducation" default="0">
<cfparam name = "form.developmentAndRelief" default="0">
<cfparam name = "form.humanitarian" default="0">
<cfparam name = "form.peaceSecurityAndAffairs" default="0">
<cfparam name = "form.religiousActivities" default="0">
<cfparam name = "form.religiousMedia" default="0">
<cfparam name = "form.scienceAndTechResearch" default="0">
<cfparam name = "form.socialAndPublicPolicy" default="0">
<cfparam name = "form.adultEducationPrograms" default="0">
<cfparam name = "form.earlyChildhoodEducation" default="0">
<cfparam name = "form.educationPolicy" default="0">
<cfparam name = "form.scholarship" default="0">
<cfparam name = "form.specialEducation" default="0">
<cfparam name = "form.youthEducationPrograms" default="0">
<cfparam name = "form.advocacy" default="0">

<cfdump var = "#url.ID#">

<cfset cfcObject = createObject("component", "cfc.components")>
<cfset auth = cfcObject.authenticate('#Session.UserName#', '#Session.Password#')>


<cfquery name = "updateDB" datasource="charityapp">
	UPDATE `c25_yougive`.`questionaireAnswers`
	SET animalRightsAndWelfare = <cfqueryparam value="#form.animalsRightsServices#" cfsqltype="cf_sql_integer">,
	wildlifeConservation = <cfqueryparam value="#form.wildlifeConservation#" cfsqltype="cf_sql_integer">,
	zoosAquariums = <cfqueryparam value="#form.zoos_aquariums#" cfsqltype="cf_sql_integer">,
	libraries_historical_etc = <cfqueryparam value="#form.libraries#" cfsqltype="cf_sql_integer">,
	museums = <cfqueryparam value="#form.museums#" cfsqltype="cf_sql_integer">,
	performingArts = <cfqueryparam value="#form.performingArts#" cfsqltype="cf_sql_integer">,
	publicBroadcasting = <cfqueryparam value="#form.publicBroadcasting#" cfsqltype="cf_sql_integer">,
	communityFoundation = <cfqueryparam value="#form.communityFoundations#" cfsqltype="cf_sql_integer">,
	housingDevelopment = <cfqueryparam value="#form.housing#" cfsqltype="cf_sql_integer">,
	jewishFederation = <cfqueryparam value="#form.jewishFederations#" cfsqltype="cf_sql_integer">,
	unitedWays = <cfqueryparam value="#form.unitedWays#" cfsqltype="cf_sql_integer">,
	adultEducation = <cfqueryparam value="#form.adultEducationPrograms#" cfsqltype="cf_sql_integer">,
	earlyChildhoodPrograms = <cfqueryparam value="#form.earlyChildhoodEducation#" cfsqltype="cf_sql_integer">,
	educationReform = <cfqueryparam value="#form.educationPolicy#" cfsqltype="cf_sql_integer">,
	financial = <cfqueryparam value="#form.scholarship#" cfsqltype="cf_sql_integer">,
	specialEducation = <cfqueryparam value="#form.specialEducation#" cfsqltype="cf_sql_integer">,
	youthEducationPrograms = <cfqueryparam value="#form.youthEducationPrograms#" cfsqltype="cf_sql_integer">,
	parksNatureCenters_etc = <cfqueryparam value="#form.parksGardensNature#" cfsqltype="cf_sql_integer">,
	environmentalConservation = <cfqueryparam value="#form.protectionConservation#" cfsqltype="cf_sql_integer">,
	diseasesDisorders = <cfqueryparam value="#form.diseases#" cfsqltype="cf_sql_integer">,
	medicalResearch = <cfqueryparam value="#form.medicalResearch#" cfsqltype="cf_sql_integer">,
	patientSupport = <cfqueryparam value="#form.familySupport#" cfsqltype="cf_sql_integer">,
	treatmentServices = <cfqueryparam value="#form.treatmentServices#" cfsqltype="cf_sql_integer">,
	childrenFamilyServices = <cfqueryparam value="#form.childrenFamilyServices#" cfsqltype="cf_sql_integer">,
	foodBanks = <cfqueryparam value="#form.foodDistribution#" cfsqltype="cf_sql_integer">,
	homelessServices = <cfqueryparam value="#form.homelessServices#" cfsqltype="cf_sql_integer">,
	multipurposeHumanServices = <cfqueryparam value="#form.multipurposeOrgs#" cfsqltype="cf_sql_integer">,
	rescueMissions = <cfqueryparam value="#form.rescue#" cfsqltype="cf_sql_integer">,
	socialServices = <cfqueryparam value="#form.socialServices#" cfsqltype="cf_sql_integer">,
	youthDevelopmentCenters = <cfqueryparam value="#form.youthDevServices#" cfsqltype="cf_sql_integer">,
	advocacyAndEducation = <cfqueryparam value="#form.advocacy#" cfsqltype="cf_sql_integer">,
	developmentAndRelief = <cfqueryparam value="#form.developmentAndRelief#" cfsqltype="cf_sql_integer">,
	humanitarianRelief = <cfqueryparam value="#form.humanitarian#" cfsqltype="cf_sql_integer">,
	internationalPeaceAffairs = <cfqueryparam value="#form.peaceSecurityAndAffairs#" cfsqltype="cf_sql_integer">,
	religiousActivities = <cfqueryparam value="#form.religiousActivities#" cfsqltype="cf_sql_integer">,
	religiousMedia = <cfqueryparam value="#form.religiousMedia#" cfsqltype="cf_sql_integer">,
	nonMedicalResearch = <cfqueryparam value="#form.scienceAndTechResearch#" cfsqltype="cf_sql_integer">,
	publicPolicyResearch = <cfqueryparam value="#form.socialAndPublicPolicy#" cfsqltype="cf_sql_integer">
	WHERE `questionaireID` = '#form.questionaireID#';
</cfquery>

<cfquery name="" datasource="charityapp">
	UPDATE `c25_yougive`.`questionaireAnswers`
	SET sumAnimal = animalRightsAndWelfare + wildlifeConservation + zoosAquariums,
	sumArts = libraries_historical_etc + museums + performingArts + publicBroadcasting,
	sumCommunity = communityFoundation + housingDevelopment + jewishFederation + unitedWays,
	sumEducation = adultEducation + earlyChildhoodPrograms + educationReform + financial + specialEducation + youthEducationPrograms,
	sumHealth = diseasesDisorders + medicalResearch + patientSupport + treatmentServices,
	sumHumanServices = childrenFamilyServices + foodBanks + homelessServices + multipurposeHumanServices + rescueMissions + socialServices + youthDevelopmentCenters,
	sumCivilRights = advocacyAndEducation,
	sumInternational = developmentAndRelief + humanitarianRelief + internationalPeaceAffairs,
	sumReligion = religiousActivities + religiousMedia,
	sumResearch = nonMedicalResearch + publicPolicyResearch
	WHERE `questionaireID` = '#form.questionaireID#';
</cfquery>--->

<cfquery name="getCharity" datasource="charityapp">
	SELECT *
	FROM `c25_yougive`.`#url.ID#`
	ORDER BY score DESC
	LIMIT 20;
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
    <link href="individual/css/font-face.css" rel="stylesheet" media="all">
    <link href="individual/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="individual/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="individual/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="individual/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="individual/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="individual/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="individual/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="individual/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="individual/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="individual/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="individual/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="individual/css/theme.css" rel="stylesheet" media="all">




<style type="text/css">

@import url('https://shots.jotform.com/elton/genericTheme.css');
@import url(https://fonts.googleapis.com/css?family=Abel);

    .form-label-left{
        width:150px;
    }
    .form-label-right{
        width:150px;
    }
    .form-all{
        width:580px;
        color:rgb(255, 255, 255) !important;
        font-family:'Roboto';
        font-size:18px;
        margin-left: 35vw;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: false;
    }

	.submitButton{
		background-color: #25F18B;
    	border-radius: 10px;
    border: #0ABCEB;
    float: right;
    width: 195px;
    height: 51px;
    color: white;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    margin-top: -10px;
	cursor: pointer;
	}
</style>


</head>


<body class="hero-background" style="height: 100vh; overflow: auto;">

<!-- Navigation
    ================================================== -->
<div>
    <div class="container">
        <div class="header-container header">
            <a href="../../homepage.cfm"> <img  src="assets/images/logo.png" style=""> </a>
 
            <div class="header-right">
                <a class="navbar-item" href="individual/userProfile.cfm">Profile</a>
                <a class="navbar-item" href="charitySearch.cfm">Charity Search</a>
                
            </div>
        </div>
        <!--navigation-->


        <!-- Hero-Section
          ================================================== -->

     
            <div style=" width: 100%;">
	<cfloop query="getCharity">
			<cfoutput>
                                <div class="card" style="width: 50%; margin: auto; margin-bottom: 5vh; background-color: white;">
                                    <div class="card-header">
                                        <strong class="card-title">#getCharity.charityName#</strong>
                                    </div>
                                    <div class="card-body" style="display: flex;">
					                   <img src="#getCharity.imagePath#" width="35%" style="padding-right: 2vw;">
                                        <div class="card-text" style="display: inline; margin: auto; font-size: 1.5vw;">
						<strong><p class="card-text">#getCharity.charityName#</p></strong>
						<p class="card-text">#getCharity.charityAddress#<br> #getCharity.charityCity#, #getCharity.charityState# #getCharity.charityZip#</p>
						<p class="card-text">#getCharity.phone_number#</p>
						<a href="#getCharity.website#" target="_blank"><p class="card-text">#getCharity.website#</p></a>
					</div>
                                    </div>
                                </div>
                           
		</cfoutput>
	</cfloop>
 </div>

 



        </div><!--hero-->

    </div> <!--hero-container-->

</div><!--hero-background-->



</body>

</html>
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url="questionaireV2.cfm">
</cfcatch>
</cftry>