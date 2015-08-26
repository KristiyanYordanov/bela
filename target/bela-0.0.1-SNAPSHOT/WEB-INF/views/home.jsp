<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Scout Automated Adviser</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.css" />
<style>
body, html{
    margin:0;
    padding:0;
    width:100%;
    background-color: #FAFAF7;
}

#cssmenu,#cssmenu ul,#cssmenu ul li,#cssmenu ul li a,#cssmenu #menu-button
	{
	margin: 0;
	padding: 0;
	border: 0;
	list-style: none;
	line-height: 1;
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	z-index: 100;
}

#cssmenu:after,#cssmenu>ul:after {
	content: '.';
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}

#cssmenu #menu-button {
	display: none;
}

#cssmenu {
	width: auto;
	font-family: 'Open Sans', Helvetica, sans-serif;
	background: #39b1cc;
	background: -moz-linear-gradient(top, #51bbd2 0%, #2d97af 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #51bbd2),
		color-stop(100%, #2d97af));
	background: -webkit-linear-gradient(top, #51bbd2 0%, #2d97af 100%);
	background: -o-linear-gradient(top, #51bbd2 0%, #2d97af 100%);
	background: -ms-linear-gradient(top, #51bbd2 0%, #2d97af 100%);
	background: linear-gradient(to bottom, #51bbd2 0%, #2d97af 100%);
}

#cssmenu>ul { //
	background: url('bg.png');
	box-shadow: inset 0 -3px 0 rgba(0, 0, 0, 0.05);
}

#cssmenu>ul>li {
	float: left;
}

#cssmenu>ul>li>a {
	padding: 18px 25px 21px 25px;
	border-right: 1px solid rgba(80, 80, 80, 0.12);
	text-decoration: none;
	font-size: 15px;
	font-weight: 700;
	color: #d3eced;
	text-transform: uppercase;
	letter-spacing: 1px;
}

#cssmenu>ul>li:hover>a,#cssmenu>ul>li>a:hover,#cssmenu>ul>li.active>a {
	color: #ffffff;
	background: #32a9c3;
	background: rgba(0, 0, 0, 0.1);
}

#cssmenu>ul>li.has-sub>a {
	padding-right: 45px;
}

#cssmenu>ul>li.has-sub>a::after {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	border: 6px solid transparent;
	border-top-color: #d3eced;
	right: 17px;
	top: 23px;
}

#cssmenu>ul>li.has-sub.active>a::after,#cssmenu>ul>li.has-sub:hover>a {
	border-top-color: #ffffff;
}

#cssmenu ul ul {
	position: absolute;
	left: -9999px;
	top: 60px;
	padding-top: 6px;
	font-size: 13px;
	opacity: 0;
	-webkit-transition: top 0.2s ease, opacity 0.2s ease-in;
	-moz-transition: top 0.2s ease, opacity 0.2s ease-in;
	-ms-transition: top 0.2s ease, opacity 0.2s ease-in;
	-o-transition: top 0.2s ease, opacity 0.2s ease-in;
	transition: top 0.2s ease, opacity 0.2s ease-in;
}

#cssmenu>ul>li>ul::after {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	border: 5px solid transparent;
	border-bottom-color: #ffffff;
	top: -4px;
	left: 20px;
}

#cssmenu ul ul ul::after {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	border: 5px solid transparent;
	border-right-color: #ffffff;
	top: 11px;
	left: -4px;
}

#cssmenu>ul>li>ul {
	top: 120px;
}

#cssmenu>ul>li:hover>ul {
	top: 54px;
	left: 0;
	opacity: 1;
}

#cssmenu ul ul ul {
	padding-top: 0;
	padding-left: 6px;
}

#cssmenu ul ul>li:hover>ul {
	left: 180px;
	top: 0;
	opacity: 1;
}

#cssmenu ul ul li a {
	text-decoration: none;
	font-weight: 400;
	padding: 11px 25px;
	width: 180px;
	color: #777777;
	background: #ffffff;
	box-shadow: 0 2px 2px rgba(0, 0, 0, 0.1), 1px 1px 1px rgba(0, 0, 0, 0.1),
		-1px 1px 1px rgba(0, 0, 0, 0.1);
}

#cssmenu ul ul li:hover>a,#cssmenu ul ul li.active>a {
	color: #333333;
}

#cssmenu ul ul li:first-child>a {
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
}

#cssmenu ul ul li:last-child>a {
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 3px;
}

#cssmenu>ul>li>ul::after {
	position: absolute;
	display: block;
}

#cssmenu ul ul li.has-sub>a::after {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	border: 4px solid transparent;
	border-left-color: #777777;
	right: 17px;
	top: 14px;
}

#cssmenu ul ul li.has-sub.active>a::after,#cssmenu ul ul li.has-sub:hover>a::after
	{
	border-left-color: #333333;
}

