<cftry>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href='assets/loginStyle.css' rel='stylesheet' type='text/css'>
<link href='assets/css/style.css' rel='stylesheet' type='text/css'>
<script src="assets/script.js"></script>

<cfparam name="url.status" default="">

<cfparam name="form.submit" default="0">


<body class="hero-background">
<div class="container">
  <div class="frame">
    <div class="nav">
      <ul class"links">
        <li class="signin-inactive" id="signIn"><a class="btn" href="login.cfm">Sign in</a></li>
        <li class="signup-active" id="signUp"><a class="btn" href="signup.cfm">Sign up </a></li>
      </ul>
    </div>
    <div ng-app ng-init="checked = false">
	
        
	<form class="form-signup" action="signup_action.cfm" method="post" name="form">
          <input type="hidden" value="1">
          <label for="password">New Password</label>
          <input class="form-styling" type="text" name="password" placeholder="" required/>
          <label for="confirmPassword">Retype Password</label>
          <input class="form-styling" type="text" name="password" placeholder="" required/>
          <input type="submit" class="btn-signup" id="signIn" value="Change Password">
	</form>
      
      <cfif #form.submit# eq 1>
        <cfif #password# neq #confirmPassword#>
            Passwords don't match!
        <cfelse>
            <cfquery name="change" datasource="charity_app">
                UPDATE `users_login`
                SET password = '#form.password#'
                WHERE 
            </cfquery>
        </cfif>
      </cfif>

            <div  class="success">
              <svg width="270" height="270" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
       viewBox="0 0 60 60" id="check" ng-class="checked ? 'checked' : ''">
                 <path fill="#ffffff" d="M40.61,23.03L26.67,36.97L13.495,23.788c-1.146-1.147-1.359-2.936-0.504-4.314
                  c3.894-6.28,11.169-10.243,19.283-9.348c9.258,1.021,16.694,8.542,17.622,17.81c1.232,12.295-8.683,22.607-20.849,22.042
                  c-9.9-0.46-18.128-8.344-18.972-18.218c-0.292-3.416,0.276-6.673,1.51-9.578" />
                <div class="successtext">
                   <p> Thanks for signing up! Check your email for confirmation.</p>
                </div>
             </div>
      </div>
      <cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url = "forgotten_password.cfm">
</cfcatch>
</cftry>
