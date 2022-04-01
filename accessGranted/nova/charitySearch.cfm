<cftry>
<html>
<cfparam name = "Session.UserName" default="">
<cfparam name = "Session.Password" default="">
<cfparam name = "form.radios" default="any">
<cfparam name="form.submitted" default="0">
<cfparam name="form.filter" default="">
<cfparam name = "login" default="">


 <cfset cfcObject = createObject("component", "cfc.components")>
<cfset auth = cfcObject.authenticate('#Session.UserName#', '#Session.Password#')>

<cfif #form.radios# eq 'any'>
	<cfif #form.filter# eq ''>
    		<cfquery name = "getCharity" datasource="charityApp">
                 	SELECT *
                 	FROM `charity`
                 	limit 25;
        	</cfquery>
	<cfelse>
    		<cfquery name = "getCharity" datasource="charityApp">
                 	SELECT *
                 	FROM `charity`
			WHERE 
				(
				charityname LIKE '%#form.filter#%'
				OR charityCity LIKE '%#form.filter#%'
				OR charityZip = '#form.filter#'
				OR searchState = '#form.filter#'
				)
                 	limit 25;
        	</cfquery>

	</cfif>
<cfelse>
	<cfif #form.filter# eq ''>
    		<cfquery name = "getCharity" datasource="charityApp">
                 	SELECT *
                 	FROM `charity`
		        WHERE charityType = '#form.radios#'
                 	limit 25;
       		 </cfquery>
	<cfelse>
    		<cfquery name = "getCharity" datasource="charityApp">
                 	SELECT *
                 	FROM `charity`
		        WHERE charityType = '#form.radios#'
			AND 	(
				charityname LIKE '%#form.filter#%'
				OR charityCity LIKE '%#form.filter#%'
				OR charityZip = '#form.filter#'
				OR searchState = '#form.filter#'
				)

                 	limit 25;
       		 </cfquery>

	</cfif>

</cfif>


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
</head>

<body>

<!-- Navigation
    ================================================== -->
<div class="hero-background" style="height: 100vh; padding-top: 10vh; overflow: auto;">
    <div>
        <img class="strips" src="assets/images/strips.png">
    </div>
    <div class="container">
        <div class="header-container header" style="font-size: 1vw;">
            <a href="../../homepage.cfm"  style="margin-top: -9vh;"><img  src="assets/images/logo.png"></a>
            <a href="questionaireV2.cfm"  style="margin-left: 32vw; margin-top: 10px;">
                <button class="header-btn" href="questionaireV2.cfm"> Get Matched!</button>
            </a>
            <div class="header-right" style="font-size: 1vw;">
                <a class="navbar-item" href="individual/userProfile.cfm">Profile</a>
                <a class="navbar-item" href="charitySearch.cfm">Charity Search</a>
                <a class="navbar-item" href="../../logoutAction.cfm">Log Out</a>
            </div>
        </div>
        <!--navigation-->

<form action="charitySearch.cfm" method="post">
<input type="hidden" name="submitted" value="1">
<div class="search-container">
  <div class="row searchFilter" >
     <div class="col-sm-12" >
      <div class="input-group" >
 <!--- <div class="input-group-btn">
        <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="height: 7vh; font-size: 1.5vw;"><span class="label-icon" >Accepts</span> </button>
        <div class="dropdown-menu dropdown-menu-right" style="transform: translateX(15vw);">
           <ul class="category_filters">
	<li >
             <input class="cat_type category-input" data-label="All" id="all" value="volunteers" name="radios1" type="radio" ><label for="all" >Volunteers</label>
            </li>
	<li >
             <input class="cat_type category-input" data-label="All" id="all" value="monetary" name="radios1" type="radio" ><label for="all" >Monetary Donations</label>
            </li>
	<li >
             <input class="cat_type category-input" data-label="All" id="all" value="items" name="radios1" type="radio" ><label for="all" >Item Donations</label>
            </li>

		</ul>
		</div>
	</div>--->

    <input id="table_filter" name="filter" type="text" class="form-control" aria-label="Text input with segmented button dropdown"  style="height: 7vh; font-size: 1vw; background-opacity: 0;">
      <div class="input-group-btn">
        <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="height: 7vh; font-size: 1.5vw;"><span class="label-icon" >Category</span> </button>
        <div class="dropdown-menu dropdown-menu-right" style="transform: translateX(13vw);">
           <ul class="category_filters">
            <li >
             <input class="cat_type category-input" data-label="All" id="all" value="any" name="radios" type="radio" ><label for="all" >All</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Animals" value="Animals" ><label class="category-label" for="Animals">Animals</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Environmental" value="Environment" ><label class="category-label" for="Environmental" >Environmental</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Community Development" value="Community Development" ><label class="category-label" for="Community Development" >Community Development</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Health" value="Health" ><label class="category-label" for="Health" >Health</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Education" value="Education" ><label class="category-label" for="Education" >Education</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Human Services" value="Human Services" ><label class="category-label" for="Human Services" >Human Services</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Arts, Culture, Humanities" value="Arts_Culture_Humanities" ><label class="category-label" for="Arts, Culture, Humanities" >Arts, Culture, Humanities</label>
            </li>
            <li >
             <input type="radio" name="radios" id="Human and Civil Rights" value="Human and Civil Rights" ><label class="category-label" for="Human and Civil Rights" >Human and Civil Rights</label>
            </li>
            <li >
             <input type="radio" name="radios" id="International" value="International" ><label class="category-label" for="International" >International</label>
            </li>            
	    <li>
             <input type="radio" name="radios" id="Religion" value="Religion" ><label class="category-label" for="Religion" >Religion</label>
            </li>
	    <li>
             <input type="radio" name="radios" id="Research and Public Policy" value="Research and Public Policy" ><label class="category-label" for="Research and Public Policy" >Research and Public Policy</label>
            </li>


           </ul>
        </div>
       
        <button id="searchBtn" type="submit" class="btn btn-secondary btn-search"  style="height: 7vh;  font-size: 1.5vw;"><span class="glyphicon glyphicon-search" >&nbsp;</span> <span class="label-icon" >Search</span></button>
       </div>
      </div>
     </div>
  </div>
</div>
</form>

<div style=" width: 100%;">
<cfif #form.submitted# eq 1>
	<cfloop query="getCharity">
			<cfoutput>
                                <div class="card" style="width: 50%; margin: auto; margin-bottom: 5vh;">
                                    <div class="card-header">
                                        <strong class="card-title">#getCharity.charityName#</strong>
                                    </div>
                                    <div class="card-body" style="display: flex; padding: 3vw;">
					                   <img src="#getCharity.imagePath#" width="140vw" height="75%">
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
</cfif>



<script src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>

<script src="assets/js/script.js"></script>

</body>

</html>
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url="index.cfm">
</cfcatch>
</cftry>