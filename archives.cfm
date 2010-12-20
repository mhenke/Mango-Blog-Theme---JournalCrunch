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
		<div id="content" class="posts">
		<mango:Archive pageSize="10">
		<mango:ArchiveProperty ifIsType="category"><h2 class="archive_head">Entries Tagged as <span class="green"><mango:ArchiveProperty title /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="month"><h2 class="archive_head">Entries for month: <span class="green"><mango:ArchiveProperty title dateformat="mmmm yyyy"  /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="day"><h2 class="archive_head">Entries for day: <span class="green"><mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="year"><h2 class="archive_head">Entries for year: <span class="green"><mango:ArchiveProperty title dateformat="yyyy" /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="search"><h2 class="archive_head">Search Results for <span class="green"><mango:ArchiveProperty title format="escapedHtml" /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="author"><h2 class="archive_head">Entries by '<mango:ArchiveProperty title />'</h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="unknown"><h2 class="archive_head">No archives</h2></mango:ArchiveProperty>
						
		<div>
			<mango:Posts count="10">
				<mango:Post>
					<div class="postBox lastBox">
						<div class="postBoxInner">
							<img src="<mango:Blog skinurl />assets/images/nothumb.jpg"  alt="No Thumbnail"/>					
							<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
							<div class="excerpt">
								<cfoutput>
									<mango:PostProperty body />
								</cfoutput>
								<h4> &middot; By <mango:PostProperty author /> &middot; </h4>
								<div class="meta"> <mango:PostProperty date dateformat="mmmm dd, yyyy" /> &nbsp;&nbsp;&nbsp;<img src="<mango:Blog skinurl />assets/images/ico_post_comments.png" alt="" /> 
									<!---<a href="http://wordpress.site5.net/journalcrunch/?p=10#respond" title="Comment on Create a Cosmic Composition">No Comments</a>--->
									<mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty>
								</div>
							</div>
							<a href="<mango:PostProperty link />" class="readMore">Read More</a>
						</div>
					</div>
				</mango:Post>
			</mango:Posts>
			</div>
		
		<div class="navigation">
			<div class="previous"><mango:ArchiveProperty ifHasNextPage><a href="<mango:ArchiveProperty link pageDifference="1" />">&larr; Previous Entries</a></mango:ArchiveProperty></div>
			<div class="next"><mango:ArchiveProperty ifHasPreviousPage><a href="<mango:ArchiveProperty link pageDifference="-1" />">Next Entries &rarr;</a></mango:ArchiveProperty></div>
		</div>
		</mango:Archive>
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

</body>


</html>