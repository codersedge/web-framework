<#macro page>
<!-- navigation bar-->
<nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"></button>
        <div class="collapse navbar-toggleable-md" id="navbarResponsive">
            <a class="navbar-brand" href="/backend">
                <img src="/assets/images/logo2.png" width="30" height="30" class="d-inline-block align-top" alt="">
                FaveoAds
            </a>
            
            <#if currentUser??>
	    
            <ul class="nav navbar-nav float-lg-right">
                <li class="nav-item active">
                    <a class="nav-link" href="#"> <i class="fa fa-heart" aria-hidden="true"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/backend/user/profile">Admin <i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                </li>
                <li class="nav-item">
                	<form action="/logout" method="post" id="logout_form">
		                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		                <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('logout_form').submit(); return false;">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
		            </form>
                    
                </li>
            </ul>
            </#if>
        </div>
    </nav>
    
</#macro>