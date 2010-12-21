<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Page>
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
		
		<h2><mango:PageProperty title /></h2>
		<p class="breadcrumb"><mangox:PageBreadcrumb /></p>
			<div class="entry"><mango:PageProperty body />
			
			<h3 class="top">by month:</h3>
			<ul><mango:Archives type="month"><mango:Archive>
			<li><a href="<mango:ArchiveProperty link />"><mango:ArchiveProperty title dateformat="mmmm yyyy" /> (<mango:ArchiveProperty postcount />)</a></li>
			</mango:Archive></mango:Archives>
			</ul>
			<h3>by Category:</h3>
			
			<ul>
			<mango:Categories>
				<mango:Category>
				<li><a href="<mango:CategoryProperty rssurl />"><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />">
					<mango:CategoryProperty title /> (<mango:CategoryProperty postcount />)</a> </li>
				</mango:Category>
			</mango:Categories>
			</ul>
			</div>
			<div class="entry-footer entry">
			<mango:Event name="beforePageContentEnd" template="page" mode="full" />
			</div>
			<p class="tagged"><mango:PageProperty ifcommentsallowed><a href="<mango:PageProperty link />#comments" title="Comment on <mango:PageProperty title />"><mango:PageProperty ifCommentCountGT="0"><mango:PageProperty commentCount /> Comment<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty></mango:PageProperty><mango:PageProperty ifCommentCountLT="1">No Comments</mango:PageProperty></a></mango:PageProperty></p>
			<div class="clear"></div>
			<template:comment />
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
<script type="text/javascript">Cufon.now(); </script>

<cfinclude template="twittertooltip.cfm" />

</mango:Page>
</body>


</html>