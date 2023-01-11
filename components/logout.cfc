<cfcomponent>
    <cffunction name="getlogout" access="remote">
        <cfif structKeyExists(form,"submit")>
            <cfset StructClear(Session)>
            <cflocation url="login.cfm" addtoken="No">
        </cfif>
    </cffunction>
</cfcomponent>