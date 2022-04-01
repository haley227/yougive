<cfcomponent>
		
	<cffunction name="authenticate">
		<cfargument
		name="user"
		type="string"
		required="true"
		hint="username"
		/>

	<cfargument
		name="password"
		type="string"
		required="true"
		default=","
		hint="password"
		/>
	<cfif #Session.UserName# eq '' OR #Session.Password# eq ''>
			<cflocation url="login.cfm" addtoken="no">
	<cfelse>
		<cfquery name="auth" datasource="charityapp">
			SELECT *
			FROM `users_login`
			WHERE userName = '#Session.UserName#'
			AND password = '#Session.Password#';
		</cfquery>

		<cfreturn auth />
		
	</cfif>

	</cffunction>
</cfcomponent>