@media all and (max-width: 800px) , only screen and
		(-webkit-min-device-pixel-ratio: 2) and (max-width: 1024px) , only
		screen and (min--moz-device-pixel-ratio: 2) and (max-width: 1024px) ,
		only screen and (-o-min-device-pixel-ratio: 2/1) and (max-width:
		1024px) , only screen and (min-device-pixel-ratio: 2) and (max-width:
		1024px) , only screen and (min-resolution: 192dppx) and (max-width:
		1024px) , only screen and (min-resolution: 2dppx) and (max-width:
	1024px) {
	#cssmenu {
		background: #39b1cc;
	}
	#cssmenu>ul {
		display: none;
	}
	#cssmenu>ul.open {
		display: block;
		border-top: 1px solid rgba(0, 0, 0, 0.1);
	}
	#cssmenu>ul>li {
		float: none;
	}
	#cssmenu>ul>li>a {
		padding: 18px 25px 18px 25px;
		border-right: 0;
	}
	#cssmenu>ul>li:hover>a,#cssmenu>ul>li.active>a {
		background: rgba(0, 0, 0, 0.1);
	}
	#cssmenu #menu-button {
		display: block;
		text-decoration: none;
		font-size: 13px;
		font-weight: 700;
		color: #d3eced;
		padding: 18px 25px 18px 25px;
		text-transform: uppercase;
		letter-spacing: 1px;
		background: url('bg.png');
		cursor: pointer;
	}
	#cssmenu ul ul,#cssmenu ul li:hover>ul,#cssmenu>ul>li>ul,#cssmenu ul ul ul,#cssmenu ul ul li:hover>ul
		{
		left: 0;
		top: auto;
		opacity: 1;
		width: 100%;
		padding: 0;
		position: relative;
	}
	#cssmenu ul ul li {
		width: 100%;
	}
	#cssmenu ul ul li a {
		width: 100%;
		box-shadow: none;
		padding-left: 35px;
	}
	#cssmenu ul ul ul li a {
		padding-left: 45px;
	}
	#cssmenu ul ul li:first-child>a,#cssmenu ul ul li:last-child>a {
		border-radius: 0;
	}
	#cssmenu #menu-button::after {
		display: block;
		content: '';
		position: absolute;
		height: 3px;
		width: 22px;
		border-top: 2px solid #d3eced;
		border-bottom: 2px solid #d3eced;
		right: 25px;
		top: 18px;
	}
	#cssmenu #menu-button::before {
		display: block;
		content: '';
		position: absolute;
		height: 3px;
		width: 22px;
		border-top: 2px solid #d3eced;
		right: 25px;
		top: 28px;
	}
	#cssmenu>ul>li.has-sub>a::after,#cssmenu ul ul li.has-sub>a::after {
		display: none;
	}
}

body {
	background-color: #F3F3F2;
}
</style>
</head>
<body>
	<div id='cssmenu'>
		<ul>
			<li><a href='#' id="load_players"><span>Players</span></a></li>
			<li class='has-sub'><a href='#'><span>Import</span></a>
				<ul>
						<li><a href='#' id="load_csv"><span>CSV Import</span></a></li>
					<li class='last' id="load_schedule"><a href='#'><span>Automated
								Import</span></a></li>
				</ul></li>
			<!-- <li class='has-sub'><a href='#'><span>Criterias</span></a>
				<ul>
					<li><a href='#'><span>Criteria</span></a></li>
					<li class='last'><a href='#'><span>Criteria Report</span></a></li>
				</ul></li> -->
			<li><a href='#' id="load_schools"><span>High Schools</span></a></li>
			<li><a href='/spring-jpa/j_spring_security_logout'><span>Logout</span></a>
			</li>
		</ul>
	</div>

	<div id="content"></div>
</body>
<script type="text/javascript" charset="utf8"
	src="resources/js/jquery-1.10.2.min.js"></script>

<script type="text/javascript">
var applyMapContainerHeight = function() {
	  var height = $(window).height();
	//  $("content").height(height);
	};

	$(window).resize(function() {
	  applyMapContainerHeight();
	});
	
	var cookie_name = "page";
	var page = get_cookie(cookie_name);

	function get_cookie(cookie_name) {
		var res = "";
		try {
			var cookie_string = document.cookie;
			if (cookie_string.length != 0) {
				var cookie_value = cookie_string.match('(^|;)[\s]*'
						+ cookie_name + '=([^;]*)');
				res = decodeURIComponent(cookie_value[2]);
			} else {
				res = "";
			}
		} catch (e) {
			// TODO: handle exception
		}
		return res;
	}

	$(document).ready(function() {
		applyMapContainerHeight();
			var html = 'players/user/players';
			$('#content').load(html);
	});
	
	$("#load_csv").on("click", function() {
		var html = 'players/user/csv';
		$('#content').load(html);
	});
	$("#load_players").on("click", function() {
		var html = 'players/user/players';
		$('#content').load(html);

	});
	$("#load_schedule").on("click", function() {
		var html = 'players/user/schedule';
		$('#content').load(html);
	});
	$("#load_schools").on("click", function() {
		var html = 'schools/schools';
		$('#content').load(html);
	});
</script>
</html>