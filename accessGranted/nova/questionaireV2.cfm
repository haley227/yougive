<cftry>
<html>
<cfparam name="url.step" default="1">
<cfparam name = "Session.UserName" default="">
<cfparam name = "Session.Password" default="">
<cfparam name = "questionaireID" default="">

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

<cfset questionaireID = "#CreateUUID()#">

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
                <a class="navbar-item" href="#features">News</a>
            </div>
        </div>
        <!--navigation-->


        <!-- Hero-Section
          ================================================== -->

     
            
<form  action="questionaire_step2.cfm" method="post">
  <cfoutput><input type="hidden" name="questionaireID" value="#questionaireID#"></cfoutput>
  <div role="main" class="form-all">
	<cfif #url.step# eq 1>
	<h2 style="padding-left: 1vw; padding-top: 1vw;">Tell us about you</h2>
    <ul class="form-section page-section">
            <li class="form-line jf-required" data-type="control_radio" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
          How would you like to give?
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input">
          <div class="form-single-column" role="group" aria-labelledby="label_3" data-component="radio">
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_3_0" name="money" value="1"/>
              <label id="label_input_3_0" for="input_3_0"> Monetary Donation</label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_3_1" name="item" value="1"/>
              <label id="label_input_3_1" for="input_3_1"> Item Donation</label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_3_2" name="volunteer" value="1"/>
              <label id="label_input_3_2" for="input_3_2">Volunteer </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
         What type of charity interests you? (select all that apply)
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input">
          <div class="form-single-column" role="group" aria-labelledby="label_4" data-component="radio">
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_0" name="animals" value="1"/>
              <label id="label_input_4_0" for="input_4_0"> Animals </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_1" name="environment" value="1"/>
              <label id="label_input_4_1" for="input_4_1"> Environmental</label>
            </span>
 	<span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_2" name="community" value="1"/>
              <label id="label_input_4_2" for="input_4_2">Community Development</label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_3" name="health" value="1"/>
              <label id="label_input_4_3" for="input_4_3"> Health </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_4" name="education" value="1"/>
              <label id="label_input_4_4" for="input_4_4"> Education </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_5" name="humanServices" value="1"/>
              <label id="label_input_4_5" for="input_4_5"> Human Services </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_6" name="artsCultureHumanities" value="1"/>
              <label id="label_input_4_6" for="input_4_6"> Arts, Culture, Humanities </label>
            </span>
 	<span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_7" name="civilRights" value="1"/>
              <label id="label_input_4_7" for="input_4_7"> Human and Civil Rights </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_8" name="international" value="1"/>
              <label id="label_input_4_8" for="input_4_8"> International </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_9" name="religion" value="1"/>
              <label id="label_input_4_9" for="input_4_9"> Religion </label>
            </span>
	 <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" class="form-radio" id="input_4_10" name="research" value="1"/>
              <label id="label_input_4_10" for="input_4_10"> Research and Public Policy </label>
            </span>
          </div>
        </div>
      </li>
    </ul>
	<input type="submit" class="submitButton" style="margin-right: 10%; cursor: pointer;" onclick="" value="Next">	</cfif>  
</div>
 
</form>


        </div><!--hero-->

    </div> <!--hero-container-->

</div><!--hero-background-->



</body>

</html>
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url="index.cfm">
</cfcatch>
</cftry>