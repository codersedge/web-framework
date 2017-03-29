<#macro page title>

	<#import "header.ftl" as header/>
	<@header.page title="${title?html}">
	</@header.page>
	
	<#import "navigation.ftl" as navigation/>
	<@navigation.page>
	</@navigation.page>
	
	<#import "side_menu.ftl" as sideMenu/>
	<@sideMenu.page>
	</@sideMenu.page>
	
<!-- page content -->
<section id="page">

	<header class="clearfix">
	    <nav class="breadcrumb">
	        <a class="breadcrumb-item" href="#">Classified</a>
	        <span class="breadcrumb-item active">${title?html}</span>
	    </nav>
	</header>
        
    <#nested/>
    
</section>
    
    <#import "footer.ftl" as footer/>
	<@footer.page>
	</@footer.page>
	
</#macro>