<cfquery name="check" datasource="charityapp">
	select * 
	from onetimeurls;
</cfquery>

<cfdump var = "#check#">
