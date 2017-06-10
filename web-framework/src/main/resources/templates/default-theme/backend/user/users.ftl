<#import "../includes/template.ftl" as template/>
<@template.page title="Users">

<section id="user">
    <header class="clearfix">
    	<h1 class="page-title float-xs-left">Users</h1>
    	<a class="btn btn-outline-primary btn-sm" href="/backend/user/create" role="button">Add New</a>
        <form class="form-inline float-xs-right" action="#">
            <div class="input-group">
		      <input type="text" class="form-control form-control-sm" placeholder="Search for...">
		      <span class="input-group-btn">
		        <button class="btn btn-secondary btn-sm" type="submit">
		        	<i class="fa fa-search" aria-hidden="true"></i>
		        </button>
		      </span>
		    </div>
        </form>
    </header>
    
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs float-xs-left">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">All users</a>
                        </li>
                        <#list roles as role>
                        <li class="nav-item">
                            <a class="nav-link" href="#">${role}</a>
                        </li>
                        </#list>
                    </ul>
                </div>
                <div class="card-block">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>
                                <div class="checkbox check-success">
                                    <input type="checkbox" id="select-all">
                                    <label for="select-all"></label>
                                </div>
                            </th>
                            <th>#</th>
                            <th>Name</th>
                            <th class="hidden-sm hidden-xs">Email</th>
                            <th class="hidden-sm hidden-xs">Role</th>
                            <th class="hidden-xs">Status</th>
                            <th class="hidden-sm hidden-xs">Option</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list users as user>
                        <tr>
                            <td>
                                <div class="checkbox check-success">
                                    <input value="3" type="checkbox" id="ad_3">
                                    <label for="ad_3"></label>
                                </div>
                            </td>
                            <td>${user.id}</td>
                            <td><a href="/backend/user/${user.id}">Name</a></td>
                            <td><a href="/backend/user/${user.id}">${user.email}</a></td>
                            <td class="hidden-sm hidden-xs">${user.role}</td>
                            <td class="hidden-xs">Active</td>
                            <td class="hidden-sm hidden-xs">
                            	<a class="btn btn-default btn-sm float-xs-left" href="/backend/user/${user.id}" role="button">
                            		<i class="fa fa-eye" aria-hidden="true"></i>
                            	</a>
                            	<a class="btn btn-default btn-sm float-xs-left" href="/backend/user/${user.id}/update" role="button">
                            		<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                            	</a>
                            	<form class="form-inline float-xs-left" role="form" action="/backend/user/${user.id}/delete" method="post">
						            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						            <button type="submit" class="btn btn-outline-danger btn-sm">
						            	<i class="fa fa-trash-o" aria-hidden="true"></i>
						            </button>
						        </form>
                            	
                            </td>
                        </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

</@template.page>