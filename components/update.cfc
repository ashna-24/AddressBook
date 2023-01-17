<cfcomponent>
    <cffunction name="getUpdate" access="remote" returnType="struct" returnFormat="json">
        <cfargument name="contactid" type="numeric" required="yes">
        <cfargument name="title" type="string" required="yes">
        <cfargument name="firstname" type="string" required="yes">
        <cfargument name="Lastname" type="string" required="yes">
        <cfargument name="gender" type="string" required="yes">
        <cfargument name="dob" type="string" required="yes">
        <cfargument name="file" type="string" required="yes">
        <cfargument name="address" type="string" required="yes">
        <cfargument name="street" type="string" required="yes">
        <cfargument name="city" type="string" required="yes">
        <cfargument name="state" type="string" required="yes">
        <cfargument name="mail" type="string" required="yes">
        <cfargument name="phone" type="string" required="yes">
        <cfquery name="updateQuery">
            UPDATE contactDtls
            SET 
                Title = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                FirstName = <cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
                LastName = <cfqueryparam value="#arguments.Lastname#" cfsqltype="cf_sql_varchar">,
                Gender =  <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
                DateOfBirth = <cfqueryparam value="#arguments.dob#" cfsqltype="cf_sql_varchar">,
                FileUpload = <cfqueryparam value="#arguments.file#" cfsqltype="cf_sql_varchar">,
                Address = <cfqueryparam value="#arguments.address#" cfsqltype="cf_sql_varchar">,
                Street = <cfqueryparam value="#arguments.street#" cfsqltype="cf_sql_varchar">,
                City = <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar">,
                State = <cfqueryparam value="#arguments.state#" cfsqltype="cf_sql_varchar">,
                Email = <cfqueryparam value="#arguments.mail#" cfsqltype="cf_sql_varchar">,
                MobileNumber = <cfqueryparam value="#arguments.phone#" cfsqltype="cf_sql_varchar">
            WHERE ID = <cfqueryparam value="#arguments.contactid#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>
</cfcomponent>    