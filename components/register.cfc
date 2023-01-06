<cfcomponent>
    <cffunction name="getRegister" access="remote">
        <cfargument name="fullname" type="any" default="#form.fname#">
        <cfargument name="mail" type="any" default="#form.mail#">
        <cfargument name="uname" type="any" default="#form.uname#">
        <cfargument name="pswd" type="any" default="#form.password#">
        <cfargument name="conpswd" type="any" default="#form.conpswd#">
        <cfquery name="register">
            INSERT INTO register 
            VALUES (
                <cfqueryparam value="#arguments.fullname#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.mail#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.uname#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.pswd#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.conpswd#" cfsqltype="cf_sql_varchar">
            );
        </cfquery>
    </cffunction>

    <cffunction name="getName" access="remote" returnType="query">
        <cfquery name="userRegister">
            SELECT FullName
            FROM register;
        </cfquery>
        <cfreturn userRegister>
    </cffunction>

    <cffunction  name="getcontact" access="remote">
        <cfargument  name="title" type="any" default="#form.title#">
        <cfargument  name="firstname" type="any" default="#form.firstname#">
        <cfargument  name="lastname" type="any" default="#form.lastname#">
        <cfargument  name="gender" type="any" default="#form.gender#">
        <cfargument  name="date" type="any" default="#form.date#">
        <cfargument  name="address" type="any" default="#form.address#">
        <cfargument  name="street" type="any" default="#form.street#">
        <cfargument  name="city" type="any" default="#form.city#">
        <cfargument  name="state" type="any" default="#form.state#">
        <cfargument  name="number" type="any" default="#form.number#">
        <cfargument  name="mobile" type="any" default="#form.mobile#">
        <cfquery name="validate">
            SELECT Email
            FROM contactDtls
            WHERE Email = <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif validate.recordcount eq 0>
            <cfquery name="contact">
                INSERT INTO contactDtls
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
                )
            </cfquery>
        <cfelse>
            <cfreturn "This record is already exists!">
        </cfif>
    </cffunction>

    <cffunction  name="getinsert" access="remote">
        <cfquery name="tableQuery">
            SELECT *
            FROM contactDtls;
        </cfquery>
        <cfreturn tableQuery>
    </cffunction>

    <cffunction  name="getData" access="remote" returnType="query">
        <cfquery name="aboutQuery">
            SELECT *
            FROM contactDtls
            WHERE FirstName = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif aboutQuery.recordcount neq 0>
            <cfif aboutQuery.FirstName eq arguments.name>
                <cfreturn aboutQuery>
            </cfif>
        <cfelse>
            <cfreturn "Already Exists!">
        </cfif>
    </cffunction>
</cfcomponent>