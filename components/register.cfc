<cfcomponent>
    <cffunction name="getName" access="remote" returnType="query">
        <cfquery name="userRegister">
            SELECT FullName
            FROM register
        </cfquery>
        <cfreturn userRegister>
    </cffunction>

    <cffunction  name="getinsert" access="remote">
        <cfquery name="tableQuery">
            SELECT *
            FROM contactDtls
            ORDER BY FirstName;
        </cfquery>
        <cfreturn tableQuery>
    </cffunction>
</cfcomponent>
