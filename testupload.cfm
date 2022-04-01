 <form enctype="multipart/form-data" method="post">
                                                <br><br><input type="file" name="fileUpload" />
                                                <input type="submit" value="Upload Photo">
                                            </form>
 <cfparam name="form.fileUpload" default="">

                                            <cfif len(trim(form.fileUpload)) gt 0>
                                           
                                                <cffile action="upload"
                                                    fileField="fileUpload"
                                                    destination="accessGranted/nova/images"
                                                    nameConflict="MakeUnique">

                                                <p>Thank you, your file has been processed.
                                                <cfquery name="input" datasource="charityApp">
        insert into `c25_yougive`.`charity`(charityName, charityAddress, charityCity, charityState, charityZip, charityCountry, charityType, charitysubType1, charitysubType2, charitysubType3, acceptsMonetaryDonation, acceptsItemDonation, acceptsVolunteers, imagePath, website, phone_number)
        values(
        <cfqueryparam value="#CFFile.ClientFile#" CFSQLType="cf_sql_varchar">
         );

    </cfquery>
                                                </cfif>