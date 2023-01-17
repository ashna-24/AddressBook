<cfcomponent>
    <cffunction name="getData" access="remote" returnType="struct" returnFormat="json">        
        <cfargument name="Email" type="string" required="yes">
        <cfquery name="aboutQuery">
            SELECT *
            FROM contactDtls
            WHERE FirstName = <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfset local.viewQuery=structNew()>
        <cfset local.viewQuery.FirstName = aboutQuery.FirstName>
        <cfset local.viewQuery.LastName = aboutQuery.LastName>
        <cfset local.viewQuery.Gender = aboutQuery.Gender>
        <cfset local.viewQuery.DOB = aboutQuery.DateOfBirth>
        <cfset local.viewQuery.FileUpload = aboutQuery.FileUpload>
        <cfset local.viewQuery.Address = aboutQuery.Address>
        <cfset local.viewQuery.Street = aboutQuery.Street>
        <cfset local.viewQuery.City = aboutQuery.City>
        <cfset local.viewQuery.State = aboutQuery.State>        
        <cfset local.viewQuery.Email = aboutQuery.Email>        
        <cfset local.viewQuery.MobileNumber = aboutQuery.MOBILENUMBER>        
        <cfreturn local.viewQuery>
    </cffunction>
</cfcomponent>