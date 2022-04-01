<cftry>
<html>

<cfparam name = "Session.UserName" default="">
<cfparam name = "Session.Password" default="">
<cfparam name = "Session.userID" default="">
<cfparam name = "form.money" default="0">
<cfparam name = "form.item" default="0">
<cfparam name = "form.volunteer" default="0">
<cfparam name = "form.animals" default="0">
<cfparam name = "form.environment" default="0">
<cfparam name = "form.community" default="0">
<cfparam name = "form.health" default="0">
<cfparam name = "form.education" default="0">
<cfparam name = "form.humanServices" default="0">
<cfparam name = "form.artsCultureHumanities" default="0">
<cfparam name = "form.civilRights" default="0">
<cfparam name = "form.international" default="0">
<cfparam name = "form.religion" default="0">
<cfparam name = "form.research" default="0">
<cfparam name="form.questionaireID" default="">





<cfquery name="insertAnswers" datasource="charityapp">
	INSERT INTO `c25_yougive`.`questionaireAnswers`(questionaireID, userID, volunteer, money, item, animals, environmental, communityDevelopment, health, education, humanServices, artsCultureHumanities, humanCivilRights, international, religion, researchAndPublicPolicy)
	VALUES(<cfqueryparam value="#form.questionaireID#" cfsqltype="cf_sql_varchar">,
		<cfqueryparam value="#Session.userID#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.volunteer#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.money#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.item#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.animals#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.environment#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.community#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.health#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.education#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.humanServices#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.artsCultureHumanities#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.civilRights#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.international#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.religion#" cfsqltype="cf_sql_integer">,
		<cfqueryparam value="#form.research#" cfsqltype="cf_sql_integer">)
</cfquery>


 <cfset cfcObject = createObject("component", "cfc.components")>
<cfset auth = cfcObject.authenticate('#Session.UserName#', '#Session.Password#')>

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Charity Match</title>
    <meta name="Charity Match" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/cmIcon.png"/>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="assets/css/responsive.css"/>
       <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/test.css"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.15436" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.15436" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.15436" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5495488a700cc478508b4567.css?themeRevisionID=5cf3a016dd9c5671876e9d31"/>
<style type="text/css">

