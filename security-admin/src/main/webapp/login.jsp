<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title> Ranger - Sign In</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">
		
		<link rel="shortcut icon" href="images/favicon.ico">
		<link href="styles/bootstrap.min.css" media="all" rel="stylesheet" type="text/css" id="bootstrap-css">
		<link href="styles/xa.css" media="all" rel="stylesheet" type="text/css" >
                <script src="libs/bower/jquery/js/jquery-3.4.1.js" ></script>
		
		<script src="scripts/prelogin/XAPrelogin.js" ></script>

		<script type="text/javascript">
			$(document).ready(function() {
				var updateBoxPosition = function() {
					$('#signin-container').css({
						'margin-top' : ($(window).height() - $('#signin-container').height()) / 2
					});
				};
				$(window).resize(updateBoxPosition);
				var queryParams = JSON.parse('{"' + decodeURI((location.href.split('?')[1] || 'g=0').replace(/=/g, "\":\"")) + '"}');
              	if(queryParams.sessionTimeout){
                	window.alert('Session Timeout');
                	location.replace("login.jsp");
               	}
				setTimeout(updateBoxPosition, 50);
			});
		</script>

	</head>
	<body class="login" style="">
		<%
			response.setHeader("X-Frame-Options", "DENY");
		%>
		<!-- Page content
		================================================== -->
		<section id="signin-container" style="margin-top: 4.5px;">
			<div class="l-logo">
                                <img src="images/ranger_logo.png" alt="Ranger logo">
			</div>
			<form action="" method="post" accept-charset="utf-8">
				<fieldset>
					<div class="fields">
						<label><i class="icon-user"></i> Username:</label>
						<input type="text" name="username" id="username" tabindex="1" autofocus>
						<label><i class="icon-lock"></i> Password:</label>	
						<input type="password" name="password" id="password" tabindex="2" autocomplete="off">
					</div>
					<span id="errorBox" class="help-inline" style="color:white;display:none;"><span class="errorMsg"></span>
						<i class="icon-warning-sign" style="color:#ae2817;"></i>
					</span>
					<span id="errorBoxUnsynced" class="help-inline" style="color:white;display:none;">User is not available in HDP Admin Tool. Please contact your Administrator.
						<i class="icon-warning-sign" style="color:#ae2817;"></i>
					</span>
					<button type="submit" class="btn btn-primary btn-block" id="signIn" tabindex="4" >
						Sign In
						<i id="signInLoading" class="icon-spinner icon-spin pull-right icon-sign-in"></i>
					</button>
				</fieldset>
			</form>
		</section>

	</body>
</html>