<cftry>
<cfparam name = "Session.UserName" default="">
<cfparam name = "Session.Password" default="">
<cfparam name = "Session.userID" default="">
<cfparam name = "Session.Email" default="">
<cfparam name = "referenceName" default=""> 

 <cfset cfcObject = createObject("component", "cfc.components")>
<cfset auth = cfcObject.authenticate('#Session.UserName#', '#Session.Password#')>

<cfset Session.Email = "#auth.userEmail#">

<cfif #auth.userFirstname# neq ''>
	<cfset referenceName = #auth.userFirstname#>
<cfelse>
	<cfset referenceName = #Session.Username#>
</cfif>



<cfquery name="getDonations" datasource="charityApp">
    SELECT *, count(*) as cnt, SUM(donation1_amount) AS total,  COUNT(charityid) AS ctotal
    FROM `users_donationHistory`
    WHERE userID = '#Session.userID#'
    AND donationStatus = '1';
</cfquery>

<cfquery name="getDonationList" datasource="charityApp">
    SELECT *
    FROM `users_donationHistory`
    WHERE userID = '#Session.userID#'
    AND donationStatus = '1';
</cfquery>

<cfquery name="getDonationsYTD" datasource="charityApp">
    SELECT *, count(*) as cnt
    FROM `users_donationHistory`
    WHERE userID = '#Session.userID#'
    AND LEFT(donation1_date, 4) = LEFT(CURRENT_DATE, 4)
    AND donationStatus = '1'
</cfquery>

<cfquery name="getPlannedDonations" datasource="charityApp">
    SELECT *, count(*) as cnt, SUM(donation1_amount) AS total,  COUNT(charityid) AS ctotal
    FROM `users_donationHistory`
    WHERE userID = '#Session.userID#'
    AND donationStatus = '0';
</cfquery>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Profile</title>
    <link rel="shortcut icon" type="image/png" href="../assets/images/cmIcon.png"/>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" type="text/css" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
       

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap" style="height: 5vh;">
                            <div class="header-button">
 				                    <a href="../../../homepage.cfm"> <img  src="../assets/images/logo.png"> </a>

                                <div class="noti-wrap" style="margin-left: 74vw;">
                                    
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                      <!---  <div class="image">
                                            <img src="images/icon/avatar-02.jpg" alt="John Doe" />
                                        </div>--->
                                        <div class="content">
                                            <cfoutput><a class="js-acc-btn" href=""  style="color: white;">#referenceName#</a></cfoutput>
                                        </div>
                                        <div class="account-dropdown js-dropdown" style="width: 75%;">
                                            <div class="info clearfix">
                                                <!---<div class="image">
                                                    <a href="">
                                                        <img src="images/icon/avatar-02.jpg" alt="John Doe" />
                                                    </a>
                                                </div>--->
                                                <div class="content">
                                                    <h5 class="name">
                                                        <cfoutput><a href="">#referenceName#</a>
                                                    </h5>
                                                    <span class="email">#Session.Email#</span></cfoutput>
                                                </div>
                                            </div>
                                           
                                            <div class="account-dropdown__footer">
                                                <a href="../../../logoutAction.cfm">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->
<cfoutput>
            <!-- MAIN CONTENT-->
            <div class="main-content" style="left: 0;">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>#getDonations.ctotal#</h2>
                                                <span>charities helped</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-badge-check"></i>
                                            </div>
                                            <div class="text">
                                                <h2>#getDonations.cnt#</h2>
                                                <span>donations made</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-calendar-note"></i>
                                            </div>
                                            <div class="text">
                                                <h2>#getDonationsYTD.cnt#</h2>
                                                <span>donations this year</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-money"></i>
                                            </div>
                                            <div class="text">
                                                <h2>$#getDonations.total#</h2>
                                                <span>total donated</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                        <div class="row" style="width: 150vw;">
                            <div class="col-lg-6">
                                <h2 class="title-1 m-b-25">Giving History</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>date</th>
                                                <th>charity name</th>
                                                <th class="text-right">donation amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <cfloop query="getDonationList">
                                                <cfquery name = "getCharityName" datasource="charityApp">
                                                    SELECT *
                                                    FROM `charity`
                                                    WHERE charityID = '#getDonationList.charityID#';
                                                </cfquery>
                                            <tr>
                                                <td>#getDonationList.donation1_date#</td>
                                                <td>#getCharityName.charityName#</td>
                                                <td class="text-right">$#getDonationList.donation1_amount#</td>
                                            </tr>
                                            </cfloop>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                              <!---    <div class="col-lg-6" style="margin-top: 6vh;">

                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                    <div class="au-card-title" style="background-image:url('images/bg-title-01.jpg');">
                                        <div class="bg-overlay bg-overlay--blue"></div>
                                        <h3>
                                            <i class="zmdi zmdi-account-calendar"></i>Planned Donations</h3>
                                        	<button class="au-btn-plus" href="plannedDonation.cfm">
                                            <i class="zmdi zmdi-plus"></i>
                                        </button>
                                    </div>
                                    <div class="au-task js-list-load">
                                        <div class="au-task__title">
                                            <cfoutput><p>Recurring Donations for #referenceName#</p></cfoutput>
                                        </div>
                                       <cfloop query="getPlannedDonations"> 
						 <cfquery name = "getPlannedCharityName" datasource="charityApp">
                                                    SELECT *
                                                    FROM `charity`
                                                    WHERE charityID = '#getDonations.charityID#';
                                                </cfquery>

					<cfoutput><div class="au-task-list js-scrollbar3">
                                            <div class="au-task__item">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="">#getPlannedCharityName.charityName# - $#getPlannedDonations.donation1_amount#</a>
                                                    </h5>
                                                    <span class="time">#DateFormat(getPlannedDonations.donation1_date, 'mm/dd/yyyy')#</span>
                                                </div>
                                            </div></cfoutput>
					</cfloop>
                                            
                                           
                                        </div>
                                        <div class="au-task__footer">
                                            <button class="au-btn au-btn-load js-load-btn">load more</button>
                                        </div>
                                    </div>
                                </div>
                            </div>--->
                            </div>
                        
                 
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
            </cfoutput>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
<cfcatch type="any">
	<script> alert("An error occured, please try again.");</script>
	<cflocation url = "../index.cfm">
</cfcatch>
</cftry>
