<cftry>
<cfparam name = "form.password" default = "">
<cfparam name = "form.ot" default="">
<cfparam name = "form.username" default="">

<cfif #form.ot# neq ''>

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
							WHERE userEmail = '#Session.Email#'
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
</cfif>
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url = "forgotten_password.cfm">
</cfcatch>
</cftry>
