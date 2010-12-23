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
				<mango:Archive pageSize="10">
					<mango:ArchiveProperty ifIsType="category"><h2 class="archive_head">Entries Tagged as <span class="green"><mango:ArchiveProperty title /></span></h2></mango:ArchiveProperty>
					<mango:ArchiveProperty ifIsType="month"><h2 class="archive_head">Entries for month: <span class="green"><mango:ArchiveProperty title dateformat="mmmm yyyy"  /></span></h2></mango:ArchiveProperty>
					<mango:ArchiveProperty ifIsType="day"><h2 class="archive_head">Entries for day: <span class="green"><mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></span></h2></mango:ArchiveProperty>
					<mango:ArchiveProperty ifIsType="year"><h2 class="archive_head">Entries for year: <span class="green"><mango:ArchiveProperty title dateformat="yyyy" /></span></h2></mango:ArchiveProperty>
					<mango:ArchiveProperty ifIsType="search"><h2 class="archive_head">Search Results for <span class="green"><mango:ArchiveProperty title format="escapedHtml" /></span></h2></mango:ArchiveProperty>
					<mango:ArchiveProperty ifIsType="author"><h2 class="archive_head">Entries by '<mango:ArchiveProperty title />'</h2></mango:ArchiveProperty>
					<mango:ArchiveProperty ifIsType="unknown"><h2 class="archive_head">No archives</h2></mango:ArchiveProperty>
<cfscript>			
						/**
* Removes HTML from the string.
* v2 - Mod by Steve Bryant to find trailing, half done HTML. 
* v4 mod by James Moberg - empties out script/style blocks
* 
* @param string      String to be modified. (Required)
* @return Returns a string. 
* @author Raymond Camden (ray@camdenfamily.com) 
* @version 4, October 4, 2010 
*/
function stripHTML(str) {
    str = reReplaceNoCase(str, "<*style.*?>(.*?)</style>","","all");
    str = reReplaceNoCase(str, "<*script.*?>(.*?)</script>","","all");

    str = reReplaceNoCase(str, "<.*?>","","all");
    //get partial html in front
    str = reReplaceNoCase(str, "^.*?>","");
    //get partial html at end
    str = reReplaceNoCase(str, "<.*$","");
    return trim(str);
}
</cfscript>		
									
					<div>
			<mango:Posts count="0">
				<mango:Post>
				<cfsavecontent variable="body_count"><mango:PostProperty body /></cfsavecontent>
				<cfset body_count = stripHTML(body_count) />
				<cfsavecontent variable="title_count"><mango:PostProperty title /></cfsavecontent>
					<div class="postBox <mango:Post ifCurrentIsEven>lastBox</mango:Post> <mango:Post ifCurrentIsLast>lastBox</mango:Post>">
						<div class="postBoxInner">
							<img src="<mango:Blog skinurl />assets/images/nothumb.jpg"  alt="No Thumbnail"/>					
							<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><cfoutput>#left(title_count,25)#<cfif len(title_count) GT 25>...</cfif></cfoutput></a></h2>
							<div class="excerpt">
								<cfoutput>#left(body_count,125)#</cfoutput>
								<div class="meta"> <mango:PostProperty date dateformat="mmmm dd, yyyy" /> &nbsp;&nbsp;&nbsp;<img src="<mango:Blog skinurl />assets/images/ico_post_comments.png" alt="" /> 
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

</body>

</html>