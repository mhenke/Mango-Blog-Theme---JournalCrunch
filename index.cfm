<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	<title><mango:Blog title /> &#8212; <mango:Blog tagline /></title>
	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/ddsmoothmenu.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/prettyPhoto.css" type="text/css" media="screen" />
	
	<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.form.js"></script>

<script type="text/javascript" src="<mango:Blog skinurl />assets/js/cufon-yui.js"></script>
<script type="text/javascript" src="<mango:Blog skinurl />assets/js/twittercb.js"></script>
<script type="text/javascript" src="<mango:Blog skinurl />assets/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="<mango:Blog skinurl />assets/js/custom.js"></script>

<script type="text/javascript" src="<mango:Blog skinurl />assets/js/Vegur_400-Vegur_700.font.js"></script>
<script type="text/javascript">
	Cufon.replace('h1',{hover:true,textShadow: '#fff 1px 1px'})('h2:not(.footerTitle,.boxFooter .twitter)',{hover:true,textShadow: '#fff 1px 1px'})('h3',{textShadow: '#fff 1px 1px'})('.reply',{hover:true});
</script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://wordpress.site5.net/journalcrunch/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://wordpress.site5.net/journalcrunch/wp-includes/wlwmanifest.xml" /> 

<link rel='index' title='The JournalCrunch by Site5.com' href='http://wordpress.site5.net/journalcrunch' />
<meta name="generator" content="WordPress 3.0.1" />
<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>

	
	<meta name="robots" content="index, follow" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
	<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />	
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
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

			<!-- Begin #logo -->
			 <div id="logo"><a href="http://wordpress.site5.net/journalcrunch/"><img src="<mango:Blog skinurl />assets/images/logo.png" alt="JournalCrunch by Site5.com" /></a></div>
			<!-- End #logo -->logo.png
			<!-- Begin #topMenu -->
			<div id="topMenu" class="ddsmoothmenu">
				<ul id="menu-topmenu" class="menu">
					<!---
					<li id="menu-item-225" class="menu-item menu-item-type-custom current-menu-item current_page_item menu-item-home menu-item-225">
						<a href="http://wordpress.site5.net/journalcrunch/">Home</a>
					</li>
			
					<li id="menu-item-222" class="menu-item menu-item-type-taxonomy menu-item-222">
						<a href="http://wordpress.site5.net/journalcrunch/?cat=4">Photoshop</a>
						<ul class="sub-menu">
							<li id="menu-item-224" class="menu-item menu-item-type-taxonomy menu-item-224"><a href="http://wordpress.site5.net/journalcrunch/?cat=6">Tutorials</a></li>
						
							<li id="menu-item-221" class="menu-item menu-item-type-taxonomy menu-item-221"><a href="http://wordpress.site5.net/journalcrunch/?cat=3">Freebies</a></li>
						</ul>
					</li>
					--->
					<li><a class="current" href="<mango:Blog basePath />">front page</a></li>
					<mango:Pages>
						<mango:Page>
							<li id="menu-item-225" class="menu-item menu-item-type-custom current-menu-item current_page_item menu-item-home menu-item-225">
								<a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
								<mango:PageProperty title />
								</a>
							</li>
						</mango:Page>
					</mango:Pages>
				</ul>
			</div>			
			
			<!-- End #topMenu -->
			<!-- Begin #topSearch -->

			<div id="topSearch">
				<form id="searchform" action="" method="get">
					<input type="text" id="s" name="s" value="" />
				</form>
			</div>
			<!-- End #topSearch -->
			<!-- BEGIN TOP SOCIAL LINKS -->
			<div id="topSocial">
				<ul>

										<li><a href="http://www.twitter.com/site5" class="twitter tip" title="Follow Us on Twitter!">
										<img src="<mango:Blog skinurl />assets/images/header_<mangox:Random items='1.jpg,2.jpg,3.jpg,4.jpg'/>" width="770" height="140" alt="<mango:Blog title />" title="<mango:Blog title />" />
										<img src="<mango:Blog skinurl />assets/images/ico_twitter.png" alt="Follow Us on Twitter!" /></a></li>
															<li><a href="http://www.facebook.com/site5" class="facebook" title="Join Us on Facebook!"><img src="<mango:Blog skinurl />assets/images/ico_facebook.png" alt="Join Us on Facebook!" /></a></li>
										<li class="rss">
											<a href="<mango:Blog rssurl />" title="RSS" class="rss">
												<img src="<mango:Blog skinurl />assets/images/ico_rss.png" alt="Subcribe to Our RSS Feed" />
											</a>
										</li>
				</ul>
			</div>	
			
			<!-- END TOP SOCIAL LINKS -->
						<div style="position:absolute;bottom:-10px; left:290px; z-index:100; width:350px; border:1px dotted #8B9DA3; padding:5px;background:#eee;-moz-border-radius:4px; -webkit-border-radius:4px;text-align:center; font-size:11px;">
<a href="#" id="switcher">Switch to "Slider" View</a><br />
<small><em style="color:#666">This switcher appears on this demo only. Set your view from  Theme Options.</em></small>

