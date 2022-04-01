<cftry>
<cfparam name = "url.token" default="">
<cfparam name = "Session.email" default="">
<cfparam name="form.submit" default="0">
	

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
	<link href='assets/loginStyle.css' rel='stylesheet' type='text/css'>

    <link rel="shortcut icon" type="image/png" href="assets/images/favicon.png"/>

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


	<script>
		alert("Check email for one time password");
	</script>


<cfif #checkToken.recordcount# eq 0>
	<h1>Token has expired</h1>
<cfelse>
	<div class="hero-background" style="height:100vh;">
    		<div class="container">
     			<div class="frame" style="margin-top: 20vh; height: 80%;">
				<cfoutput><form class="form-signin" action="fixPW.cfm?token=#url.token#" method="post" name="form" id="form"></cfoutput>
					
					<input type="hidden" name="submit" value="1">
          				<label for="ot">One Time Password</label>
					<input class="form-styling" type="text" name="ot" placeholder=""/ required>
                     		 	<label for="password">New Password</label>
          				<input class="form-styling" type="password" name="password" placeholder="" required/>
          				<label for="confirmpassword">Confirm New Password</label>
          				<input class="form-styling" type="password" name="confirmpassword" placeholder="" required/>

					<input type="submit" class="btn-signup" id="submit" value="Submit">
				</form>
				
				<!---<cfif #form.submit# eq 1 AND #form.ot# neq ''>
					<cfif '#form.password#' neq '#form.confirmpassword#'>
						<cflocation url="forgotten_password.cfm?status=pwMatchError">
					</cfif>

					<cfquery name="checkOT" datasource="charityapp">
						SELECT *
						FROM `onetimeurls`
						WHERE token = '#url.token#'
						AND oneTimePW = '#form.ot#'
						AND expired != '1';
					</cfquery>
									
					<cfif #checkOT.recordcount# eq 1>
						
						<cfquery name = "addUser" datasource="charityapp">
							UPDATE `c25_yougive`.`users_login`
							SET password = '#hash(form.password, "SHA-256", "UTF-8")#'
							WHERE userName = '#form.username#'
						</cfquery>

						
						<cfquery name = "expireToken" datasource="charityapp">
							UPDATE `onetimeurls`
							SET expired = '1'
							WHERE token = '#url.token#';
						</cfquery>
						<cflocation url="login.cfm?status=forgotPWSuccess">
					<cfelse>
						<cflocation url="forgotten_password.cfm?status=otCodeError">
					</cfif>
				</cfif>--->
			</div>
  		</div>
	</div>

</cfif>
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url = "forgotten_password.cfm">
</cfcatch>
</cftry>
