<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Scout Automated Adviser</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
<style>
body {
	background: #e1c192 url(resources/images/wood_pattern.jpg);
}
</style>
</head>
<body onload='document.f.j_username.focus();'>

	<div class="container">
		<header>

		<h1>
			<strong>Scout Automated Adviser</strong>
		</h1>

		<div class="support-note">
			<span class="note-ie">Sorry, only modern browsers.</span>
		</div>

		</header>

		<section class="main"> <c:if
			test="${not empty pageContext.request.queryString}">
			<div class="errorblock">
				<span>Your login attempt was not successful, try again.<br />
					Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
				</span>
			</div>
		</c:if>

		<form class="form-2" name='f'
			action="<c:url value='j_spring_security_check'  />" method='POST'>
			<h1>
				<span class="log-in">Log in</span>
			</h1>
			<p class="float">
				<label for="login"><i class="icon-user"></i>Username</label> <input
					type="text" name="j_username" placeholder="Username or email">
			</p>
			<p class="float">
				<label for="password"><i class="icon-lock"></i>Password</label> <input
					type="password" name="j_password" placeholder="Password"
					class="showpassword">
			</p>
			<p class="clearfix">
				<input type="submit" name="submit" value="Log in">
			</p>
		</form>
		</section>

	</div>

</body>
<script type="text/javascript" charset="utf8"
	src="resources/js/jquery-1.10.2.min.js"></script>
<script src="resources/js/modernizr.custom.63321.js"></script>
<script type="text/javascript">
	$(function() {
		$(".showpassword")
				.each(
						function(index, input) {
							var $input = $(input);
							$("<p class='opt'/>")
									.append(
											$(
													"<input type='checkbox' class='showpasswordcheckbox' id='showPassword' />")
													.click(
															function() {
																var change = $(
																		this)
																		.is(
																				":checked") ? "text"
																		: "password";
																var rep = $(
																		"<input placeholder='Password' type='" + change + "' />")
																		.attr(
																				"id",
																				$input
																						.attr("id"))
																		.attr(
																				"name",
																				$input
																						.attr("name"))
																		.attr(
																				'class',
																				$input
																						.attr('class'))
																		.val(
																				$input
																						.val())
																		.insertBefore(
																				$input);
																$input.remove();
																$input = rep;
															})).append(
											$("<label for='showPassword'/>")
													.text("Show password"))
									.insertAfter($input.parent());
						});

		$('#showPassword').click(function() {
			if ($("#showPassword").is(":checked")) {
				$('.icon-lock').addClass('icon-unlock');
				$('.icon-unlock').removeClass('icon-lock');
			} else {
				$('.icon-unlock').addClass('icon-lock');
				$('.icon-lock').removeClass('icon-unlock');
			}
		});
	});
</script>
</html>