</div>
		
		
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

				
			<mango:Posts count="9">
			<mango:Post>
			
			<div class="postBox lastBox">
				<div class="postBoxInner">
				
					<img src="<mango:Blog skinurl />assets/images/nothumb.jpg"  alt="No Thumbnail"/>					
					<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
					<div class="excerpt">
						<mango:PostProperty ifhasExcerpt excerpt>
						<p><a href="<mango:PostProperty link />" title="Read the rest of this entry">[Read more &rarr;]</a></p>
						</mango:PostProperty>
						<mango:PostProperty ifNotHasExcerpt body />
					</div>
					<h4> &middot; By <mango:PostProperty author /> &middot; </h4>
					<div class="meta"> <mango:PostProperty date dateformat="mmmm dd, yyyy" /> &nbsp;&nbsp;&nbsp;<img src="<mango:Blog skinurl />assets/images/ico_post_comments.png" alt="" /> 
					<!---<a href="http://wordpress.site5.net/journalcrunch/?p=10#respond" title="Comment on Create a Cosmic Composition">No Comments</a>--->
					<mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty>
					</div>
				</div>
				<a href="<mango:PostProperty link />" class="readMore">Read More</a>
			</div>
				
			</mango:Post>
			</mango:Posts>
				
</div>
<!-- End #content -->
	</div>
	<!-- End #wrapper -->
	<!-- Begin #footer -->
	<div id="footer">
		<div id="footerInner">
				<div class="boxFooter">		<h2 class="footerTitle">Recent Posts</h2>		<ul>

				<li><a href="http://wordpress.site5.net/journalcrunch/?p=233" title="Nusquam percipitur cotidieque ut vis">Nusquam percipitur cotidieque ut vis</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=41" title="Morbi in sem quis dui placerat ornare">Morbi in sem quis dui placerat ornare</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=39" title="Pellentesque dapibus ullamcorper leo">Pellentesque dapibus ullamcorper leo</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=33" title="Elcvne commune elaboraret his, mea amet luptatum">Elcvne commune elaboraret his, mea amet luptatum</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=27" title="Tempor incididunt ut labore et">Tempor incididunt ut labore et</a></li>
				</ul>

		</div><div class="boxFooter"><h2 class="footerTitle">Meta Widget</h2>			<ul>
						<li><a href="http://wordpress.site5.net/journalcrunch/wp-login.php">Log in</a></li>
			<li><a href="http://wordpress.site5.net/journalcrunch/?feed=rss2" title="Syndicate this site using RSS 2.0">Entries <abbr title="Really Simple Syndication">RSS</abbr></a></li>
			<li><a href="http://wordpress.site5.net/journalcrunch/?feed=comments-rss2" title="The latest comments to all posts in RSS">Comments <abbr title="Really Simple Syndication">RSS</abbr></a></li>
			<li><a href="http://wordpress.org/" title="Powered by WordPress, state-of-the-art semantic personal publishing platform.">WordPress.org</a></li>

						</ul>
</div>		<div class="boxFooter">		<h2 class="footerTitle">Recent Posts</h2>		<ul>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=233" title="Nusquam percipitur cotidieque ut vis">Nusquam percipitur cotidieque ut vis</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=41" title="Morbi in sem quis dui placerat ornare">Morbi in sem quis dui placerat ornare</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=39" title="Pellentesque dapibus ullamcorper leo">Pellentesque dapibus ullamcorper leo</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=33" title="Elcvne commune elaboraret his, mea amet luptatum">Elcvne commune elaboraret his, mea amet luptatum</a></li>

				<li><a href="http://wordpress.site5.net/journalcrunch/?p=27" title="Tempor incididunt ut labore et">Tempor incididunt ut labore et</a></li>
				</ul>
		</div><div class="boxFooter"><h2 class="footerTitle">Pages</h2>		<ul>
			<li class="page_item page-item-2"><a href="http://wordpress.site5.net/journalcrunch/?page_id=2" title="About">About</a></li>
<li class="page_item page-item-99"><a href="http://wordpress.site5.net/journalcrunch/?page_id=99" title="Contact">Contact</a></li>
<li class="page_item page-item-126"><a href="http://wordpress.site5.net/journalcrunch/?page_id=126" title="Shortcodes">Shortcodes</a></li>
		</ul>

		</div>		<!-- BEGIN COPYRIGHT -->
		<div id="copyright">
			© Copyright 2010 JournalCrunch by <a href="http://www.site5.com">Site5.com</a>. All Rights Reserved.  
				<div id="site5bottom"><a href="http://gk.site5.com/t/239">Site5.com | Experts in Web Hosting.</a></div>
		</div>
		<!-- END COPYRIGHT -->	
		</div>
	</div>

	<!-- End #footer -->
</div>
<!-- End #mainWrapper -->
<script type="text/javascript">Cufon.now(); </script>

<!-- Header Twitter Tooltip -->
<div class="tooltip">
				<ul id="twitter_tooltip"></ul>
				<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/site5.json?callback=twitterCallback2&amp;count=1"></script>
			</div>

</body>


</html>