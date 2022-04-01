<cfparam name="form.submit" default="0">
<cfparam name="form.name" default="">
<cfparam name="form.address" default="">
<cfparam name="form.city" default="">
<cfparam name="form.state" default="">
<cfparam name="form.zip" default="">
<cfparam name="form.country" default="">
<cfparam name="form.category" default="">
<cfparam name="form.subcategory1" default="">
<cfparam name="form.subcategory2" default="">
<cfparam name="form.subcategory3" default="">
<cfparam name="form.monetary" default="">
<cfparam name="form.items" default="">
<cfparam name="form.volunteer" default="">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<html style="overflow: scroll;">
<form method="post" action="inputCharity.cfm">
<input type="hidden" name="submit" value="1">
Charity Name: <input type="text" name="name"><br><br>
Address: <input type="text" name="address"><br><br>
City: <input type="text" name="city"><br><br>
State: <input type="text" name="state"><br><br>
Zip: <input type="text" name="zip"><br><br>
Country: <input type="text" name="country"><br><br>
Category: <!---<input type="text" name="category"><br><br>--->
<select name="category" id="category">
    <option name="null" value="unknown">Select a Category</option>
    <option name="animals" value="Animals">Animals</option>
    <option name="artsCulture" value="Arts_Culture_Humanities">Arts, Culture, Humanities</option>
    <option name="communityDev" value="Community Development">Community Development</option>
    <option name="education" value="Education">Education</option>
    <option name="environment" value="Environment">Environment</option>
    <option name="health" value="Health">Health</option>
    <option name="humanServices" value="Human Services">Human Services</option>
    <option name="humanCivilRights" value="Human and Civil Rights">Human and Civil Rights</option>
    <option name="international" value="International">International</option>
    <option name="religion" value="Religion">Religion</option>
    <option name="researchPolicy" value="Research and Public Policy">Research and Public Policy</option>
</select><br><br>

SubCategory1: <!---<input type="text" name="subcategory1"><br><br>--->
<select name="subcategory1" id="subcategory1">
    <option name="none" value="none">Select A Category</option>
</select><br><br>

SubCategory2: <!---<input type="text" name="subcategory2"><br><br>--->
<select name="subcategory2" id="subcategory2">
    <option name="none" value="none">Select A Category</option>
</select><br><br>

SubCategory3: <!---<input type="text" name="subcategory3"><br><br>--->
<select name="subcategory3"  id="subcategory3">
    <option name="none" value="none">Select A Category</option>
</select><br><br>

Website: <input type="text" name="website"><br><br>
Phone Number: <input type="text" name="phone"><br><br>
Accepts Monetary Donation: <select name="monetary">
    <option name="unsure" value="">Unsure</option>
    <option name="yes" value="1">Yes</option>
    <option name="no" value="0">No</option>
</select>
    <br><br>
Accepts Item Donations: <select name="items">
    <option name="unsure" value="">Unsure</option>
    <option name="yes" value="1">Yes</option>
    <option name="no" value="0">No</option>
</select>
    <br><br>
Accepts Volunteers: <select name="volunteer">
    <option name="unsure" value="">Unsure</option>
    <option name="yes" value="1">Yes</option>
    <option name="no" value="0">No</option>
</select><br><br>
<!---Photo: 
<input type="file" name="fileUpload" />
    <br>--->
<input type="submit"><br>
</form>

<!--- <cfparam name="form.fileUpload" default="">

<cfif #form.submit# eq 1>
<cfdump var = "#form.fileUpload#">
<cfif len(trim(form.fileUpload)) gt 0>
	         <cffile action="upload"
          fileField = "form.fileUpload"
          destination="accessGranted/nova/images"
          nameConflict="MakeUnique"
          mode="777">

<cfset photoPath = "accessGranted/nova/images/#CFFile.ClientFile#">
<cfelse>
	<cfset photoPath = "">

--->

<cfif #form.submit# eq 1>
    <cfquery name="input" datasource="charityApp">
        insert into `c25_yougive`.`charity`(charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, website, phone_number)
        values(<cfqueryparam value="#form.name#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.address#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.city#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.state#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.zip#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.country#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.category#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.subcategory1#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.subcategory2#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.subcategory3#" CFSQLType="cf_sql_varchar">,
        <cfqueryparam value="#form.monetary#" CFSQLType="cf_sql_int">,
        <cfqueryparam value="#form.items#" CFSQLType="cf_sql_int">, 
        <cfqueryparam value="#form.volunteer#" CFSQLType="cf_sql_int">,
       
         <cfqueryparam value="#form.website#" CFSQLType="cf_sql_varchar">,
          <cfqueryparam value="#form.phone#" CFSQLType="cf_sql_varchar">);

    </cfquery>

