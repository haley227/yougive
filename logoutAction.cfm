<cftry>
<cflogout>
<cfscript>
	 StructClear(Session);
  </cfscript>
<cflocation url="/login.cfm" addtoken="no">

<cfcatch type="any">
	<cflocation url="login.cfm">
</cfcatch>
</cftry>
