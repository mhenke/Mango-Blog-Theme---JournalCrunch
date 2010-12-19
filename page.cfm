<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Page>
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
		</div>
		<!-- End #header -->
		<!-- Begin #content -->
		<div style="position: relative;" id="content">

<!-- Begin #colleft -->
			<div id="colLeft">	
		
		<h2><mango:PageProperty title /></h2>
		<p class="breadcrumb"><mangox:PageBreadcrumb /></p>
			<div class="entry"><mango:PageProperty body /></div>
			<div class="entry-footer entry">
			<mango:Event name="beforePageContentEnd" template="page" mode="full" />
			</div>
			<p class="tagged"><mango:PageProperty ifcommentsallowed><a href="<mango:PageProperty link />#comments" title="Comment on <mango:PageProperty title />"><mango:PageProperty ifCommentCountGT="0"><mango:PageProperty commentCount /> Comment<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty></mango:PageProperty><mango:PageProperty ifCommentCountLT="1">No Comments</mango:PageProperty></a></mango:PageProperty></p>
			<div class="clear"></div>

	<div id="comments">
	<mango:PageProperty ifcommentsallowed>
	
		<h3 class="comments_headers"><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty><mango:PageProperty ifCommentCountLT="1">s</mango:PageProperty><mango:PageProperty ifcommentsallowed> so far &darr;</mango:PageProperty></h3>
	
		<ul id="comment_list">
			<mango:Comments>
			<mango:Comment>
			<li class="comment <mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
				<p class="comment_meta">
					<span class="comment_num"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a></span>
						<strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong>
						<span class="comment_time">// <mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></span>
				</p>
				<div class="entry">
					 <mango:CommentProperty content />
				</div>
			</li>
			</mango:Comment>
			</mango:Comments>
			
			<mango:PageProperty ifCommentCountLT="1">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<p>There are no comments yet...Kick things off by filling out the form below.</p>
				</div>
			</li>
			</mango:PageProperty>
		</ul>

	<!-- Comment Form -->
	<h3 id="respond" class="comments_headers">Leave a Comment</h3>
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="message"><mango:Message text /></p>
	</mango:Message>
	
	<form method="post" action="#respond" id="comment_form">
		<input type="hidden" name="action" value="addComment" />
		<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
		<input type="hidden" name="comment_parent" value="" />
		<mango:AuthenticatedAuthor ifIsLoggedIn>
			<p>You are logged in as <mango:AuthorProperty name /></p>
			<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
			<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
			<input type="hidden" name="comment_website" value="<mango:Blog url />" />
		</mango:AuthenticatedAuthor>
		
		<mango:AuthenticatedAuthor ifNotIsLoggedIn>
		<p><input id="author" class="text_input" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" /><label for="author"><strong>Name</strong></label></p>
		<p><input class="text_input" type="text" id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" /><label for="email"><strong>Mail</strong> (it will not be displayed)</label></p>
		<p><input class="text_input" type="text" id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  /><label for="url"><strong>Website</strong></label></p>
		</mango:AuthenticatedAuthor>
		
		<p><textarea class="text_input text_area" id="comment" name="comment_content" rows="7"><mango:RequestVar name="comment_content" /></textarea></p>
		<p><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></p>
		<p><mango:Event name="beforeCommentFormEnd" /></p>
		<p><input name="submit" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Submit" /></p>
	</form>
</mango:PageProperty>
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
<<script type="text/javascript">Cufon.now(); </script>

<!-- Header Twitter Tooltip -->
<div class="tooltip">
				<ul id="twitter_tooltip"></ul>
				<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/site5.json?callback=twitterCallback2&amp;count=1"></script>
			</div>
<mango:Event name="beforeHtmlBodyEnd" />
</mango:Page>
</body>


</html>