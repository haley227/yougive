<cftry>
<cfparam name="form.username" default="">
<cfparam name="form.password" default="">
<cfparam name="dbName" default="users_login">
<cfparam name="hashPass" default="">

<cfset hashPass = "#hash(form.password, "SHA-256", "UTF-8")#">

<cfquery name="checkLogin" datasource="charityapp">
	SELECT *
	FROM `#dbName#`
	WHERE userName = '#form.username#'
	AND password = '#hashPass#';
</cfquery>

<cfif #checkLogin.recordcount# gt 0>
	<cfset Session.UserName = #form.username#>
	<cfset Session.Password = #hashPass#>
	<cfset Session.userID = #checkLogin.userID#>

	<cflocation url="homepage.cfm" addtoken="no">
<cfelse>
	<cflocation url="login.cfm?status=fail" addtoken="no">
</cfif>
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url="login.cfm" addtoken="no">
</cfcatch>
</cftry>
