<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Event name="beforeHtmlHeadEnd" />
	<cfinclude template="htmlhead.cfm" />
	<mango:Event name="beforeHtmlHeadEnd" />
</head>
<body>
<mango:Event name="beforeHtmlBodyStart" />
<!-- Begin #mainWrapper -->
<div id="mainWrapper">
	<!-- Begin #wrapper -->
	<div id="wrapper">
		<!-- Begin #header -->
		<div id="header">
		<cfinclude template="header.cfm" />
		</div>
		<!-- End #header -->
		<!-- Begin #content -->
		<div style="position: relative;" id="content">

<!-- Begin #colleft -->
			<div id="colLeft">
		
		<h2>Login</h2>
		<div class="entry">
			<mango:RequestVar ifExists="errormsg">
				<p class="error"><mango:RequestVar name="errormsg" /></p>
			</mango:RequestVar>
		<cfoutput><form action="<mangox:Environment selfUrl />" method="post" id="login_form"></cfoutput>
	
				<label for="username">Username:</label>
				<p>
				<input name="username" id="username" value="" size="22" type="text" class="text_input">
				</p>
				<p>
				<label for="password">Password:</label><br />
				<input name="password" id="password" value="" size="22" type="password" class="text_input">
				</p>
				<input name="login" class="form_submit" type="submit" id="submit" 
						src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Login" />
			</form>
		
		</div>
	</div>
			<!-- End #colLeft -->
<!-- Begin #colRight -->
	<div id="colRight">
	
		<mangox:PodGroup locationId="sidebar-page" template="page">
	<mangox:TemplatePod id="page-menu" title="Page Menu">
	<template:pageMenu />
	</mangox:TemplatePod>
	<template:sidebar />
</mangox:PodGroup>
		
	</div>
	
<!-- End #colRight -->	
</div>
		<!-- End #content -->
	</div>
	<!-- End #wrapper -->
	<!-- Begin #footer -->
	<div id="footer">
		<mango:Event name="afterFooterStart" />
			<cfinclude template="footer.cfm" />
		<mango:Event name="beforeFooterEnd" />
	</div>

	<!-- End #footer -->
</div>
<!-- End #mainWrapper -->
<<script type="text/javascript">Cufon.now(); </script>

<!-- Header Twitter Tooltip -->
<div class="tooltip">
				<ul id="twitter_tooltip"></ul>
				<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/site5.json?callback=twitterCallback2&amp;count=1"></script>
			</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>


</html>