<#import "template.ftl" as template/>
<@template.page title="Home Page">

	<p>You can use: demo@localhost / demo</p>
	
	<div class="container">

      <form class="form-signin" role="form" action="/login" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <label for="email" class="sr-only">Email address</label>
        <input type="email" name="email" id="email" class="form-control" placeholder="Email address" required autofocus>
        <label for="password" class="sr-only">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" name="remember-me" id="remember-me" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
	
	<#if error.isPresent()>
	<p>The email or password you have entered is invalid, try again.</p>
	</#if>

</@template.page>




