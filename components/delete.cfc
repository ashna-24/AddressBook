<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete">
			DELETE 
            FROM contactDtls
			WHERE FirstName = <cfqueryparam value="#url.name#" cfsqltype="cf_sql_varchar">
		</cfquery>
		<cflocation url="main.cfm" addtoken="no">
	</cffunction>
</cfcomponent>