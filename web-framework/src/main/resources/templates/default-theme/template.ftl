<#macro page title>

	<#import "header.ftl" as header/>
	<@header.page title="${title?html}">
	</@header.page>
	
<!-- page content -->
    <#nested/>
    
    <#import "footer.ftl" as footer/>
	<@footer.page>
	</@footer.page>
	
</#macro>