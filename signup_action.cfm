<!---<cftry>--->
<cfparam name="form.username" default="">
<cfparam name="form.password" default="">
<cfparam name="form.confirmpassword" default="">
<cfparam name="form.email" default="">
<cfparam name="dbName" default="users_login">
<cfparam name="hashPass" default="">

<cfif '#form.password#' neq '#form.confirmpassword#'>
	<cflocation url="signup.cfm?status=pwMatchError">
<cfelse>
	<cfquery name="checkUsername" datasource="charityapp">
		SELECT *
		FROM `#dbName#`
		WHERE userName = '#form.username#';
	</cfquery> 
	
	<cfquery name="checkEmail" datasource="charityapp">
		SELECT *
		FROM `#dbName#`
		WHERE userEmail = '#form.email#';
	</cfquery> 


	<cfif #checkUsername.recordcount# gt 0>
		<cflocation url="signup.cfm?status=unTaken">
	<cfelseif #checkEmail.recordcount# gt 0>
		<cflocation url="signup.cfm?status=emTaken">
	<cfelse>
		<cfset hashPass = "#hash(form.password, "SHA-256", "UTF-8")#">
		<cfset Session.Username = '#form.username#'>
		<cfset Session.Password = '#hashPass#'>
		<cfset Session.Email = '#form.email#'>
		<cfset token = createUUID()>
		<cfset onetimecode = "#randRange(10001, 99998)#">
		<cfset onetimeurl = "get.cfm?token=#token#&ot=#onetimecode#">
		<cfquery name="oneTime" datasource="charityapp"> 
			insert into onetimeurls(token, oneTimePW, expired) 
			values(<cfqueryparam cfsqltype="cf_sql_varchar" value="#token#" maxlength="35">, 
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#onetimecode#" maxlength="5">,
				<cfqueryparam cfsqltype="cf_sql_int" value="0" maxlength="1">) 
		</cfquery>
		
		<!---<cfoutput><cfmail from = "yougive@ybordinary.com" to = "#form.email#" subject="Confirm CharityMatch Sign Up" server="mail.ioio.com" type="html">
			Your one time password: #onetimecode#
		</cfmail></cfoutput>--->


		<cfoutput><cfmail from = "yougive@ybordinary.com" to = "#form.email#" subject="Confirm CharityMatch Sign Up" server="172.16.5.15" type="html">
<html>

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <style type="text/css">
        @media screen {
            @font-face {
                font-family: 'Lato';
                font-style: normal;
                font-weight: 400;
            }

        /* CLIENT-SPECIFIC STYLES */
        body,
        table,
        td,
        a {
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }

        table,
        td {
            mso-table-lspace: 0pt;
            mso-table-rspace: 0pt;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        /* RESET STYLES */
        img {
            border: 0;
            height: auto;
            line-height: 100%;
            outline: none;
            text-decoration: none;
        }

        table {
            border-collapse: collapse !important;
        }

        body {
            height: 100% !important;
            margin: 0 !important;
            padding: 0 !important;
            width: 100% !important;
        }

    </style>
</head>

<body style="background-color: ##f4f4f4; margin: 0 !important; padding: 0 !important;">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <!-- LOGO -->
        <tr>
            <td bgcolor="##6610f2" align="center">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
                    <tr>
                        <td align="center" valign="top" style="padding: 40px 10px 40px 10px;"> </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td bgcolor="##6610f2" align="center" style="padding: 0px 10px 0px 10px;">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
                    <tr>
                        <td bgcolor="##ffffff" align="center" valign="top" style="padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: ##111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;">
                            <h1 style="font-size: 48px; font-weight: 400; margin: 2;">Thank you for joining Charity Match!</h1> <img src="yougive.ybordinary.com/assets/images/logo_cropped.png" width="200" height="200" style="display: block; border: 0px;" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td bgcolor="##f4f4f4" align="center" style="padding: 0px 10px 0px 10px;">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
                    <tr>
                        <td bgcolor="##ffffff" align="left" style="padding: 20px 30px 40px 30px; color: ##666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
                            <p style="margin: 0;">We're excited to have you get started. First, you need to confirm your account. Click the button below to verify that this email address belongs to you.</p>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="##ffffff" align="left">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td bgcolor="##ffffff" align="center" style="padding: 20px 30px 60px 30px;">
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td align="center" style="border-radius: 3px;" bgcolor="##6610f2"><a href="yougive.ybordinary.com/#onetimeurl#" target="_blank" style="font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: ##ffffff; text-decoration: none; color: ##ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid ##6610f2; display: inline-block;">Confirm Account</a></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr> <!-- COPY -->
                    <tr>
                        <td bgcolor="##ffffff" align="left" style="padding: 0px 30px 0px 30px; color: ##666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
                            <p style="margin: 0;">If this wasn't you, someone may have mistyped their email address. No other action is needed at this time.</p>
                        </td>
                    </tr> <!-- COPY -->
                    <tr>
                        <td bgcolor="##ffffff" align="left" style="padding: 20px 30px 20px 30px; color: ##666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
                                                   </td>
                    </tr>
                    <tr>
                        <td bgcolor="##ffffff" align="left" style="padding: 0px 30px 20px 30px; color: ##666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
                            <p style="margin: 0;">If you have any questions, just reply to this email we're always happy to help out.</p>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="##ffffff" align="left" style="padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: ##666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
                            <p style="margin: 0;"><br>The Charity Match Team</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td bgcolor="##f4f4f4" align="center" style="padding: 30px 10px 0px 10px;">
            </td>
        </tr>
    </table>
</body>

</html>		
</cfmail></cfoutput>
		<cflocation url="checkEmail.cfm">
	</cfif>
</cfif>

<!---<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url="signup.cfm">
</cfcatch>
</cftry>--->

