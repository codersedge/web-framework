<#import "../includes/template.ftl" as template/>
<@template.page title="Users">

<section id="user">
    <header class="clearfix">
    	<h1 class="page-title float-xs-left">Users</h1>
    	<a class="btn btn-outline-primary btn-sm" href="/backend/user/create" role="button">Add New</a>
        <form class="form-inline float-xs-right">
            <input class="form-control form-control-sm" type="text" placeholder="Search">
            <div class="btn-group">
                <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Filter
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <button class="dropdown-item" type="button">Email</button>
                    <button class="dropdown-item" type="button">Role</button>
                </div>
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
                        <li class="nav-item">
                            <a class="nav-link" href="#">Administrator</a>
                        </li>
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
                            <th class="hidden-sm hidden-xs">Created</th>
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
                            <td class="hidden-sm hidden-xs">15-10-16</td>
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