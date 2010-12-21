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
						
			<script type="text/javascript">
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
			</script>
		</div>
		<!-- End #header -->
		
		<!-- Begin #content -->
		<div id="content" style="position:relative">
			<!-- BEGIN SLIDER -->
			<div id="sliderContainer" style="visibility:hidden;height:1px;">
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
						<img src="<mango:Blog skinurl />assets/images/timthumb.php?src=http://wordpress.site5.net/journalcrunch/wp-content/uploads/2010/11/sample2.png&h=370&w=940&zc=1" alt="Slider1" title="Slider Item1 caption text. Elcvne commune elaboraret his, mea amet luptatum.">
					</a>
					<a href="http://www.site5.com">
						<img src="<mango:Blog skinurl />assets/images/timthumb.php?src=http://wordpress.site5.net/journalcrunch/wp-content/uploads/2010/11/sample3.png&h=370&w=940&zc=1" alt="Slider2" title="Slider Item2 caption text. Elcvne commune elaboraret his, mea amet luptatum.">
					</a>
			  	</div>
			  	<div style="width:940px; margin:0 auto 30px; background:url(<mango:Blog skinurl />assets/images/bk_shadow_slider.png) 0 -35px no-repeat; height:15px;"></div>
				  
			</div>
			<!-- END SLIDER -->
			
			<!-- Begin #featuredPosts -->
			<div id="featuredPosts">
				<div class="item ">
				<h1><a href="http://wordpress.site5.net/journalcrunch/?p=39" title="Permanent Link to Pellentesque dapibus ullamcorper leo">Pellentesque dapibus ullamcorper leo</a></h1>
			
										<a href="http://wordpress.site5.net/journalcrunch/?p=39" title="Permanent Link to Pellentesque dapibus ullamcorper leo">
											<img src="<mango:Blog skinurl />assets/images/timthumb.php?src=http://wordpress.site5.net/journalcrunch/wp-content/uploads/2010/11/sample8.jpg&h=290&w=430&zc=1" alt="Pellentesque dapibus ullamcorper leo">
					</a>
									<p>Te usu causae efficiendi. Nusquam percipitur cotidieque ut vis. An est vocent fabellas platonem, eu dico elitr feugait per. Et veri posse everti vix, te reque option corpora nam, vim audire molestiae necessitatibus ad. Quis soleat mei eu, tale epicurei [...]</p>
				<a href="http://wordpress.site5.net/journalcrunch/?p=39" class="readMore">Read More</a>
				</div>
				<div class="item lastItem">
				<h1><a href="http://wordpress.site5.net/journalcrunch/?p=33" title="Permanent Link to Elcvne commune elaboraret his, mea amet luptatum">Elcvne commune elaboraret his, mea amet luptatum</a></h1>
			
										<a href="http://wordpress.site5.net/journalcrunch/?p=33" title="Permanent Link to Elcvne commune elaboraret his, mea amet luptatum">
											<img src="<mango:Blog skinurl />assets/images/timthumb.php?src=http://wordpress.site5.net/journalcrunch/wp-content/uploads/2010/11/sample9.jpg&h=290&w=430&zc=1" alt="Elcvne commune elaboraret his, mea amet luptatum">
					</a>
									<p>Elcvne commune elaboraret his, mea amet luptatum at. Modo aeterno propriae ius id. Viris definiebas reprehendunt ad eam. In mea melius commodo. Te usu causae efficiendi. Nusquam percipitur cotidieque ut vis. An est vocent fabellas platonem, eu dico elitr feugait [...]</p>
				<a href="http://wordpress.site5.net/journalcrunch/?p=33" class="readMore">Read More</a>
				</div>
			</div>
			<!-- End #featuredPosts -->
			<div>
			<mango:Posts count="9">
				<mango:Post>
				<cfsavecontent variable="body_count"><mango:PostProperty body /></cfsavecontent>
				<cfsavecontent variable="title_count"><mango:PostProperty title /></cfsavecontent>
				
					<div class="postBox <mango:Post ifCurrentIsThird>lastBox</mango:Post> <mango:Post ifCurrentIsLast>lastBox</mango:Post>">
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