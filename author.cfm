<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<mango:Author>
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
			<h2>About <mango:AuthorProperty name /></h2>
			<div class="entry">
			<mango:AuthorProperty description />
			
			<h3>Recent entries by <mango:AuthorProperty name /></h3>
			<ul>
			<mango:Posts count="10">
				<mango:Post>
					<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></li>
				</mango:Post>
				</mango:Posts>
			</ul>
			</div>
			</div>
			<!-- End #colLeft -->
<!-- Begin #colRight -->
	<div id="colRight">
	<cfinclude template="sidebar_mine.cfm" />
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
<script type="text/javascript">Cufon.now(); </script>

<cfinclude template="twittertooltip.cfm" />

<mango:Event name="beforeHtmlBodyEnd" />
</mango:Author>
</body>


</html>