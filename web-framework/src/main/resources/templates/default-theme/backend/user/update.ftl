<#import "../includes/template.ftl" as template/>
<@template.page title="Update User">
<#import "/spring.ftl" as spring>

<section id="update_user">
    <header class="clearfix">
    	<h1 class="page-title float-xs-left">Update User</h1>
    </header>    
    
    <form role="form" name="form" action="" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div class="form-group row">
        <label for="email" class="col-md-2 col-form-label">Email address</label>
        <div class="col-md-10">
        	<input class="form-control" type="email" name="email" id="email" value="${form.email}" required autofocus/>
    	</div>
    </div>
    <div class="form-group row">
        <label for="password" class="col-md-2 col-form-label">Password</label>
        <div class="col-md-10">
        	<input class="form-control" type="password" name="password" id="password" required/>
    	</div>
    </div>
    <div class="form-group row">
        <label for="passwordRepeated" class="col-md-2 col-form-label">Repeat</label>
        <div class="col-md-10">
        	<input class="form-control" type="password" name="passwordRepeated" id="passwordRepeated" required/>
    	</div>
    </div>
    <div class="form-group row">
        <label for="role" class="col-md-2 col-form-label">Role</label>
        <div class="col-md-10">
	        <select class="form-control" name="role" id="role" required>
	            <option <#if form.role == 'USER'>selected</#if>>USER</option>
	            <option <#if form.role == 'ADMIN'>selected</#if>>ADMIN</option>
	        </select>
        </div>
    </div>
    <button class="btn btn-primary type="submit">Save</button>
</form>

<@spring.bind "form" />
<#if spring.status.error>
<ul>
    <#list spring.status.errorMessages as error>
        <li>${error}</li>
    </#list>
</ul>
</#if>
    
    

    
</section>

</@template.page>