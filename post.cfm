<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Post>
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
				
				<div id="singlePost">
					<h1><mango:PostProperty title /></h1>
					<div class="meta">
					 <mango:PostProperty date dateformat="mmmm d, yyyy" /> by <a title="Posts by <mango:PostProperty author />" href="http://wordpress.site5.net/journalcrunch/?author=1"><mango:PostProperty author /></a>&nbsp;&nbsp;&nbsp;<mango:PostProperty ifcommentsallowed><img alt="" src="<mango:Blog skinurl />assets/images/ico_post_comments.png"> <a title="Read Comments" href="#comment_list"><mango:PostProperty ifCommentCountGT="0" /><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a>&nbsp;&nbsp;&nbsp;</mango:PostProperty><img alt="" src="<mango:Blog skinurl />/assets/images/ico_post_date.png"> Posted under:  <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
					</div>
					<mango:PostProperty body />
					<div class="postTags">
						<mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
					</div>
				</div>
				
<!-- You can start editing here. -->
<h2 class="h2comments">
	<mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty> <a class="addComment" href="#respond">+ Add Comment</a>
</h2>
	
		<ul class="commentlist" id="comment_list">
			<mango:Comments>
			<mango:Comment>
			<li class="comment even thread-even depth-1 clearfix <mango:CommentProperty ifIsAuthor> comment-author-admin</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
				<div class="comment-meta commentmetadata clearfix">
		    		<a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a> <strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong> <span><mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></span>
		 		</div>
				<div class="entry">
					 <mango:CommentProperty content />
				</div>
			</li>
			</mango:Comment>
			</mango:Comments>
			
			<mango:PostProperty ifcommentsallowed ifCommentCountLT="1">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<h2>There are no comments yet...Kick things off by filling out the form below.</h2>
				</div>
			</li>
			</mango:PostProperty>
		</ul>

<div id="respond">

<mango:PostProperty ifcommentsallowed>
	<!-- Comment Form -->
	<h2 id="commentsForm">Got anything to say? Go ahead and leave a comment!</h2>
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="message"><mango:Message text /></p>
	</mango:Message>
	
	<form method="post" action="#respond" id="commentform">
		<input type="hidden" name="action" value="addComment" />
		<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
		<input type="hidden" name="comment_parent" value="" />
		
		<mango:AuthenticatedAuthor ifIsLoggedIn>
			<p>You are logged in as <mango:AuthorProperty name /></p>
			<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
			<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
			<input type="hidden" name="comment_website" value="<mango:Blog url />" />
		</mango:AuthenticatedAuthor>
		
		<mango:AuthenticatedAuthor ifNotIsLoggedIn>
		
		<p><label for="author">Name (required)</label>
		<input type="text" aria-required="true" tabindex="1" size="22" value="<mango:RequestVar name='comment_name' />" id="author" name="comment_name">
		</p>
		
		<p><label for="email">Mail (will not be published) (required)</label>
		<input type="text" aria-required="true" tabindex="2" size="22" value="<mango:RequestVar name='comment_email' />" id="email" name="comment_email">
		</p>
		
		
		<p><label for="url">Website</label>
		<input type="text" tabindex="3" size="22" value="<mango:RequestVar name='comment_website' />" id="url" name="comment_website">
		</p>
		
		</mango:AuthenticatedAuthor>
		
		<p><label for="comment">Comment</label>
		<textarea tabindex="4" rows="10" cols="100%" id="comment" name="comment_content"><mango:RequestVar name="comment_content" /></textarea></p>
		
		<p><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></p>
		<p><mango:Event name="beforeCommentFormEnd" /></p>
		<p><input name="submit" value="POST COMMENT" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Submit" /></p>

		</form>
</mango:PostProperty>

</div>

					
			</div>
			<!-- End #colLeft -->
			</mango:Post>

