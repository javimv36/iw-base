<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>



<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Start Bootstrap - SB Admin Version 2.0 Demo</title>

    <!-- Core CSS - Include with every page -->
    <link href="${s}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${s}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="${s}/css/sb-admin.css" rel="stylesheet">

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                    
                        <form action="/login" method="post">               
					        <fieldset>
					           <div class="form-group">
					            <input class="form-control"  type="text" placeholder="Nick"  id="username" name="username" autofocus/>        
					           </div>
					           <div class="form-group">
					            <input placeholder="Password" class="form-control" type="password" id="password" name="password"/>
					             </div>
					               <div class="checkbox">
					             <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                 </label>
                                 </div>
					            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					            
					            <div class="form-actions">
					                <button type="submit"  class="btn btn-lg btn-success btn-block">Log in</button>
					            </div>
					        </fieldset>
					    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Core Scripts - Include with every page -->
    <script src="${s}/js/jquery-1.10.2.js"></script>
    <script src="${s}/js/bootstrap.min.js"></script>
    <script src="${s}/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="${s}/js/sb-admin.js"></script>

</body>

</html>
