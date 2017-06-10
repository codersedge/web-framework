<#import "../includes/template.ftl" as template/>
<@template.page title="Add New User">
<#import "/spring.ftl" as spring>

<section id="create_user">
    <header class="clearfix">
    	<h1 class="page-title float-xs-left">Add New User</h1>
    </header>    
    
    <form role="form" name="form" action="" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div class="form-group row">
        <label for="email" class="col-md-2 col-form-label">Email address</label>
        <div class="col-md-10">
        	<input class="form-control" type="email" name="email" id="email" value="${userCreateForm.email}" required autofocus/>
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
	        	<#list roles as role>
		            <option <#if userCreateForm.role == role>selected</#if>>${role}</option>
				</#list>
	        </select>
        </div>
    </div>
    <button class="btn btn-primary type="submit">Save</button>
    <a class="btn btn-secondary" href="/backend/user" role="button">Cancel</a>
</form>

<@spring.bind "userCreateForm" />
<#if spring.status.error>
<ul>
    <#list spring.status.errorMessages as error>
        <li>${error}</li>
    </#list>
</ul>
</#if>
    
    

    
</section>

</@template.page>