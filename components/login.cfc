<cfcomponent>
    <cffunction  name="getlogin" access="remote">
        <cfargument name="username" type="any" default="#form.uname#">
        <cfargument name="password" type="any" default="#form.password#">
        <cfquery name="addlogin">
            SELECT UserName, Password
            FROM register
            WHERE UserName = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
            AND Password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfset session.uname = addlogin.UserName>
        <cfset session.pwsd = addlogin.Password>
        <cfif addlogin.recordcount>
            <cfset session.userflag = 1>
            <cflocation  url="main.cfm" addtoken="No">
        <cfelse>
            <cflocation  url="login.cfm" addtoken="No">
            <cfreturn "Invalid Username or Password!!">
            <cfset structClear(session)>
        </cfif>
    </cffunction>
</cfcomponent>