<!-- Begin #colRight -->
	<div id="colRight">
			<div class="rightBox"><div class="rightBoxInner">	
			<h2>Recent Comments</h2><ul id="recentcomments"><li class="recentcomments">admin on <a href="http://wordpress.site5.net/journalcrunch/?p=39#comment-11">Pellentesque dapibus ullamcorper leo</a></li><li class="recentcomments">admin on <a href="http://wordpress.site5.net/journalcrunch/?p=39#comment-10">Pellentesque dapibus ullamcorper leo</a></li><li class="recentcomments">admin on <a href="http://wordpress.site5.net/journalcrunch/?p=39#comment-9">Pellentesque dapibus ullamcorper leo</a></li><li class="recentcomments">admin on <a href="http://wordpress.site5.net/journalcrunch/?p=39#comment-8">Pellentesque dapibus ullamcorper leo</a></li><li class="recentcomments">admin on <a href="http://wordpress.site5.net/journalcrunch/?p=39#comment-7">Pellentesque dapibus ullamcorper leo</a></li></ul></div></div><div class="rightBox"><div class="rightBoxInner">	
			<h2 class="twitter">Tweets</h2>				<div id="twitter">
							<ul id="twitter_update_list"><li><span>@<a href="http://twitter.com/rickyrobinson">rickyrobinson</a> Happy to hear the website migration was fast and easy! :)</span> <a href="http://twitter.com/site5/statuses/15884874317565952" style="font-size: 85%;">about 2 hours ago</a></li><li><span>@<a href="http://twitter.com/gabrielarana">gabrielarana</a> We are happy to have you Gabriel, thanks for the fantastic praise of our hosting services. :)</span> <a href="http://twitter.com/site5/statuses/15884630779502592" style="font-size: 85%;">about 2 hours ago</a></li><li><span>@<a href="http://twitter.com/mark_rafferty">mark_rafferty</a> Hi Mark, is everything going ok? Let me know if there is anything we can do to help you out. :)</span> <a href="http://twitter.com/site5/statuses/15884455755386880" style="font-size: 85%;">about 2 hours ago</a></li></ul>
					<a class="action" href="http://twitter.com/site5">Follow Us on Twitter! »</a>
				</div>
				
				<script src="http://twitter.com/statuses/user_timeline/site5.json?callback=twitterCallback3&amp;count=3" type="text/javascript">
				</script>
	</div></div><div class="rightBox"><div class="rightBoxInner">	<h2><span class="cufon cufon-canvas" style="width: 74px; height: 15px;"><canvas width="82" height="16" style="width: 82px; height: 16px; top: 0px; left: -1px;"></canvas><span class="cufon-alt">Calendar</span></span></h2><div id="calendar_wrap"><table summary="Calendar" id="wp-calendar">
	<caption>December 2010</caption>
	<thead>
	<tr>
		<th title="Monday" scope="col">M</th>
		<th title="Tuesday" scope="col">T</th>
		<th title="Wednesday" scope="col">W</th>
		<th title="Thursday" scope="col">T</th>
		<th title="Friday" scope="col">F</th>
		<th title="Saturday" scope="col">S</th>
		<th title="Sunday" scope="col">S</th>
	</tr>
	</thead>

	<tfoot>
	<tr>
		<td id="prev" colspan="3"><a title="View posts for November 2010" href="http://wordpress.site5.net/journalcrunch/?m=201011">« Nov</a></td>
		<td class="pad">&nbsp;</td>
		<td class="pad" id="next" colspan="3">&nbsp;</td>
	</tr>
	</tfoot>

	<tbody>
	<tr>
		<td class="pad" colspan="2">&nbsp;</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td>
	</tr>
	<tr>
		<td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td>
	</tr>
	<tr>
		<td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td id="today">18</td><td>19</td>
	</tr>
	<tr>
		<td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td><td>26</td>
	</tr>
	<tr>
		<td>27</td><td>28</td><td>29</td><td>30</td><td>31</td>
		<td colspan="2" class="pad">&nbsp;</td>
	</tr>
	</tbody>
	</table></div></div></div><div class="rightBox"><div class="rightBoxInner">	<h2><span class="cufon cufon-canvas" style="width: 53px; height: 15px;"><canvas width="61" height="16" style="width: 61px; height: 16px; top: 0px; left: -1px;"></canvas><span class="cufon-alt">Categs</span></span></h2>		<ul>
	<li class="cat-item cat-item-3"><a title="View all posts filed under Freebies" href="http://wordpress.site5.net/journalcrunch/?cat=3">Freebies</a>
</li>
	<li class="cat-item cat-item-4"><a title="View all posts filed under Photoshop" href="http://wordpress.site5.net/journalcrunch/?cat=4">Photoshop</a>
</li>
	<li class="cat-item cat-item-5"><a title="View all posts filed under Showcases" href="http://wordpress.site5.net/journalcrunch/?cat=5">Showcases</a>
</li>
	<li class="cat-item cat-item-6"><a title="View all posts filed under Tutorials" href="http://wordpress.site5.net/journalcrunch/?cat=6">Tutorials</a>
</li>
	<li class="cat-item cat-item-1"><a title="View all posts filed under Uncategorized" href="http://wordpress.site5.net/journalcrunch/?cat=1">Uncategorized</a>
</li>
		</ul>
</div></div>	</div>
	
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

</body>


</html>