@import url('https://shots.jotform.com/elton/genericTheme.css');
@import url(https://fonts.googleapis.com/css?family=Abel);

    .form-label-left{
        width:25%;
    }
    .form-label-right{
        width:75%;
    }
    .form-all{
        width: 75vw;
	margin: auto;
        color:rgb(255, 255, 255) !important;
        font-family:'Roboto';
        font-size:18px;
        
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
            <a href="../../homepage.cfm"> <img  src="assets/images/logo.png"> </a>
 
            <div class="header-right">
                <a class="navbar-item" href="userProfile.cfm">Profile</a>
                <a class="navbar-item" href="charitySearch.cfm">Charity Search</a>
                <a class="navbar-item" href="../../logoutAction.cfm">Log Out</a>
            </div>
        </div>
        <!--navigation-->


        <!-- Hero-Section
          ================================================== -->

     
            
<form action="decision.cfm" method="post">
  <cfoutput><input type="hidden" name="questionaireID" value="#form.questionaireID#"></cfoutput>
  <div role="main" class="form-all" style="width: 100%;">
	
	<h2 style="padding-left: 1vw; padding-top: 1vw;">Tell us about you</h2>
    <ul class="form-section page-section">
            <li class="form-line jf-required" data-type="control_radio" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
          Let's get specific (check all that apply)
            </label>
        <div id="cid_3" class="form-input">
          <div class="form-single-column" role="group" aria-labelledby="label_3" data-component="radio">

<!---Start Animals--->
	<cfif #form.animals# eq '1'>
             
           <h3>Animals</h3>
           

            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_0" name="animalsRightsServices" value="1"/>
              <label id="label_input_4_0" for="input_4_0"> Animal Rights, Welfare, and Services </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_1" name="wildlifeConservation" value="1"/>
              <label id="label_input_4_1" for="input_4_1"> Wildlife Conservation</label>
            </span>
 	<span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_2" name="zoos_aquariums" value="1"/>
              <label id="label_input_4_2" for="input_4_2">Zoos and Aquariums</label>
            </span><br>
	</cfif>
<!---End Animals--->

<!---Start Environmental--->
<cfif #form.environment# eq '1'>
	<h3>Environmental</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_3" name="parksGardensNature" value="1"/>
              <label id="label_input_4_3" for="input_4_3"> Botanical Gardens, Parks, and Nature Centers  </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_4" name="protectionConservation" value="1"/>
              <label id="label_input_4_4" for="input_4_4"> Environmental Protection and Conservation</label>
            </span>
	 
	</cfif>

<!---End Environmental--->

<!---Start Education--->
<cfif #form.education# eq '1'>
	<h3>Education</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_5" name="adultEducationPrograms" value="1"/>
              <label id="label_input_4_5" for="input_4_5"> Adult Education Programs and Services  </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_6" name="earlyChildhoodEducation" value="1"/>
              <label id="label_input_4_6" for="input_4_6"> Early Childhood Programs and Services</label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_7" name="educationPolicy" value="1"/>
              <label id="label_input_4_7" for="input_4_7"> Education Policy and Reform</label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_8" name="scholarship" value="1"/>
              <label id="label_input_4_8" for="input_4_8"> Scholarship and Financial Support</label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_9" name="specialEducation" value="1"/>
              <label id="label_input_4_9" for="input_4_9"> Special Education</label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_10" name="youthEducationPrograms" value="1"/>
              <label id="label_input_4_10" for="input_4_10"> Youth Education Programs and Services </label>
            </span>	 
	</cfif>
<!---End Education--->
	
<!---Start Arts, Culture and Humanities--->
	<cfif #form.artsCultureHumanities# eq '1'>
	<h3>Arts, Culture, and Humanities</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_11" name="libraries" value="1"/>
              <label id="label_input_4_11" for="input_4_11"> Libraries, Historical Societies and Landmark Preservation </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_12" name="museums" value="1"/>
              <label id="label_input_4_12" for="input_4_12"> Museums </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_13" name="performingArts" value="1"/>
              <label id="label_input_4_13" for="input_4_13"> Performing Arts </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_14" name="publicBroadcasting" value="1"/>
              <label id="label_input_4_14" for="input_4_14"> Public Broadcasting and Media </label>
            </span>
	</cfif>
<!---End Arts, Culture and Humanities--->

<!---Start Human and Civil Rights--->
<cfif #form.civilRights# eq '1'>
	 	<span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_15" name="advocacy" value="1"/>
              <label id="label_input_4_15" for="input_4_15"> Advocacy and Education </label>
            </span>
</cfif>
<!---End Human and Civil Rights--->

<!---Start Health--->
<cfif #form.health# eq '1'>
	<h3>Health</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_16" name="diseases" value="1"/>
              <label id="label_input_4_16" for="input_4_16"> Diseases, Disorders, and Disciplines </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_17" name="medicalResearch" value="1"/>
              <label id="label_input_4_17" for="input_4_17"> Medical Research </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_18" name="familySupport" value="1"/>
              <label id="label_input_4_18" for="input_4_18"> Patient and Family Support </label>
            </span>

	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_19" name="treatmentServices" value="1"/>
              <label id="label_input_4_19" for="input_4_19"> Treatment and Prevention Services </label>
            </span>
	</cfif>

<!---End Health--->

<!---Start Human Services--->
<cfif #form.humanServices# eq '1'>
	<h3>Human Services</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_20" name="childrenFamilyServices" value="1"/>
              <label id="label_input_4_20" for="input_4_20"> Childrens and Family Services </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_21" name="foodDistribution" value="1"/>
              <label id="label_input_4_21" for="input_4_21"> Food Banks and Food Distribution </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_22" name="homelessServices" value="1"/>
              <label id="label_input_4_22" for="input_4_22"> Homeless Services </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_23" name="multipurposeOrgsF" value="1"/>
              <label id="label_input_4_23" for="input_4_23"> Multipurpose Human Service Organizations </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_24" name="rescue" value="1"/>
              <label id="label_input_4_24" for="input_4_24"> Rescue </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_25" name="socialServices" value="1"/>
              <label id="label_input_4_25" for="input_4_25"> Social Services </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_26" name="youthDevServices" value="1"/>
              <label id="label_input_4_26" for="input_4_26"> Youth Development Services </label>
            </span>

</cfif>
<!---End Human Services--->

<!---Start Community Development--->
	<cfif #form.community# eq '1'>
	<h3>Community Development</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_27" name="communityFoundations" value="1"/>
              <label id="label_input_4_27" for="input_4_27"> Community Foundations </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_28" name="housing" value="1"/>
              <label id="label_input_4_28" for="input_4_28"> Housing and Neighborhood Development </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_29" name="jewishFederations" value="1"/>
              <label id="label_input_4_29" for="input_4_29"> Jewish Federations </label>
            </span>

	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_30" name="unitedWays" value="1"/>
              <label id="label_input_4_30" for="input_4_30"> United Ways </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_31" name="adultEducation" value="1"/>
              <label id="label_input_4_31" for="input_4_31"> Adult Education Programs and Services </label>
            </span>
	</cfif>
<!---End Community Development--->

<!---Start International--->
	<cfif #form.international# eq '1'>
	<h3>International</h3>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_32" name="developmentAndRelief" value="1"/>
              <label id="label_input_4_32" for="input_4_32"> Development and Relief Services</label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_33" name="humanitarian" value=""/>
              <label id="label_input_4_33" for="input_4_33"> Humanitarian Relief </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_34" name="peaceSecurityAndAffairs" value="1"/>
              <label id="label_input_4_34" for="input_4_34"> International Peace, Security, and Affairs </label>
            </span>
	</cfif>
<!---End International--->

<!---Start Religion--->
<cfif #form.religion# eq '1'>
	<h3>Religion</h3>
 	<span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_35" name="religiousActivities" value="1"/>
              <label id="label_input_4_35" for="input_4_35"> Religious Activities</label>
          </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_36" name="religiousMedia" value="1"/>
              <label id="label_input_4_36" for="input_4_36"> Religious Media and Broadcasting </label>
          </span>
</cfif>
<!---End Religion--->

<!---Start Research and Public Policy--->
<cfif #form.research# eq '1'>
	<h3>Religion</h3>
 	<span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_37" name="scienceAndTechResearch" value="1"/>
              <label id="label_input_4_37" for="input_4_37"> Non-Medical Science and Technology Research</label>
          </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_38" name="researchAndPublicPolicy" value="1"/>
              <label id="label_input_4_38" for="input_4_38"> Social and Public Policy Research </label>
          </span>
</cfif>
<!---End Research and Public Policy--->

          </div>
        </div>
      </li>
      
        
    </ul>
	<input type="submit" class="submitButton" style="margin-right: 10%; cursor: pointer;" onclick="" value="Next">	
</div>
 
</form>


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