<cfparam name = "form.questionaireID" default="0">

<cfparam name="url.step" default="1">
<cfparam name = "Session.UserName" default="">
<cfparam name = "Session.Password" default="">
<cfparam name = "Session.userID" default="">
<cfparam name = "form.animalsRightsServices" default="0">
<cfparam name = "form.wildlifeConservation" default="0">
<cfparam name = "form.zoos_aquariums" default="0">
<cfparam name = "form.parksGardensNature" default="0">
<cfparam name = "form.protectionConservation" default="0">
<cfparam name = "form.libraries" default="0">
<cfparam name = "form.museums" default="0">
<cfparam name = "form.performingArts" default="0">
<cfparam name = "form.publicBroadcasting" default="0">
<cfparam name = "form.humanRights" default="0">
<cfparam name = "form.diseases" default="0">
<cfparam name = "form.medicalResearch" default="0">
<cfparam name = "form.familySupport" default="0">
<cfparam name = "form.treatmentServices" default="0">
<cfparam name = "form.childrenFamilyServices" default="0">
<cfparam name = "form.foodDistribution" default="0">
<cfparam name = "form.homelessServices" default="0">
<cfparam name = "form.multipurposeOrgs" default="0">
<cfparam name = "form.rescue" default="0">
<cfparam name = "form.socialServices" default="0">
<cfparam name = "form.youthDevServices" default="0">
<cfparam name = "form.communityFoundations" default="0">
<cfparam name = "form.housing" default="0">
<cfparam name = "form.jewishFederations" default="0">
<cfparam name = "form.unitedWays" default="0">
<cfparam name = "form.adultEducation" default="0">
<cfparam name = "form.developmentAndRelief" default="0">
<cfparam name = "form.humanitarian" default="0">
<cfparam name = "form.peaceSecurityAndAffairs" default="0">
<cfparam name = "form.religiousActivities" default="0">
<cfparam name = "form.religiousMedia" default="0">
<cfparam name = "form.scienceAndTechResearch" default="0">
<cfparam name = "form.socialAndPublicPolicy" default="0">
<cfparam name = "form.adultEducationPrograms" default="0">
<cfparam name = "form.earlyChildhoodEducation" default="0">
<cfparam name = "form.educationPolicy" default="0">
<cfparam name = "form.scholarship" default="0">
<cfparam name = "form.specialEducation" default="0">
<cfparam name = "form.youthEducationPrograms" default="0">
<cfparam name = "form.advocacy" default="0">



 <cfset cfcObject = createObject("component", "cfc.components")>
<cfset auth = cfcObject.authenticate('#Session.UserName#', '#Session.Password#')>


