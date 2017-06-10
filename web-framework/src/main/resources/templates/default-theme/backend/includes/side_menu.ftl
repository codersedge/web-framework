<#macro page>
<!-- side menu -->
<section id="side-menu">
        <aside>
            <nav class="nav nav-pills nav-stacked" id="side-menu-nav">
                <div class="input-group search">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button class="btn btn-outline-success" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
                
                <div id="side-menu-nav-accordion">
                    <div class="card">
                        <a class="nav-link" data-toggle="collapse" data-parent="#side-menu-nav-accordion" href="#collapsePanel" aria-expanded="true">
                        <i class="fa fa-desktop" aria-hidden="true"></i><span>Panel</span></a>
                        <div class="collapse in" id="collapsePanel">
                            <a class="nav-link active" href="/backend"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Dashboard</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Statistics</span></a>
                        </div>
                    </div>
                    <div class="card">
                        <a class="nav-link" data-toggle="collapse" data-parent="#side-menu-nav-accordion" href="#collapseClassifieds" aria-expanded="false">
                        <i class="fa fa-tags" aria-hidden="true"></i><span>Classifieds</span></a>
                        <div class="collapse" id="collapseClassifieds">
                            <a class="nav-link" href="advertisements.html"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i><span>Advertisements</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Moderation</span></a>
                            <a class="nav-link" href="categories.html"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Categories</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Locations</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Orders</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Coupons</span></a>
                        </div>
                    </div>
                    <#if currentUser?? && currentUser.role == "ADMIN">
                    <div class="card">
                        <a class="nav-link" data-toggle="collapse" data-parent="#side-menu-nav-accordion" href="#collapseUsers" aria-expanded="false">
                        <i class="fa fa-users" aria-hidden="true"></i><span>Users</span></a>
                        <div id="collapseUsers" class="collapse">
                            <a class="nav-link" href="/backend/user"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i><span>Users</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Roles</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>User black list</span></a>
                        </div>
                    </div>
                    </#if>
                    <div class="card">
                        <a class="nav-link" data-toggle="collapse" data-parent="#side-menu-nav-accordion" href="#collapseContents" aria-expanded="false">
                        <i class="fa fa-file-text" aria-hidden="true"></i><span>Contents</span></a>
                        <div id="collapseContents" class="collapse">
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i><span>Pages</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Email</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Newsletters</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Interactive Map</span></a>
                        </div>
                    </div>
                    <div class="card">
                        <a class="nav-link" data-toggle="collapse" data-parent="#side-menu-nav-accordion" href="#collapseSettings" aria-expanded="false">
                        <i class="fa fa-cogs" aria-hidden="true"></i><span>Settings</span></a>
                        <div id="collapseSettings" class="collapse">
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i><span>General</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Advertisement</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Email setting</span></a>
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true" style="visibility:hidden"></i>
                            <span>Payment</span></a>
                        </div>
                    </div>
                </div>
                
                
            </nav>
        </aside>
    </section>
    
</#macro>