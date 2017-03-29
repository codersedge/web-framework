<#import "../includes/template.ftl" as template/>
<@template.page title="Profile">

<section id="profile">
    <header class="clearfix">
    	<h1 class="page-title float-xs-left">Profile</h1>
    </header>
    <div class="row">
        <div class="col-sm-12 col-md-6 col-lg-3">
        	<p>E-mail: ${user.email}</p>
			<p>Role: ${user.role}</p>
        </div>
    </div>
    
</section>

</@template.page>