<cfquery name = "updateDB" datasource="charityapp">
	UPDATE `c25_yougive`.`questionaireAnswers`
	SET animalRightsAndWelfare = <cfqueryparam value="#form.animalsRightsServices#" cfsqltype="cf_sql_integer">,
	wildlifeConservation = <cfqueryparam value="#form.wildlifeConservation#" cfsqltype="cf_sql_integer">,
	zoosAquariums = <cfqueryparam value="#form.zoos_aquariums#" cfsqltype="cf_sql_integer">,
	libraries_historical_etc = <cfqueryparam value="#form.libraries#" cfsqltype="cf_sql_integer">,
	museums = <cfqueryparam value="#form.museums#" cfsqltype="cf_sql_integer">,
	performingArts = <cfqueryparam value="#form.performingArts#" cfsqltype="cf_sql_integer">,
	publicBroadcasting = <cfqueryparam value="#form.publicBroadcasting#" cfsqltype="cf_sql_integer">,
	communityFoundation = <cfqueryparam value="#form.communityFoundations#" cfsqltype="cf_sql_integer">,
	housingDevelopment = <cfqueryparam value="#form.housing#" cfsqltype="cf_sql_integer">,
	jewishFederation = <cfqueryparam value="#form.jewishFederations#" cfsqltype="cf_sql_integer">,
	unitedWays = <cfqueryparam value="#form.unitedWays#" cfsqltype="cf_sql_integer">,
	adultEducation = <cfqueryparam value="#form.adultEducationPrograms#" cfsqltype="cf_sql_integer">,
	earlyChildhoodPrograms = <cfqueryparam value="#form.earlyChildhoodEducation#" cfsqltype="cf_sql_integer">,
	educationReform = <cfqueryparam value="#form.educationPolicy#" cfsqltype="cf_sql_integer">,
	financial = <cfqueryparam value="#form.scholarship#" cfsqltype="cf_sql_integer">,
	specialEducation = <cfqueryparam value="#form.specialEducation#" cfsqltype="cf_sql_integer">,
	youthEducationPrograms = <cfqueryparam value="#form.youthEducationPrograms#" cfsqltype="cf_sql_integer">,
	parksNatureCenters_etc = <cfqueryparam value="#form.parksGardensNature#" cfsqltype="cf_sql_integer">,
	environmentalConservation = <cfqueryparam value="#form.protectionConservation#" cfsqltype="cf_sql_integer">,
	diseasesDisorders = <cfqueryparam value="#form.diseases#" cfsqltype="cf_sql_integer">,
	medicalResearch = <cfqueryparam value="#form.medicalResearch#" cfsqltype="cf_sql_integer">,
	patientSupport = <cfqueryparam value="#form.familySupport#" cfsqltype="cf_sql_integer">,
	treatmentServices = <cfqueryparam value="#form.treatmentServices#" cfsqltype="cf_sql_integer">,
	childrenFamilyServices = <cfqueryparam value="#form.childrenFamilyServices#" cfsqltype="cf_sql_integer">,
	foodBanks = <cfqueryparam value="#form.foodDistribution#" cfsqltype="cf_sql_integer">,
	homelessServices = <cfqueryparam value="#form.homelessServices#" cfsqltype="cf_sql_integer">,
	multipurposeHumanServices = <cfqueryparam value="#form.multipurposeOrgs#" cfsqltype="cf_sql_integer">,
	rescueMissions = <cfqueryparam value="#form.rescue#" cfsqltype="cf_sql_integer">,
	socialServices = <cfqueryparam value="#form.socialServices#" cfsqltype="cf_sql_integer">,
	youthDevelopmentCenters = <cfqueryparam value="#form.youthDevServices#" cfsqltype="cf_sql_integer">,
	advocacyAndEducation = <cfqueryparam value="#form.advocacy#" cfsqltype="cf_sql_integer">,
	developmentAndRelief = <cfqueryparam value="#form.developmentAndRelief#" cfsqltype="cf_sql_integer">,
	humanitarianRelief = <cfqueryparam value="#form.humanitarian#" cfsqltype="cf_sql_integer">,
	internationalPeaceAffairs = <cfqueryparam value="#form.peaceSecurityAndAffairs#" cfsqltype="cf_sql_integer">,
	religiousActivities = <cfqueryparam value="#form.religiousActivities#" cfsqltype="cf_sql_integer">,
	religiousMedia = <cfqueryparam value="#form.religiousMedia#" cfsqltype="cf_sql_integer">,
	nonMedicalResearch = <cfqueryparam value="#form.scienceAndTechResearch#" cfsqltype="cf_sql_integer">,
	publicPolicyResearch = <cfqueryparam value="#form.socialAndPublicPolicy#" cfsqltype="cf_sql_integer">
	WHERE `questionaireID` = '#form.questionaireID#';
</cfquery>

<cfquery name="" datasource="charityapp">
	UPDATE `c25_yougive`.`questionaireAnswers`
	SET sumAnimal = animalRightsAndWelfare + wildlifeConservation + zoosAquariums,
	sumArts = libraries_historical_etc + museums + performingArts + publicBroadcasting,
	sumCommunity = communityFoundation + housingDevelopment + jewishFederation + unitedWays,
	sumEducation = adultEducation + earlyChildhoodPrograms + educationReform + financial + specialEducation + youthEducationPrograms,
	sumHealth = diseasesDisorders + medicalResearch + patientSupport + treatmentServices,
	sumHumanServices = childrenFamilyServices + foodBanks + homelessServices + multipurposeHumanServices + rescueMissions + socialServices + youthDevelopmentCenters,
	sumCivilRights = advocacyAndEducation,
	sumInternational = developmentAndRelief + humanitarianRelief + internationalPeaceAffairs,
	sumReligion = religiousActivities + religiousMedia,
	sumResearch = nonMedicalResearch + publicPolicyResearch
	WHERE `questionaireID` = '#form.questionaireID#';
</cfquery>