Submitted <cfoutput>#form.name#</cfoutput>
</cfif>

</html>

<script>
$(document).ready(function() {

    $("#category").change(function() {
        var val = $(this).val();
        if (val == "Animals") {
            $("#subcategory1").html("<option value='unknown'>Select</option><option value='Animal Rights and Welfare'>Animal Rights and Welfare</option><option value='Wildlife Conservation'>Wildlife Conservation</option><option value='Zoos And Aquariums'>Zoos And Aquariums</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Animal Rights and Welfare'>Animal Rights and Welfare</option><option value='Wildlife Conservation'>Wildlife Conservation</option><option value='Zoos And Aquariums'>Zoos And Aquariums</option>");
       		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Animal Rights and Welfare'>Animal Rights and Welfare</option><option value='Wildlife Conservation'>Wildlife Conservation</option><option value='Zoos And Aquariums'>Zoos And Aquariums</option>");
	 } else if (val == "Arts_Culture_Humanities") {
            $("#subcategory1").html("<option value='unknown'>Select</option><option value='Libraries_historical_etc'>Libraries, Historical Socities and Landmark Preservation</option><option value='Museums'>Museums</option><option value='Performing Arts'>Performing Arts</option><option value='Public Broadcasting Media'>Public Broadcasting and Media</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Libraries_historical_etc'>Libraries, Historical Socities and Landmark Preservation</option><option value='Museums'>Museums</option><option value='Performing Arts'>Performing Arts</option><option value='Public Broadcasting Media'>Public Broadcasting and Media</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Libraries_historical_etc'>Libraries, Historical Socities and Landmark Preservation</option><option value='Museums'>Museums</option><option value='Performing Arts'>Performing Arts</option><option value='Public Broadcasting Media'>Public Broadcasting and Media</option>");
        } else if (val == "Community Development") {
            $("#subcategory1").html("<option value='unknown'>Select</option><option value='Community Foundations'>Community Foundations</option><option value='Housing Development'>Housing and Neighborhood Development</option><option value='Jewish Federation'>Jewish Federations</option><option value='United Ways'>United Ways</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Community Foundations'>Community Foundations</option><option value='Housing Development'>Housing and Neighborhood Development</option><option value='Jewish Federation'>Jewish Federations</option><option value='United Ways'>United Ways</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Community Foundations'>Community Foundations</option><option value='Housing Development'>Housing and Neighborhood Development</option><option value='Jewish Federation'>Jewish Federations</option><option value='United Ways'>United Ways</option>");
        } 
	else if (val == "Education") {
            $("#subcategory1").html("<option value='unknown'>Select</option><option value='Adult Education Programs and Services'>Adult Education Programs and Services</option><option value='Early Childhood Programs'>Early Childhood Programs and Services</option><option value='Education Reform'>Education Policy and Reform</option><option value='Scholarship and Financial'>Scholarship and Financial Support</option><option value='Special Education'>Special Education</option><option value='Youth Education Programs'>Youth Education Programs and Services</option>");
            $("#subcategory2").html("<option value='unknown'>Select</option><option value='Adult Education Programs and Services'>Adult Education Programs and Services</option><option value='Early Childhood Programs'>Early Childhood Programs and Services</option><option value='Education Reform'>Education Policy and Reform</option><option value='Scholarship and Financial'>Scholarship and Financial Support</option><option value='Special Education'>Special Education</option><option value='Youth Education Programs'>Youth Education Programs and Services</option>");
            $("#subcategory3").html("<option value='unknown'>Select</option><option value='Adult Education Programs and Services'>Adult Education Programs and Services</option><option value='Early Childhood Programs'>Early Childhood Programs and Services</option><option value='Education Reform'>Education Policy and Reform</option><option value='Scholarship and Financial'>Scholarship and Financial Support</option><option value='Special Education'>Special Education</option><option value='Youth Education Programs'>Youth Education Programs and Services</option>");
	   }else if (val == "Environment") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='Nature Centers'>Botanical Gardens, Parks, and Nature Centers</option><option value='Environmental Conservation'>Environmental Protection and Conservation</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Nature Centers'>Botanical Gardens, Parks, and Nature Centers</option><option value='Environmental Conservation'>Environmental Protection and Conservation</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Nature Centers'>Botanical Gardens, Parks, and Nature Centers</option><option value='Environmental Conservation'>Environmental Protection and Conservation</option>");	
	} else if (val == "Health") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='Diseases_Disorders'>Diseases, Disorders, and Disciplines</option><option value='Medical Research'>Medical Research</option><option value='Patient Support'>Patient and Family Support</option><option value='Treatment Services'>Treatment and Prevention Services</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Diseases_Disorders'>Diseases, Disorders, and Disciplines</option><option value='Medical Research'>Medical Research</option><option value='Patient Support'>Patient and Family Support</option><option value='Treatment Services'>Treatment and Prevention Services</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Diseases_Disorders'>Diseases, Disorders, and Disciplines</option><option value='Medical Research'>Medical Research</option><option value='Patient Support'>Patient and Family Support</option><option value='Treatment Services'>Treatment and Prevention Services</option>");	
	} else if (val == "Human Services") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='Children and Family Services'>Children's and Family Services</option><option value'Food Banks'>Food Banks, Food Pantries, and Food Distribution</option><option value='Homeless Services'>Homeless Services</option><option value='Multipurpose Human Services'>Multipurpose Human Service Organizations</option><option value='Rescue Missions'>Rescue Missions</option><option value='Social Services'>Social Services</option><option value='Youth Development'>Youth Development, Shelter, and Crisis Services</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Children and Family Services'>Children's and Family Services</option><option value'Food Banks'>Food Banks, Food Pantries, and Food Distribution</option><option value='Homeless Services'>Homeless Services</option><option value='Multipurpose Human Services'>Multipurpose Human Service Organizations</option><option value='Rescue Missions'>Rescue Missions</option><option value='Social Services'>Social Services</option><option value='Youth Development'>Youth Development, Shelter, and Crisis Services</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Children and Family Services'>Children's and Family Services</option><option value'Food Banks'>Food Banks, Food Pantries, and Food Distribution</option><option value='Homeless Services'>Homeless Services</option><option value='Multipurpose Human Services'>Multipurpose Human Service Organizations</option><option value='Rescue Missions'>Rescue Missions</option><option value='Social Services'>Social Services</option><option value='Youth Development'>Youth Development, Shelter, and Crisis Services</option>");	
	} else if (val == "Human and Civil Rights") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='Advocacy and Education'>Advocacy and Education</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Advocacy and Education'>Advocacy and Education</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Advocacy and Education'>Advocacy and Education</option>");
	} else if (val == "International") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='Development and Relief'>Development and Relief Services</option><option value='Humanitarian Relief Services'>Humanitarian Relief Supplies</option><option value='International Peace'>International Peace, Security, and Affairs</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Development and Relief'>Development and Relief Services</option><option value='Humanitarian Relief Services'>Humanitarian Relief Supplies</option><option value='International Peace'>International Peace, Security, and Affairs</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Development and Relief'>Development and Relief Services</option><option value='Humanitarian Relief Services'>Humanitarian Relief Supplies</option><option value='International Peace'>International Peace, Security, and Affairs</option>");
	} else if (val == "Religion") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='Religious Activities'>Religious Activites</option><option value='Religious Media'>Religious Media and Broadcasting</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='Religious Activities'>Religious Activites</option><option value='Religious Media'>Religious Media and Broadcasting</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='Religious Activities'>Religious Activites</option><option value='Religious Media'>Religious Media and Broadcasting</option>");	
	} else if (val == "Research and Public Policy") {
		$("#subcategory1").html("<option value='unknown'>Select</option><option value='NonMedical Research'>Non-Medical Science & Technology Research</option><option value='Social and Public Policy Research'>Social and Public Policy Research</option>");
		$("#subcategory2").html("<option value='unknown'>Select</option><option value='NonMedical Research'>Non-Medical Science & Technology Research</option><option value='Social and Public Policy Research'>Social and Public Policy Research</option>");
		$("#subcategory3").html("<option value='unknown'>Select</option><option value='NonMedical Research'>Non-Medical Science & Technology Research</option><option value='Social and Public Policy Research'>Social and Public Policy Research</option>");
	
	}
    });


});
</script>