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
		<div id="content" style="position:relative">
			
			<!-- Begin #featuredPosts -->
			<div id="featuredPosts">
				<div class="item ">
				<h1><a href="http://docs.google.com/View?id=dc2sb454_31g2p9gdct" title="Permanent Link to Mylyn - A Task-Oriented Approach to ColdFusion">Mylyn - A Task-Oriented Approach to ColdFusion</a></h1>
			
					<a href="http://docs.google.com/View?id=dc2sb454_31g2p9gdct" title="Permanent Link to Mylyn - A Task-Oriented Approach to ColdFusion">
						<img height="290" width="430" src="http://farm5.static.flickr.com/4076/4899195337_189ef57393.jpg" alt="Mylyn - A Task-Oriented Approach to ColdFusion" />
					</a>
					<p>Most coding at its simplest is change a line here, add a file there, and move on to the next critical task. If you are like me, within a week I remember doing the task but not all the files details. If a similar task is given, I start over again.  Mylyn, a task-focused interface plugin for Eclipse, fixes this memory loss <a href="http://docs.google.com/View?id=dc2sb454_31g2p9gdct" title="Permanent Link to Mylyn - A Task-Oriented Approach to ColdFusion">[...]</a></p>
					<a href="http://docs.google.com/View?id=dc2sb454_31g2p9gdct" class="readMore">Read More</a>
				</div>
				<div class="item lastItem">
					<h1>
					<a href="http://docs.google.com/View?id=dc2sb454_46hr5zqwgs" title="Permanent Link to Turbo Charging Eclipse">Turbo Charging Eclipse</a>
					</h1>
					<a href="http://docs.google.com/View?id=dc2sb454_46hr5zqwgs" title="Permanent Link to Turbo Charging Eclipse">
					<img  height="290" width="430" src="http://farm3.static.flickr.com/2734/4502249172_4752096281.jpg" alt="Turbo Charging Eclipse" />
					</a>
					<p>You made the leap to the Eclipse integrated development environment (IDE), and now you get the benefit of tight integration between the systems you use daily. <a href="http://docs.google.com/View?id=dc2sb454_31g2p9gdct" title="Permanent Link to Mylyn - A Task-Oriented Approach to ColdFusion">[...]</a></p>
					<a href="http://docs.google.com/View?id=dc2sb454_46hr5zqwgs" class="readMore">Read More</a>
				</div>
			</div>
			
			<!-- End #featuredPosts -->
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
			
			<mango:Posts count="6">
				<mango:Post>
				<cfsavecontent variable="body_count"><mango:PostProperty body /></cfsavecontent>
				<cfset body_count = stripHTML(body_count) />
				<cfsavecontent variable="title_count"><mango:PostProperty title /></cfsavecontent>
					<div class="postBox <mango:Post ifCurrentIsThird>lastBox</mango:Post> <mango:Post ifCurrentIsLast>lastBox</mango:Post>">
						<div class="postBoxInner">
							<a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><img src="<mango:Blog skinurl />assets/images/nothumb.jpg"  alt="No Thumbnail"/></a>				
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