<cfquery name="getAns" datasource="charityapp">
	SELECT *
	FROM `c25_yougive`.`questionaireAnswers`
	WHERE questionaireID = '#form.questionaireID#';
</cfquery>



<cfoutput>
<cfquery name = "create" datasource="charityapp">
	CREATE TABLE `c25_yougive`.`#getAns.questionaireID#`(charityID VARCHAR(255), 
				charityName VARCHAR(255), 
				charityAddress VARCHAR(255), 
				charityCity VARCHAR(255), 
				charityState VARCHAR(255), 
				charityZip VARCHAR(255), 
				charityCountry VARCHAR(255), 
				charityType VARCHAR(255), 
				charitysubType1 VARCHAR(255), 
				charitysubType2 VARCHAR(255), 
				charitysubType3 VARCHAR(255), 
				acceptsMonetaryDonation INT, 
				acceptsItemDonation INT, 
				acceptsVolunteers INT, 
				imagePath VARCHAR(255), 
				website VARCHAR(255), 
				phone_number VARCHAR(255), 
				fax VARCHAR(255),
				score INT)
</cfquery>
</cfoutput>

<cfif #getAns.volunteer# eq 1>
	<cfquery name="insertVol" datasource="charityapp">
		INSERT INTO `c25_yougive`.`#getAns.questionaireID#`(charityID, charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number, fax, score)
		SELECT charityID, charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number, fax, '0'
		FROM `c25_yougive`.`charity`
		WHERE acceptsVolunteers = '1';
	</cfquery>
<cfelseif #getAns.money# eq 1>
	<cfquery name="insertMoney" datasource="charityapp">
		INSERT INTO `c25_yougive`.`#getAns.questionaireID#`(charityID, charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number, fax, score)
		SELECT charityID, charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number, fax, '0'
		FROM `c25_yougive`.`charity`
		WHERE acceptsMonetaryDonation = '1';
	</cfquery>
<cfelseif #getAns.item# eq 1>
	<cfquery name="insertItem" datasource="charityapp">
		INSERT INTO `c25_yougive`.`#getAns.questionaireID#`(charityID, charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number, fax, score)
		SELECT charityID, charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number, fax, '0'
		FROM `c25_yougive`.`charity`
		WHERE acceptsItemDonation = '1';
	</cfquery>
</cfif>

<!---Start Animals--->
<cfif #getAns.animals# eq 1>
	<cfquery name = "updateScoreAnimals" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Animals';  
	</cfquery>

	<!---Animal Rights and Welfare--->
	<cfif #getAns.animalRightsAndWelfare# eq 1>
		<cfquery name="insertAnimalRights" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Animal Rights and Welfare'
			OR charitysubType2 = 'Animal Rights and Welfare'
			OR charitysubType3 = 'Animal Rights and Welfare'; 
		</cfquery>
	</cfif>

	<!---Wildlife Conservation--->
	<cfif #getAns.wildlifeConservation# eq 1>
		<cfquery name="insertWildlifeConservation" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Wildlife Conservation'
			OR charitysubType2 = 'Wildlife Conservation'
			OR charitysubType3 = 'Wildlife Conservation'; 
		</cfquery>
	</cfif>

	<!---Zoos and Aquariums--->
	<cfif #getAns.zoosAquariums# eq 1>
		<cfquery name="insertZoosAquariums" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Zoos And Aquariums'
			OR charitysubType2 = 'Zoos And Aquariums'
			OR charitysubType3 = 'Zoos And Aquariums'; 
		</cfquery>
	</cfif>
</cfif>
<!---End Animals--->

<!---Start Arts, Culture, Humanities--->
<cfif #getAns.artsCultureHumanities# eq 1>
	<cfquery name = "updateScoreAnimals" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Arts_Culture_Humanities';  
	</cfquery>

	<!---Libraries, Historical Societies, Landmarks--->
	<cfif #getAns.libraries_historical_etc# eq 1>
		<cfquery name="insertLibraries" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Libraries_historical_etc'
			OR charitysubType2 = 'Libraries_historical_etc'
			OR charitysubType3 = 'Libraries_historical_etc'; 
		</cfquery>
	</cfif>

	<!---Museums--->
	<cfif #getAns.museums# eq 1>
		<cfquery name="insertMuseums" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Museums'
			OR charitysubType2 = 'Museums'
			OR charitysubType3 = 'Museums'; 
		</cfquery>
	</cfif>

	<!---Performing Arts--->
	<cfif #getAns.performingArts# eq 1>
		<cfquery name="insertPerformingArts" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Performing Arts'
			OR charitysubType2 = 'Performing Arts'
			OR charitysubType3 = 'Performing Arts'; 
		</cfquery>
	</cfif>

	<!---Public Broadcasting and Media--->
	<cfif #getAns.performingArts# eq 1>
		<cfquery name="insertPublicBroadcastingMedia" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Public Broadcasting Media'
			OR charitysubType2 = 'Public Broadcasting Media'
			OR charitysubType3 = 'Public Broadcasting Media'; 
		</cfquery>
	</cfif>

