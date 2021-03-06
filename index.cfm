<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<mango:Event name="beforeHtmlHeadEnd" />
	<template:htmlhead />
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
			<template:header/>
			<!--- <script type="text/javascript">
			//$(document).ready(function(){
			$('#switcher').click(function(){
				   //$('#sliderContainer').toggle();
				   var flag = $('#sliderContainer').css('visibility');
				   if(flag != "visible") {
						   var cssObj = {
								  'visibility' : 'visible',
								  'height' : 'auto'
								  }
					  }else{
						   var cssObj = {
								  'visibility' : 'hidden',
								  'height' : '1px'
								}
					}
				   $('#sliderContainer').css(cssObj);
				   $('#featuredPosts').toggle();
				  
				   if(flag != "visible"){
				   		$(this).text('Switch to "Featured Posts" View');
						 //$('#sliderContainer').css(cssObj1);
				   }else{
				   		 $(this).text('Switch to "Slider" View');
				   }
				   return false;
				   
			  });
			//}
			</script> --->
		</div>
		<!-- End #header -->
		
		<!-- Begin #content -->
		<div id="content" style="position:relative">
			<!---
			<!-- BEGIN SLIDER -->
			<div id="sliderContainer" style="visibility: visible; height: auto;">
			<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.nivo.slider.pack.js"></script>
		
			<!-- SLIDER SETTINGS -->
			   <script type="text/javascript">
					$(window).load(function() {
						$('#slider').nivoSlider({
							effect:'random',
							slices:15,
							animSpeed:300,
							pauseTime:3000,
							startSlide:0, //Set starting Slide (0 index)
							directionNav:true, //Next &amp; Prev
							directionNavHide:true, //Only show on hover
							controlNav:true, //1,2,3...
							controlNavThumbs:false, //Use thumbnails for Control Nav
							controlNavThumbsFromRel:false, //Use image rel for thumbs
							controlNavThumbsSearch: '.jpg', //Replace this with...
							controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
							keyboardNav:true, //Use left &amp; right arrows
							pauseOnHover:true, //Stop animation while hovering
							manualAdvance:false, //Force manual transitions
							captionOpacity:0.8, //Universal caption opacity
							beforeChange: function(){},
							afterChange: function(){},
							slideshowEnd: function(){} //Triggers after all slides have been shown
						});
					});
				</script>
				<div id="slider">
					<a href="http://www.site5.com">
						<img src="<mango:Blog skinurl />assets/images/Untitled.jpg" alt="Slider1" title="Slider Item1 caption text. Elcvne commune elaboraret his, mea amet luptatum." />
					</a>
					<a href="http://www.site5.com">
						<img src="<mango:Blog skinurl />assets/images/Untitled2.jpg" alt="Slider2" title="Slider Item2 caption text. Elcvne commune elaboraret his, mea amet luptatum." />
					</a>
					<a href="http://www.site5.com">
						<img src="<mango:Blog skinurl />assets/images/Untitled2.jpg" alt="Slider2" title="Slider Item2 caption text. Elcvne commune elaboraret his, mea amet luptatum." />
					</a>
			  	</div>
			  	<div style="width:940px; margin:0 auto 30px; background:url(<mango:Blog skinurl />assets/images/bk_shadow_slider.png) 0 -35px no-repeat; height:15px;"></div>
			</div>
			
			<!-- END SLIDER -->
			--->
			
			 <!-- Begin #featuredPosts -->
			<div id="featuredPosts">
			<mango:Posts source="customField" customField="PostisSticky" count="2">
			
			<mango:Post ifCurrentIsOdd>
					<div class="item ">
			</mango:Post>		
			<mango:Post ifCurrentIsEven>
				<div class="item lastItem">
			</mango:Post>
			<mango:post>
				<cfsavecontent variable="body_count"><mango:PostProperty body /></cfsavecontent>
				<cfset feature_text = stripHTML(body_count) />
			<mango:PostProperty ifhasCustomField="postisSticky">
					<h1><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
					<mango:PostProperty ifhasCustomField="featureImage">
					<a href="<mango:PostProperty link />" title="<mango:PostProperty title />">
						<img height="290" width="430" src="<mango:PostProperty customField="featureImage">"/>
					</a>
					</mango:PostProperty>
					
					<mango:PostProperty>
						<p><cfoutput>#left(feature_text,150)#</cfoutput></p>
						<p><a href="<mango:PostProperty link />" title="Read the rest of this entry" class="readMore">read more...</a></p>
					</mango:PostProperty>	
			</mango:PostProperty>		
		</mango:Post>
		
			</div><!--end item-->
		</mango:Posts>
		</div>	 <!--end featured posts--> 
					
			<mango:Posts count="6">
				<mango:Post>
				<cfsavecontent variable="body_count"><mango:PostProperty body /></cfsavecontent>
				<cfset imgurl = "">
				<cfset findimgtag = FindNoCase("<img",body_count,1)>
				<cfif findimgtag GT 1>
				<!--- 	<cfoutput>*tag #findimgtag#</cfoutput> --->
					<cfset findsrcstart = FindNoCase("src=",body_count,findimgTag)/>
					<cfset findsrcstart = FindNoCase('"',body_count,findsrcstart)/>
					<!--- <cfoutput>start #findsrcstart#</cfoutput> --->
					<cfset findsrcend = FindNoCase('"',body_count,findsrcstart +1)/>
					<!--- <cfoutput>end #findsrcend#</cfoutput> --->
					<cfset imglength = findsrcend - findsrcstart + 1/>
					<cfset getImgUrl = Mid(body_count,findsrcstart,imglength)/>
					<!--- <cfoutput>#getImgUrl#<br/></cfoutput> --->
					<cfset ImgUrl = ReplaceNoCase(getImgUrl,'"',"", "ALL")/>
					<!--- <cfset ImgUrl = ReplaceNoCase(ImgUrl,'"',"")/> --->
					<cfset ImgUrl = Trim(ImgUrl)/>
				<!--- 	<cfoutput>|#imgurl#|</cfoutput> --->
				
				</cfif>
				<cfset body_count = stripHTML(body_count) />
				
				<cfsavecontent variable="title_count"><mango:PostProperty title /></cfsavecontent>
					<div class="postBox <mango:Post ifCurrentIsThird>lastBox</mango:Post> <mango:Post ifCurrentIsLast>lastBox</mango:Post>">
						<div class="postBoxInner">
							
							<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />">
								<cfoutput>#left(title_count,25)#<cfif len(title_count) GT 25>...</cfif></cfoutput></a></h2>
							  <cfif imgurl NEQ "">
								  <a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />">
								<img src="<cfoutput>#imgurl#</cfoutput>"  alt="<mango:PostProperty title />" width="255" height="95"/>
									</a> 
								<cfelse>	 
									<a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />">
								<img src="<mango:Blog skinUrl>assets/images/nothumb.jpg"  alt="No Thumbnail" width="255" height="95"/>
									</a> 
								</cfif>
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
				<template:footer />
		<mango:Event name="beforeFooterEnd" />
	</div>
	<!-- End #footer -->
</div>
<!-- End #mainWrapper -->
<script type="text/javascript">Cufon.now(); </script>

<cfinclude template="twittertooltip.cfm" />

<cfsavecontent variable="css">
	<!---<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/prettyPhoto.css" type="text/css" media="screen" />--->
</cfsavecontent>

<cfhtmlhead text="#css#" />

<!---<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.prettyPhoto.js"></script>--->
</body>

</html>