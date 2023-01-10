<cfcomponent>
    <cffunction name="getData" access="remote">
        <cfquery name="aboutQuery">
            SELECT *
            FROM contactDtls
            WHERE FirstName = <cfqueryparam value="#session.dataview#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
            <cfreturn aboutQuery>
        <!--- <cfif aboutQuery.FirstName eq session.dataview>
            <!--- <cfdump var="#aboutQuery.FirstName#"> --->
        <!--- <cfif aboutQuery.recordcount eq 0> --->
            <cfset session.viewflag = 1>
       <!---  <cfelse>
            <cflocation  url="main.cfm"> --->
        </cfif> --->
    </cffunction>
</cfcomponent>