</cfif>
<!---End Arts, Culture, Humanities--->


<!---Start Community Development--->
<cfif #getAns.communityDevelopment# eq 1>
	<cfquery name = "updateCommunityDevelopment" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Community Development';  
	</cfquery>

	<!---Community Foundations--->
	<cfif #getAns.communityFoundation# eq 1>
		<cfquery name="insertCommunityFoundations" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Community Foundations'
			OR charitysubType2 = 'Community Foundations'
			OR charitysubType3 = 'Community Foundations'; 
		</cfquery>
	</cfif>

	<!---Housing and Neighborhood Development--->
	<cfif #getAns.housingDevelopment# eq 1>
		<cfquery name="insertHousingDev" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Housing Development'
			OR charitysubType2 = 'Housing Development'
			OR charitysubType3 = 'Housing Development'; 
		</cfquery>
	</cfif>

	<!---Jewish Federations--->
	<cfif #getAns.jewishFederation# eq 1>
		<cfquery name="insertJewishFederations" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Jewish Federation'
			OR charitysubType2 = 'Jewish Federation'
			OR charitysubType3 = 'Jewish Federation'; 
		</cfquery>
	</cfif>

	<!---United Ways--->
	<cfif #getAns.unitedWays# eq 1>
		<cfquery name="insertUnitedWays" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'United Ways'
			OR charitysubType2 = 'United Ways'
			OR charitysubType3 = 'United Ways'; 
		</cfquery>
	</cfif>

</cfif>
<!---End Community Development--->


<!---Start Education--->
<cfif #getAns.education# eq 1>
	<cfquery name = "updateEducation" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Education';  
	</cfquery>

	<!---Adult Education Programs--->
	<cfif #getAns.adultEducation# eq 1>
		<cfquery name="insert" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Adult Education Programs and Services'
			OR charitysubType2 = 'Adult Education Programs and Services'
			OR charitysubType3 = 'Adult Education Programs and Services'; 
		</cfquery>
	</cfif>

	<!---Early Childhood Programs--->
	<cfif #getAns.earlyChildhoodPrograms# eq 1>
		<cfquery name="insertEarlyChildhood" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Early Childhood Programs'
			OR charitysubType2 = 'Early Childhood Programs'
			OR charitysubType3 = 'Early Childhood Programs'; 
		</cfquery>
	</cfif>

	<!---Education Policy and Reform--->
	<cfif #getAns.educationReform# eq 1>
		<cfquery name="insertReform" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Education Reform'
			OR charitysubType2 = 'Education Reform'
			OR charitysubType3 = 'Education Reform'; 
		</cfquery>
	</cfif>

	<!---Scholarship and Financial Support--->
	<cfif #getAns.financial# eq 1>
		<cfquery name="insertFinancial" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Scholarship and Financial'
			OR charitysubType2 = 'Scholarship and Financial'
			OR charitysubType3 = 'Scholarship and Financial'; 
		</cfquery>
	</cfif>

	<!---Special Education--->
	<cfif #getAns.specialEducation# eq 1>
		<cfquery name="insertSpecialEducation" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Special Education'
			OR charitysubType2 = 'Special Education'
			OR charitysubType3 = 'Special Education'; 
		</cfquery>
	</cfif>

	<!---Youth Education Programs and Services--->
	<cfif #getAns.youthEducationPrograms# eq 1>
		<cfquery name="insert_WhateverSub" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Youth Education Programs'
			OR charitysubType2 = 'Youth Education Programs'
			OR charitysubType3 = 'Youth Education Programs'; 
		</cfquery>
	</cfif>
</cfif>
<!---End Education--->

