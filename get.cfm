<cfparam name = "url.token" default="">
<cfparam name="url.step" default="1">
<cfparam name="form.submit" default="0">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
	<link href='assets/loginStyle.css' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" type="image/png" href="assets/images/cmIcon.png"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    	<link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/responsive.css"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

<script src="assets/script.js"></script>


<cfquery name="checkToken" datasource="charityapp">
	SELECT *
	FROM onetimeurls
	WHERE token = '#url.token#'
	AND expired != 1;
</cfquery>

<cfif #checkToken.recordcount# eq 0>
	<h1>Token has expired</h1>
<cfelse>
	<!---<div class="hero-background" style="height:100vh;">
    		<div class="container">
     			<div class="frame"  style="margin-top: 20vh; height: 40%;">
				<cfoutput><form class="form-signin" action="get.cfm?token=#url.token#" method="post" name="form" id="myForm"></cfoutput>
					<input type="hidden" name="submit" value="1">
          				<label for="ot">One Time Password</label>
					<input class="form-styling" type="text" name="ot" placeholder=""/ required>
                     			<input type="submit" class="btn-signup" id="submit" value="Submit">
				</form>
				
				<cfif #form.submit# eq 1 AND #form.ot# neq ''>--->
					<cfquery name="checkOT" datasource="charityapp">
						SELECT *
						FROM `onetimeurls`
						WHERE token = '#url.token#'
						
						AND expired != '1';
					</cfquery>
					
					<cfif #checkOT.recordcount# gt 0>
						<cfquery name = "addUser" datasource="charityapp">
							INSERT INTO `users_login`(userName, password, userEmail)
							VALUES('#Session.Username#', '#Session.Password#', '#Session.Email#');
						</cfquery>

						
						<cfquery name = "expireToken" datasource="charityapp">
							UPDATE `onetimeurls`
							SET expired = '1'
							WHERE token = '#url.token#';
						</cfquery>
						<cflocation url="login.cfm?status=signUpSuccess">
					</cfif>
				</cfif>
			<!---</div>
  		</div>
	</div>

</cfif>--->