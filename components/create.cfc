<cfcomponent>   
    <cffunction  name="getcontact" access="remote">
        <cfargument name="title" type="any" default="#form.createtitle#">
        <cfargument name="firstname" type="any" default="#form.createfirst#">
        <cfargument name="lastname" type="any" default="#form.createlast#">
        <cfargument name="gender" type="any" default="#form.creategender#">
        <cfargument name="date" type="any" default="#form.createdate#">
        <cfargument name="address" type="any" default="#form.createaddress#">
        <cfargument name="street" type="any" default="#form.createstreet#">
        <cfargument name="city" type="any" default="#form.createcity#">
        <cfargument name="state" type="any" default="#form.createstate#">
        <cfargument name="number" type="any" default="#form.createnumber#">
        <cfargument name="mobile" type="any" default="#form.createmobile#">
        <cfquery name="validate">
            SELECT Email
            FROM contactDtls
            WHERE Email = <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">
        </cfquery>

        <cfif validate.recordcount eq 0>
            <cfquery name="contact">
                INSERT INTO contactDtls(Title,FirstName,LastName,Gender,DateOfBirth,Address,Street,City,State,Email,MobileNumber)
                VALUES (
                    <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.date#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.address#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.street#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.state#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.mobile#" cfsqltype="cf_sql_varchar">
                );
            </cfquery>
        <cfelse>
            <cfreturn "This record is already exists!">
        </cfif>
    </cffunction>
</cfcomponent>