<!---Start Environment--->
<cfif #getAns.environmental# eq 1>
	<cfquery name = "updateEnvironment" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Environment';  
	</cfquery>

	<!---Gardens, Parks, ETC.--->
	<cfif #getAns.parksNatureCenters_etc# eq 1>
		<cfquery name="insertNatureCenters" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Nature Centers'
			OR charitysubType2 = 'Nature Centers'
			OR charitysubType3 = 'Nature Centers'; 
		</cfquery>
	</cfif>

	<!---Environmental Conservation--->
	<cfif #getAns.environmentalConservation# eq 1>
		<cfquery name="insert_Conservation" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Environmental Conservation'
			OR charitysubType2 = 'Environmental Conservation'
			OR charitysubType3 = 'Environmental Conservation'; 
		</cfquery>
	</cfif>

</cfif>
<!---End Environment--->

<!---Start Health--->
<cfif #getAns.health# eq 1>
	<cfquery name = "updateHealth" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Health';  
	</cfquery>

	<!---Diseases, Disorders, etc--->
	<cfif #getAns.diseasesDisorders# eq 1>
		<cfquery name="insertDiseases" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Diseases_Disorders'
			OR charitysubType2 = 'Diseases_Disorders'
			OR charitysubType3 = 'Diseases_Disorders'; 
		</cfquery>
	</cfif>

	<!---Medical Research--->
	<cfif #getAns.medicalResearch# eq 1>
		<cfquery name="insertMedicalResearch" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Medical Research'
			OR charitysubType2 = 'Medical Research'
			OR charitysubType3 = 'Medical Research'; 
		</cfquery>
	</cfif>

	<!---Patient and Family Support--->
	<cfif #getAns.patientSupport# eq 1>
		<cfquery name="insert_WhateverSub" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Patient Support'
			OR charitysubType2 = 'Patient Support'
			OR charitysubType3 = 'Patient Support'; 
		</cfquery>
	</cfif>

	<!---Treatment and Prevention--->
	<cfif #getAns.treatmentServices# eq 1>
		<cfquery name="insertTreatment" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Treatment Services'
			OR charitysubType2 = 'Treatment Services'
			OR charitysubType3 = 'Treatment Services'; 
		</cfquery>
	</cfif>
</cfif>
<!---End Health--->

<!---Start Human Services--->
<cfif #getAns.humanServices# eq 1>
	<cfquery name = "updateHumanServices" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Human Services';  
	</cfquery>

	<!---Children and Family Services--->
	<cfif #getAns.childrenFamilyServices# eq 1>
		<cfquery name="insertChildrenFamily" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Children and Family Services'
			OR charitysubType2 = 'Children and Family Services'
			OR charitysubType3 = 'Children and Family Services'; 
		</cfquery>
	</cfif>

	<!---Food Banks, Pantries, ETC.--->
	<cfif #getAns.foodBanks# eq 1>
		<cfquery name="insert_FoodBanks" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Food Banks'
			OR charitysubType2 = 'Food Banks'
			OR charitysubType3 = 'Food Banks'; 
		</cfquery>
	</cfif>

	<!---Homeless Services--->
	<cfif #getAns.homelessServices# eq 1>
		<cfquery name="insert_homelessServices" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Homeless Services'
			OR charitysubType2 = 'Homeless Services'
			OR charitysubType3 = 'Homeless Services'; 
		</cfquery>
	</cfif>

	<!---Multipurpose Human Service Organizations--->
	<cfif #getAns.multipurposeHumanServices# eq 1>
		<cfquery name="insert_Multipurpose" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Multipurpose Human Services'
			OR charitysubType2 = 'Multipurpose Human Services'
			OR charitysubType3 = 'Multipurpose Human Services'; 
		</cfquery>
	</cfif>

	<!---Rescue Missions--->
	<cfif #getAns.rescueMissions# eq 1>
		<cfquery name="insertRescueMissions" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Rescue Missions'
			OR charitysubType2 = 'Rescue Missions'
			OR charitysubType3 = 'Rescue Missions'; 
		</cfquery>
	</cfif>

	<!---Social Services--->
	<cfif #getAns.socialServices# eq 1>
		<cfquery name="insertSocialServices" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Social Services'
			OR charitysubType2 = 'Social Services'
			OR charitysubType3 = 'Social Services'; 
		</cfquery>
	</cfif>

	<!---Youth Development, Shelter, and Crisis Services--->
	<cfif #getAns.youthDevelopmentCenters# eq 1>
		<cfquery name="insert_Youth" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Youth Development'
			OR charitysubType2 = 'Youth Development'
			OR charitysubType3 = 'Youth Development'; 
		</cfquery>
	</cfif>
