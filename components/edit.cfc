<cfcomponent>
    <cffunction  name="getEditdata" access="remote" returnType="struct" returnFormat="json">
        <cfargument name="name" type="string" required="yes">
        <cfquery name="editvalidate">
            SELECT * 
            FROM contactDtls
            WHERE FirstName = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfset local.editvaldt = structNew()>
        <cfset local.editvaldt.FirstName = editvalidate.FirstName>
        <cfset local.editvaldt.LastName = editvalidate.LastName>
        <cfset local.editvaldt.Gender = editvalidate.Gender>
        <cfset local.editvaldt.DOB = editvalidate.DateOfBirth>
        <cfset local.editvaldt.Address = editvalidate.Address>
        <cfset local.editvaldt.Street = editvalidate.Street>
        <cfset local.editvaldt.City = editvalidate.City>
        <cfset local.editvaldt.State = editvalidate.State>
        <cfset local.editvaldt.Email = editvalidate.Email>
        <cfset local.editvaldt.MobileNumber = editvalidate.MobileNumber>
        <cfreturn editvaldt>
    </cffunction>
        <!--- <cfargument name="Email" type="string" required="yes">
        <cfquery name="validateEdit">
            UPDATE contactDtls
            SET FirstName = <cfqueryparam value="#form.firstname#" cfsqltype="cf_sql_varchar">,
                LastName = <cfqueryparam value="#form.lastname#" cfsqltype="cf_sql_varchar">,
                Gender =  <cfqueryparam value="#form.gender#" cfsqltype="cf_sql_varchar">,
                Address = <cfqueryparam value="#form.address#" cfsqltype="cf_sql_varchar">,
                Street = <cfqueryparam value="#form.street#" cfsqltype="cf_sql_varchar">,
                City = <cfqueryparam value="#form.city#" cfsqltype="cf_sql_varchar">,
                State = <cfqueryparam value="#form.state#" cfsqltype="cf_sql_varchar">,
                Email = <cfqueryparam value="#form.number#" cfsqltype="cf_sql_varchar">,
                MobieNumber = <cfqueryparam value="#form.mobile#" cfsqltype="cf_sql_varchar">
            WHERE Email = <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar">
        </cfquery> --->
</cfcomponent>
