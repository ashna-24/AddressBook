<cfcomponent>
    <cffunction  name="getEditdata" access="remote" returnType="struct" returnFormat="json">
        <cfargument name="name" type="string" required="yes">
        <cfquery name="editvalidate">
            SELECT * 
            FROM contactDtls
            WHERE FirstName = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfset local.editvaldt = structNew()>
        <cfset local.editvaldt.id = editvalidate.ID>
        <cfset local.editvaldt.title = editvalidate.Title>
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
</cfcomponent>