</cfif>
<!---End Human Services--->

<!---Start Human and Civil Rights--->
<cfif #getAns.humanCivilRights# eq 1>
	<cfquery name = "update_HumanRights" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Human and Civil Rights';  
	</cfquery>

	<!---Advocacy--->
	<cfif #getAns.advocacyAndEducation# eq 1>
		<cfquery name="insert_Advocacy" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Advocacy and Education'
			OR charitysubType2 = 'Advocacy and Education'
			OR charitysubType3 = 'Advocacy and Education'; 
		</cfquery>
	</cfif>

</cfif>
<!---End Human and Civil Rights--->

<!---Start International--->
<cfif #getAns.international# eq 1>
	<cfquery name = "update_International" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'International';  
	</cfquery>

	<!---Development and Relief Services--->
	<cfif #getAns.developmentAndRelief# eq 1>
		<cfquery name="insert_DevelopmentRelief" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Development and Relief'
			OR charitysubType2 = 'Development and Relief'
			OR charitysubType3 = 'Development and Relief'; 
		</cfquery>
	</cfif>

	<!---Humanitarian Relief Supplies--->
	<cfif #getAns.humanitarianRelief# eq 1>
		<cfquery name="insert_humanitarian" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Humanitarian Relief Services'
			OR charitysubType2 = 'Humanitarian Relief Services'
			OR charitysubType3 = 'Humanitarian Relief Services'; 
		</cfquery>
	</cfif>

	<!---Internationl Peace, Security and Affairs--->
	<cfif #getAns.internationalPeaceAffairs# eq 1>
		<cfquery name="insert_internationalPeace" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'International Peace'
			OR charitysubType2 = 'International Peace'
			OR charitysubType3 = 'International Peace'; 
		</cfquery>
	</cfif>
</cfif>
<!---End International--->

<!---Start Religion--->
<cfif #getAns.religion# eq 1>
	<cfquery name = "update_Religion" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Religion';  
	</cfquery>

	<!---Religious Activities--->
	<cfif #getAns.religiousActivities# eq 1>
		<cfquery name="insert_ReligiousActivities" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Religious Activities'
			OR charitysubType2 = 'Religious Activities'
			OR charitysubType3 = 'Religious Activities'; 
		</cfquery>
	</cfif>

	<!---Religious Media--->
	<cfif #getAns.religiousMedia# eq 1>
		<cfquery name="insert_ReligiousMedia" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Religious Media'
			OR charitysubType2 = 'Religious Media'
			OR charitysubType3 = 'Religious Media'; 
		</cfquery>
	</cfif>


</cfif>
<!---End Religion--->

<!---Start Research and Public Policy--->
<cfif #getAns.researchAndPublicPolicy# eq 1>
	<cfquery name = "update_ResearchPublic" datasource="charityapp">
		UPDATE `c25_yougive`.`#getAns.questionaireID#`
		SET score = score + 1
		WHERE charityType = 'Research and Public Policy';  
	</cfquery>

	<!---NonMedical Science Research--->
	<cfif #getAns.nonMedicalResearch# eq 1>
		<cfquery name="insert_nonMedical" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'NonMedical Research'
			OR charitysubType2 = 'NonMedical Research'
			OR charitysubType3 = 'NonMedical Research'; 
		</cfquery>
	</cfif>

	<!---Social and Public Policy Research--->
	<cfif #getAns.publicPolicyResearch# eq 1>
		<cfquery name="insert_publicPolicyResearch" datasource="charityapp">
			UPDATE `c25_yougive`.`#getAns.questionaireID#`
			SET score = score + 1
			WHERE charitysubType1 = 'Social and Public Policy Research'
			OR charitysubType2 = 'Social and Public Policy Research'
			OR charitysubType3 = 'Social and Public Policy Research'; 
		</cfquery>
	</cfif>

</cfif>
<!---End Research and Public Policy--->
<cfoutput>
	<cflocation url="questionaire_step3.cfm?ID=#form.questionaireID#">
</cfoutput>
